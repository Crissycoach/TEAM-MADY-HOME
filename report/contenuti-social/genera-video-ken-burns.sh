#!/usr/bin/env bash
# Genera un video verticale (9:16) per TikTok/Reels da una serie di foto,
# con effetto Ken Burns (zoom lento) e dissolvenze — zero costo, nessun
# account, usa solo ffmpeg (richiede: apt-get install -y --no-install-recommends ffmpeg).
#
# Uso: ./genera-video-ken-burns.sh cartella_foto/ nome_output.mp4 "foto1 foto2 foto3 ..."
# Le foto vanno senza estensione, ordine = ordine nel video.
# Esempio: ./genera-video-ken-burns.sh ./foto-natale output.mp4 "mercatino1 mercatino2 vin-brule"
#
# Nota: niente audio incluso di proposito — aggiungere un suono di
# tendenza direttamente nell'app TikTok al momento della pubblicazione
# aiuta la portata organica del video più di una colonna sonora fissa.

set -e
SRC_DIR="$1"
OUT="$2"
shift 2
NAMES="$@"

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

i=0
for name in $NAMES; do
  i=$((i+1))
  idx=$(printf "%02d" "$i")
  ffmpeg -y -loglevel error -loop 1 -i "${SRC_DIR}/${name}.jpg" \
    -vf "scale=2400:-2,crop='min(iw,ih*9/16)':'min(ih,iw*16/9)',scale=1080:1920,zoompan=z='min(zoom+0.0018,1.18)':d=60:x='iw/2-(iw/zoom/2)':y='ih/2-(ih/zoom/2)':s=1080x1920:fps=30,format=yuv420p" \
    -t 2 -c:v libx264 -preset fast -crf 20 "${TMP}/${idx}.mp4"
done

INPUTS=""
for f in "${TMP}"/*.mp4; do INPUTS="${INPUTS} -i ${f}"; done

N=$i
FILTER=""
OFFSET=1.6
for ((j=1; j<N; j++)); do
  if [ "$j" -eq 1 ]; then
    FILTER="${FILTER}[0][1]xfade=transition=fade:duration=0.4:offset=${OFFSET}[v1];"
  else
    PREV=$((j-1))
    FILTER="${FILTER}[v${PREV}][$j]xfade=transition=fade:duration=0.4:offset=${OFFSET}[v${j}];"
  fi
  OFFSET=$(echo "$OFFSET + 1.6" | bc)
done
FILTER="${FILTER%;}"
LASTV="v$((N-1))"
FILTER="${FILTER/\[v${LASTV#v}\]/[vout]}"

# shellcheck disable=SC2086
ffmpeg -y -loglevel error ${INPUTS} -filter_complex "${FILTER}" -map "[vout]" \
  -c:v libx264 -preset fast -crf 20 -pix_fmt yuv420p "${OUT}"

echo "Video creato: ${OUT}"

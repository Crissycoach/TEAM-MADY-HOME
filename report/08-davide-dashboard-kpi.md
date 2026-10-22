# DAVIDE — Dashboard KPI & Growth Controller

## Obiettivo
Dare a Marco e a tutto il team una fotografia settimanale univoca dei risultati,
per decidere dove aumentare sforzo e cosa abbandonare. Niente vanity metrics:
si guarda cosa produce prenotazioni e margine.

## Struttura della dashboard settimanale

### 1. Metriche di business (core — dati interni, aggiornate dal gestionale/calendario)
| Metrica | Formula / fonte | Frequenza |
|---|---|---|
| Occupazione % | notti vendute / notti disponibili | settimanale |
| ADR (tariffa media giornaliera) | ricavo camere / notti vendute | settimanale |
| RevPAR | ricavo camere / notti disponibili (= ADR × occupazione) | settimanale |
| Ricavo totale | somma incassi periodo | settimanale |
| Margine | ricavo − costi variabili (pulizie, commissioni OTA, consumi) | mensile |
| Prenotazioni totali | numero prenotazioni confermate | settimanale |
| % prenotazioni dirette | prenotazioni dirette / prenotazioni totali | settimanale |
| Costo di acquisizione (CAC) | costo canale (0 se organico) / prenotazioni generate dal canale | settimanale |
| Durata media soggiorno | notti totali / prenotazioni | mensile |
| Giorni vuoti tra prenotazioni | media notti libere tra un checkout e il check-in successivo | settimanale |
| Lead time medio | giorni tra prenotazione e check-in | mensile |

### 2. Metriche di canale (supporto, non sostituiscono le metriche di business)
| Canale | Metriche tracciate |
|---|---|
| SEO / sito | visite organiche, query in Search Console, posizione media, click, richieste dal form/WhatsApp |
| Google Business Profile | visualizzazioni, click "Chiama/Indicazioni/Sito", nuove recensioni |
| Social (IG/FB) | reach, salvataggi, condivisioni, DM/richieste generate (non i like) |
| B2B (Andrea) | email inviate, tasso di risposta, contatti CALDO attivati, prenotazioni aziendali generate |
| Email marketing | invii, aperture, click, prenotazioni attribuite |
| Recensioni | numero nuove recensioni, punteggio medio, tempo di risposta |

### 3. Classificazione settimanale di ogni attività
Ogni iniziativa attiva viene etichettata da Davide sulla base dei risultati
della settimana, non di opinioni:
- 🟢 **FUNZIONA** — genera richieste/prenotazioni misurabili o traffico qualificato in crescita costante → aumentare risorse.
- 🟡 **DA TESTARE** — dati insufficienti o risultati ambigui, meno di 2-3 settimane di dati → continuare a osservare.
- 🔴 **DA ABBANDONARE** — nessun segnale dopo un ciclo di test ragionevole (2-4 settimane per contenuti/social, 1 ciclo di invio per email B2B) → tempo riallocato altrove.

### 4. Template riga-dashboard (da compilare ogni lunedì mattina, dati settimana precedente)
```
SETTIMANA: [date]
Occupazione: __%  (Δ vs sett. precedente: __)
ADR: €__  RevPAR: €__
Prenotazioni: __ (dirette: __%)
Giorni vuoti totali nel periodo: __
--- Canali ---
SEO: visite __ | richieste __ | stato 🟢/🟡/🔴
GBP: visualizzazioni __ | azioni __ | stato 🟢/🟡/🔴
Social: reach __ | salvataggi __ | richieste __ | stato 🟢/🟡/🔴
B2B: email inviate __ | risposte __ | prenotazioni __ | stato 🟢/🟡/🔴
Recensioni: nuove __ | media __ | stato 🟢/🟡/🔴
--- Decisione di Marco ---
Cosa aumentiamo: __
Cosa tagliamo: __
```

## Aggiornamento 21/10 — primo accesso parziale a dati reali (FATTO)

Il team ha trovato le notifiche email reali di Smoobu/Airbnb/Booking.com
legate a Mady Home, nello stesso account email già collegato per l'invio
delle email B2B. **Questo non è l'accesso diretto al gestionale richiesto
sopra** (niente calendario completo, niente occupazione %, niente ADR
esatto) ma permette una prima ricostruzione parziale, solo per attività
osservabile via notifica:

**Prenotazioni/cancellazioni ricevute 21/9-21/10 (FATTO, ricostruito da
notifiche email — possono mancare prenotazioni dirette via WhatsApp/altri
canali senza notifica Smoobu)**:
- 17 notifiche di nuova prenotazione (Airbnb + Booking.com), di cui alcune
  per soggiorni futuri (novembre, dicembre, gennaio).
- 4 notifiche di cancellazione nello stesso periodo (Maria Luise Ludes,
  Karolin Kessel, Francesca Romano, Rok Slama) — un tasso di cancellazione
  "visto" di circa 1 su 4-5 prenotazioni in questo campione. Non è
  possibile dire se sia normale o preoccupante senza uno storico di
  confronto (IPOTESI: da monitorare, non da allarmarsi su un solo mese).
- Attività continua: soggiorni si susseguono quasi senza vuoti visibili tra
  inizio e metà ottobre (turni di 1-4 notti), attività più rada verso fine
  mese dopo le cancellazioni.
- 3 compensi Airbnb ricevuti nel periodo: 162,42€, 188,68€, 69,46€ (dato
  reale ma non ricollegato con certezza a quale singolo soggiorno).

**Cosa resta non disponibile**: occupazione % esatta, ADR, RevPAR, margine,
% prenotazioni dirette — richiedono il calendario completo (anche le notti
senza alcuna notifica, cioè le notti vuote, qui non si vedono). Vedi anche
l'aggiornamento recensioni in `06-chiara-guest-experience.md` (stesso
metodo, 4 nuove recensioni osservate).

## Nota
Questa dashboard richiede dati interni (calendario/gestionale, Search Console,
Insights social, esiti email B2B) che il team non può popolare da fonte
pubblica: è lo strumento pronto all'uso, i numeri li inserisce chi gestisce
Mady Home o chi ha accesso ai pannelli. Vedi le richieste puntuali in
`report/00-PIANO-ATTACCO.md`.

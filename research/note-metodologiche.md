# Note metodologiche

Tutte le analisi in questo repository sono state prodotte partendo da dati
pubblicamente disponibili online (ricerche web su Airbnb, Booking, Google,
Google Maps, siti ufficiali, social pubblici) raccolti il **18 settembre 2026**.

## Come leggere i dati

- **FATTO** → l'informazione è stata vista direttamente in una pagina/annuncio/
  scheda pubblica e viene riportata con la fonte quando disponibile.
- **IPOTESI** → deduzione ragionevole basata su pattern di mercato, benchmark
  di settore o dati parziali. Va validata prima di essere usata come base di
  decisioni importanti.
- **TEST CONSIGLIATO** → un esperimento a basso costo/rischio che il team
  propone per validare un'ipotesi con dati reali di Mady Home.
- **DATO INTERNO NECESSARIO** → informazione che solo chi gestisce Mady Home
  possiede (storico prenotazioni, calendario reale, costi, contratti OTA,
  credenziali Search Console/Analytics, ecc.) e che il team non può ottenere
  da fonti pubbliche.

## Limiti della ricerca pubblica

- I portali OTA (Airbnb/Booking) limitano fortemente lo scraping e l'accesso
  automatizzato non autenticato: alcuni dati (prezzi esatti giorno per giorno,
  calendario di disponibilità, numero esatto di recensioni più recenti)
  potrebbero non essere accessibili via ricerca web e sono quindi segnalati
  come NOT FOUND o IPOTESI.
- I dati su aziende B2B si limitano a informazioni pubbliche (sito, settore,
  indirizzo, email generiche pubblicate: info@, hr@, segreteria@). Il team non
  ha usato e non userà contatti privati non pubblicati né tecniche di scraping
  aggressivo.
- Nessuna recensione, account, follower o interazione è stata creata o
  simulata: ogni numero di recensioni/follower riportato è un dato osservato
  o è esplicitamente marcato come non verificato.

## Elenco richieste di dati interni

Le richieste puntuali di dati interni indispensabili sono raccolte in fondo a
`report/00-PIANO-ATTACCO.md`, sezione "DATI INTERNI NECESSARI".

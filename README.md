# Fondet, rapportmaler

Typst-maler for kvartals- og årsrapportene til Forvaltningsgruppen i TIHLDE.
Ett delt bibliotek, én mappe per rapport. Teksten er norsk, koden er engelsk.

## Oppsett

```
lib/          delte moduler: tema, tabeller, diagram, fond, forside, begrepsliste
templates/    tomme maler å kopiere: quarterly, annual
reports/      ferdige rapporter, én mappe per periode
assets/       logoer
```

Hver rapport er to filer: `main.typ` med teksten og `funds.typ` med tallene per
fond. Import går på rotsti (`/lib/doc.typ`), så en rapportmappe kan flyttes eller
kopieres uten å rette opp importene.

## Bygge

Krever [Typst](https://github.com/typst/typst) 0.13 eller nyere. Ingen pakker
lastes ned, alt av oppsett ligger i `lib/`.

```sh
make                          # bygger alle rapporter til out/
make out/2025-q4.pdf          # bygger én
make watch PERIOD=2025-q4     # bygger på nytt ved hver lagring
```

Uten `make`:

```sh
typst compile --root . reports/2025-q4/main.typ out/2025-q4.pdf
```

## Ny rapport

```sh
make new PERIOD=2026-q1              # kvartalsrapport
make new PERIOD=2026 KIND=annual     # årsrapport
```

Det kopierer malen til `reports/<periode>/`. Fyll inn feltene merket `TODO`,
sett tittel og år øverst i `main.typ`, og legg fondene inn i `funds.typ`.

## Fond

Et fond bygges med `fund(...)` i `funds.typ`. Alle felt er påkrevd: mangler et
tall, stopper byggingen med en feilmelding i stedet for å trykke en tom celle.
`weight` er et tall, ikke en tekst, fordi samme verdi styrer både overskriften
og vektdiagrammet.

## Typst-appen

Typst-appen kan koble et prosjekt til et Git-repo og hente og sende endringer
begge veier. Å opprette koblingen krever Typst Pro på kontoen som setter den
opp, men etterpå kan alle med skrivetilgang til prosjektet pushe og pulle
([Git Sync](https://typst.app/docs/web-app/git-sync/), merket eksperimentell).
Uten Pro må filene lastes opp manuelt.

Appen bruker Roboto. Lokalt faller malen tilbake til Liberation Sans eller Noto
Sans, så en PDF bygget på en laptop kan se marginalt annerledes ut enn en bygget
i appen.

## Overleaf

Overleaf kompilerer bare LaTeX, ikke Typst. Et Overleaf-speil av disse malene
betyr en egen LaTeX-versjon som må holdes i sync manuelt, altså to kilder til
samme rapport. Repoet her er kilden, og Typst-appen er redigeringsflaten.

# Codex
## VSCode og codex extension
Du kan bruke codex som en extension i vscode.

Vscode kan installeres her: 
https://code.visualstudio.com/


Så trenger du vscode codex visual studio code:
https://marketplace.visualstudio.com/items?itemName=openai.chatgpt

Codex kan også installeres som en CLI app på mac, linux og windows (med WSL). Den raskeste veien til målet er å bruke vscode, men om du har installert eller får installert node kan du installere codex for bruk i terminalen med `npm i -g @openai/codex`. 

## Logg inn i codex
Når du har installert Codex kan du logge på med en API key vi vil gi deg tilgang til under workshoppen, men det kan være nyttig å vite at bruk av Codex er inkluder i et ChatGPT abonnement. Du kan også logge deg på ved å paste API keyen inn i terminalen etter å ha installert codex og kjørt `codex` i terminalen.

## Gratulerer! 

Når du er ferdig med det ovenfor er du klar til å sette igang med hackathon oppgaven, men om du er interessert i en ekstra utfordring kan du forsøke å installere noen verktøy og konfigurere ai agenten din. Det er imidlertid mye som er inkludert med Codex og lignende kodeagenter så helt greit å stoppe her om dette er første gang du bruker dem.

# Ekstra utfordringer
## Agent.md
Codex plukker automatisk opp en Agent.md i folderen du jobber i og følger instruksjoner gitt i denne. Et eksempel på ting jeg bruker Agent.md til er å sørge for at agenter husker jeg bruker `uv` for håndtere installasjon av biblioteker og virtualenvs når jeg bruker python. Agenten vil som regel ikke få med seg dette. Istedenfor å stadig vekk rette på agenten kan man forklare det med en setning i Agent.md filen. Mange har et template for Agent.md per type prosjekt (programmeringsspråk, type prosjekt).


## Skills

Du kan finne skills her:
https://skills.sh/

Dette er den vi nevner i vår presentasjon:
https://skills.sh/anthropics/skills/frontend-design


Dette er sånn du kan installere den selv:
`npx skills add https://github.com/anthropics/skills --skill frontend-design`

Velg disse instillingene:
![anbefalte instillinger](images/skills1.png)

Det hender agenten ikke plukker opp at den har skills tilgjengelig, det kan hjelpe å minne den på dette. Det samme gjelder for MCP servere.


## MCP-server 
https://www.npmjs.com/package/chrome-devtools-mcp

Follow the configure MCP guide using the standard config from above. You can also install the Chrome DevTools MCP server using the Codex CLI:
codex mcp add chrome-devtools -- npx chrome-devtools-mcp@latest
On Windows 11

Configure the Chrome install location and increase the startup timeout by updating .codex/config.toml and adding the following env and startup_timeout_ms parameters:


```
command = "cmd"
args = [
    "/c",
    "npx",
    "-y",
    "chrome-devtools-mcp@latest",
]
env = { SystemRoot="C:\\Windows", PROGRAMFILES="C:\\Program Files" }
startup_timeout_ms = 20_000
```
# Unicode Bot

This repository contains the source for a small Discord Unicode character bot and a simple GitHub Pages site.

Site: https://nataliakeniganti.github.io/nataliakeniganti-unicode-bot/

What I added
- `index.html` — a minimal GitHub Pages homepage for the project
- `README.md` — this file

How to invite the bot
1. Replace `YOUR_CLIENT_ID` in the invite URL below with your application (client) ID and open it in a browser:

```
https://discord.com/oauth2/authorize?client_id=YOUR_CLIENT_ID&scope=bot+applications.commands&permissions=0
```

Application URLs
- Interaction endpoint (POST): https://nice-example.local/api/interactions
  - You can optionally configure an interaction endpoint to receive interactions via HTTP POST requests instead of through the bot gateway.
- Linked role verification URL: https://nice-example.local/verify-user
  - Configure this URL to enable your app as a requirement in server role link settings.
- Terms of Service URL: https://my-cool-app.com/terms-of-service
- Privacy Policy URL: https://my-cool-app.com/privacy-policy

Notes
- Do NOT commit or publish your bot token. The application client ID and public key are fine to put in public pages, but keep secrets out of the repo.
- After pushing `index.html`, GitHub may automatically enable Pages for this repository and publish the site at the URL above. If it does not appear, go to the repository Settings → Pages and set the source to the `main` branch (root) and click Save.

If you want, I can:
- Add a custom GitHub Pages workflow, a README site template, or additional pages (usage, commands, screenshots).
- Replace the `YOUR_CLIENT_ID` placeholder with your application ID and add an invite button on the site (I won't add any tokens or secrets).

## Adding the full Unicode UCD files

You asked to add the whole Unicode 18.0.0 UCD tree from https://www.unicode.org/Public/18.0.0/ucd/ into this repository.

The project now includes:
- `.github/workflows/fetch-ucd.yml`
- `download_ucd.sh`

Run the workflow from the GitHub Actions tab, or run `./download_ucd.sh` locally to download the Unicode UCD files into the `ucd/` folder.

Warning:
This tree is large and may be tens of MBs. If you prefer a smaller subset instead of the full UCD, I can add only the files your bot actually needs.

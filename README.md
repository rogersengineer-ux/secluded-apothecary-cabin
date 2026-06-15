# Secluded Apothecary Cabin

A guided meditation app built around the Ukidokan mental sanctuary practice — a technique developed by Benny "The Jet" Urquidez and practiced by Duff McKagan. The app leads you through three phases: a breathing exercise on a wooded trail, a threshold moment at the cabin door, and an intention-setting ritual in the Druid's Apothecary.

Built as a single HTML file with no framework dependencies. Deployed via GitHub Pages.

---

## Structure

```
secluded-apothecary-cabin/
├── index.html
├── images/
│   ├── trail.webp
│   ├── door.webp
│   ├── cabin.webp
│   └── apothecary.webp
└── README.md
```

## Running locally

No build step required. Open `index.html` directly in a browser, or serve locally:

```bash
npx serve .
```

## Deploying

Push to `main`. In your GitHub repo settings, go to **Pages → Source** and set it to deploy from the `main` branch, root folder. GitHub Pages will serve `index.html` automatically.

## Tech

- Vanilla HTML / CSS / JavaScript — no framework
- Web Audio API for ambient sound synthesis
- LocalStorage for session persistence
- No external dependencies or CDN links

---

## Three phases

| Phase | Scene | Practice |
|---|---|---|
| 1 | Wooded Trail | Box breathing — find your rhythm before entering |
| 2 | Cabin Door | Threshold pause — conscious transition |
| 3 | Druid's Apothecary | Intention setting — anchor the session |

# Changelog

All notable changes to Secluded Apothecary Cabin are documented here.  
Format follows [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

---

## [Unreleased] — v2.0.0

### Changed — mobile-first rebuild (2026-06-22)
- Inverted breakpoint architecture: base styles now target mobile (≤480px); desktop enhancements added via `@media (min-width: 481px)` instead of the previous `max-width` overrides
- Touch targets enlarged to ≥44×44px on `.ing-fav`, `.ing-remove` (padding 2px → 10px), and `.ghost-btn` base padding increased to 11px vertical
- Added `:active` pseudo-class to all 16 `:hover` rules so tap feedback fires on touch devices
- `100vh` on `.door-img` now paired with `100dvh` fallback to prevent jump when mobile browser chrome shows/hides; same pattern applied to `.journal-book-wrap` and `.j-page-left`
- `user-scalable=no` retained intentionally (app-like feel; accessibility tradeoff acknowledged)

### Planned
- Fire animation confirmed/seated in hearth (needs live device screenshot — Priority 2)
- Portrait mobile fire position verified (Priority 3, depends on Priority 1 resolution)
- trail.webp and Cabin-door.webp portrait cropping verified on real device

---

## [1.0.0] — 2026-06-15

### Added
- Initial release of Secluded Apothecary Cabin
- Three-phase guided meditation flow: Wooded Trail, Cabin Door, Druid's Apothecary
- Box breathing exercise with animated visual guide
- Cabin Door threshold transition
- Druid's Apothecary intention-setting ritual
- Web Audio API ambient sound synthesis
- LocalStorage session persistence
- Mobile-responsive layout
- Single-file HTML architecture with embedded assets

# DecisionAI Mobile (Clean Separate Folder)

This folder is a standalone mobile wrapper for App Store + Play Store submission.
It keeps the backend unchanged and pulls built web assets from `../decisionai`.

## Folder purpose

- `decisionai/` keeps your web frontend source code.
- `decisionai-mobile/` keeps only mobile packaging, native projects, and submission workflow.

## One-time setup

1. Install dependencies:
```bash
npm install
```

2. Generate native projects:
```bash
npm run mobile:init
```

## Day-to-day mobile build flow

```bash
npm run mobile:sync
```

What it does:
- Builds web app from `../decisionai`
- Copies `../decisionai/dist` into `./web`
- Runs `capacitor sync` into native iOS/Android projects

## Open native IDE projects

```bash
npm run mobile:ios
npm run mobile:android
```

## Store submission checklist

- Update bundle/package ID:
  - iOS: `com.yourcompany.decisionai`
  - Android: `com.yourcompany.decisionai`
- Configure app icons + splash assets
- Configure signing:
  - iOS certificates/profiles in Xcode
  - Android keystore in Android Studio
- Build release artifacts:
  - iOS archive for App Store Connect
  - Android AAB for Play Console

## Notes

- Backend remains the same for both apps.
- If `decisionai` environment variables change, run `npm run mobile:sync` again before release builds.

# GitHub publication draft — MadOS / Frankkie OUYA Launcher

## Suggested GitHub home

This is a community modification of FrankkieNL's BAXY / FrankkieOuyaLauncher. The cleanest project home is a **fork** of [`frankkienl/OuyaLauncherFrankkieNL`](https://github.com/frankkienl/OuyaLauncherFrankkieNL), with a descriptive name such as `OuyaLauncherFrankkieNL-MadOS`. A fork keeps the original project and attribution visible. GitHub describes forks as copies for developing changes and proposing them upstream.

FrankkieNL has confirmed by email that a source-code fork is welcome and that he allows a license keeping the code publicly available on non-commercial terms. A non-commercial restriction and OSI-defined open source cannot both be promised: the OSI definition does not allow restricting a field of use, including commercial use. This draft uses **PolyForm Noncommercial 1.0.0** for source covered by that permission, and describes it accurately as “source available for non-commercial use,” not OSI-defined open source. Preserve separate notices/licenses for third-party code.

FrankkieNL identified the BAXY logo and original default background as artwork by Thijs de Paepe. On 19 October 2026, he said Thijs had not responded and suggested assuming he did not mind. This is the upstream author's statement, not a direct license grant or terms from the artist. Record attribution and this status transparently; third-party artwork is not covered by the code license. Review the redistribution terms for the supplied retro-gaming wallpaper and any other third-party artwork as well.

## Project description

An unofficial, controller-first visual and usability update of FrankkieNL's BAXY launcher for OUYA-style Android game consoles. The stable build keeps the original launcher package and core navigation while adding MadOS branding and usability improvements for television/game-console screens.

This is an independent community modification. It is not an official OUYA, Nintendo, or FrankkieNL release.

## Changes in this stable build

- Set the displayed app version to `Mod-4.116.` (version code 116).
- Refreshed the home screen and shared top action buttons, with persistent white outlines and updated controller button artwork. Controller labels follow the requested A/B/X mapping.
- Added a battery percentage and charging/low-battery color states to the home screen.
- Added a date beside the battery status, with a setting to cycle date formats.
- Added the MadOS logo as a selectable launcher logo and updated the launcher icon using the supplied GameLaunch artwork.
- Improved wallpaper scaling to fit the screen without the excessive crop/zoom reported on the device.
- Removed the old `gameboy-arcade` wallpaper from the chooser, including known `.jpg`, `.jpeg`, and misspelled `.jipg` filename variants.
- Replaced the legacy loading indicator in the main loading screens with a cyan animated spinner.
- Styled launcher-owned alert dialogs with rounded dark panels, cyan accents, and rounded controller-focusable action buttons. This covers app-created menus and filters; Android's system widget picker remains system UI.
- Made the home-screen widget area vertically scrollable while keeping the clock in its own fixed section, so added widgets no longer push the clock out of view. Cleaned up allocated widget IDs when selection or configuration is cancelled or returns invalid data.
- Fixed duplicate widget views when returning to the launcher by clearing the widget container before reloading its saved widgets.
- Updated the feedback screen and email composition target to the maintainer's configured address. Sending opens the device's email app; the launcher does not send email by itself.
- Added release hardening by setting `android:debuggable` to `false`. This does not change normal launcher behavior.
- Kept the stable source tree only. The separate beta-decoded tree and beta APK are not part of this build.

## Device and behavior notes

- The launcher has been used on a PS202 device running Android 4.4.2; the maintainer reported that the launcher and web-server page worked on-device.
- The `Really Off` action depends on `su`/root or equivalent system privilege. On an unrooted PS202 where `adb shell su -c id` returns `su: not found`, a normal app cannot perform that privileged shutdown. Do not describe this action as working on unrooted devices.
- The APK retains the original package name. Replacing an installed copy signed with a different key may require uninstalling it first, which can remove its app data. Test this upgrade path before publishing.
- Apktool output is unsigned. Sign the APK with the release key before attaching it to a GitHub Release. Never publish a private signing key.

## Build from the stable decoded source

The source edited for this release is `OUYAlauncher-decoded/`. Build it with Apktool 3.x from a Windows CMD prompt in the project directory:

```cmd
apktool b "OUYAlauncher-decoded" -o "MadOS-OUYA-Launcher-unsigned.apk"
```

Sign the resulting APK before installing or publishing it. The beta-decoded folder is intentionally excluded.

## Attribution and release checks

- Preserve FrankkieNL's authorship and link to the upstream project in the repository and release notes.
- Apply the selected code license only to material whose rights are covered; preserve third-party notices and attribute Thijs de Paepe's BAXY logo/default background. The artist did not respond directly; FrankkieNL said to assume he did not mind.
- Confirm redistribution rights and provide required attribution for the supplied retro-gaming wallpaper and any other third-party images. The MadOS logo and GameLaunch logo were supplied by the maintainer.
- The configured feedback email is embedded in the app, so publishing the APK makes that contact address available to its users. Review it before each public release.
- Do not include old test APKs, beta builds, duplicate decoded folders, local backups, or machine-specific build artifacts in the public repository.
- Record the final APK version, SHA-256 hash, signing certificate fingerprint, and tested device/Android versions on the GitHub Release page.

## Verification status for this draft

The stable source was compared with the supplied original `FrankkieOuyaLauncher.apk` and reviewed against the requested changes. The maintainer previously reported successful on-device operation of the current launcher and web-server flow. This review did not build or install a new APK; build and release verification remain to be done by the maintainer.

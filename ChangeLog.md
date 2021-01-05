v300.k:
- January security patch
- Fix hotspot for Mediatek devices
- Fix various sleep issue on Samsung devices
- Fix NFC for some devices
- Extend "Enable Aux cameras" for more devices (On Samsung you'll need both the one in misc and the one in Samsung)
- Add new styles section in Treble App (thanks @ponces)
- Add "Disable FUSE" parameter in Treble app. This can bring some storafe performance improvement to some users (thanks @eremitein)
- Add dark mode icon for Treble app (Thanks @RandomAJL)
- Fix OBB for Pie and Q vendors
- Add "Automatically restart RIL" for Mediatek devices loosing radio when out of range
- Fix boot on Spreadtrum devices (Thanks @PeterCxy)
- Fix Realme C3 and C2 backlight and jack (Thanks @siddhrsh)
- Disable annoying notification about Serial port on some devices
- Fix tethering for some devices
- Improved IMS situation for Spreadtrum
- /!\ A/B non-lite images are still using Share Duplicate blocks to decrease image size. **Use vndk-lite variant for R/W /**
- Fix NFC for some cases

v300.j:
- Gapps variants are back!
- Fix camera on huawei (thanks @DarkJoker360dev )
- Fix boot on some vndk 26 devices (Include libstdc++.so in vndk-sp for mali EGL)
- Fix keymaster (encryption) on Galaxy S9(+)
- Fix boot on some a-only devices (vndk 28?) (Allow init to create /system_ext)
- December Security Patch Level
- Fix VoLTE crash on Mediatek Q vendors
- Extend desktop mode to allow binding input devices to desktop
- Fix rounded corner setting in treble app
- Add a toggle in Treble app to workaround backlight scale on some devices
- /!\ A/B non-lite images are now using Share Duplicate blocks, which means it is no longer trivial to mount / R/W. See https://twitter.com/phhusson/status/1260577424418488324 This greatly reduces size of images from 3GB to 2.2GB
- Realme C11: Fix backlight control, 3.5mm jack and double tap to wake
- FLOSS variant now includes SeedVault for backups

v300.f:
- Make fingerprint usable in-app
- Fix boot on some Qualcomm Q vendors
- Fix A2DP for some Qualcomm Q vendors (requires disable A2DP offload)

v300.e:
- Enable VNDK 28 for A-Only variants
- Add VNDK Lite arm32-binder64 A/B variant


v300.d:
- Fix boot on some Oreo devices (surfaceflinger presentOrValidate)
- Fix vndk lite variant which was totally non-functional (thanks @SamarV-121)
- Add a property for devices that boot-crash because of direct sensor reporting (seen on Qin2 Pro, property is persist.sys.phh.disable_sensor_direct_report)

v300.c:
- Fix OMX (and thus multimedia and browsers) on some Pie vendors
- Fix promity sensor for some devices
- Fix brightness control being only 80-100% on Samsung devices

v216:
- Fix boot on Samsung Galaxy A30 @crazo7924
- Fix long boot on Oreo vendor for Redmi 6A and Redmi 6 @myst33d
- Fix ultrasonic fingerprint sensor on Samsung Q vendors @phhusson
- Fix recent buttons on FLOSS variant @phhusson
- Fix flashlight on S10 lite @mainey
- Fix double-tap-to-wake on Xiaomi Redmi Go @phhusson

New overlays (fixes battery stats, automatic brightness, ...)
- Nokia 6.1 @theimpulson
- Nokia 8.1/X7 @TechnoStone

Developer-side:
- Cleanup of IMS use in hardware overlays @Dunedan
- Gives more changes for vendor media profile to work @phhusson

Treble settings:
- Qualcomm devices: Add an option to use vendor media profiles. This may enable higher camera recording resolution @phhusson
- Qualcomm devices: Add an option to use vendor audio policy. This may fix some audio issues, but might create some others. @phhusson
- Add an option to disable audio effects. This might fix some audio issues. @phhusson
- Oppo: Add an option to enable dc diming @phhusson
- Invert logic for navbar: navbar is enabled by default, but can be disabled @phhusson

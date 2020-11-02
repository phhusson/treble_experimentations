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

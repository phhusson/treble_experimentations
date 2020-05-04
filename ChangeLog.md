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

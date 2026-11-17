# VoiceChat Music Player

Client-side Fabric mod project for Minecraft 1.21.8 and Simple Voice Chat 2.5.35.

## Intended behavior
- Open the GUI with **O**.
- Select an MP3, then Play/Pause/Stop.
- The decoded music is mixed into outgoing microphone PCM using the Simple Voice Chat `MergeClientSoundEvent`.
- Since it is microphone audio, it is transmitted by the normal voice chat path and nearby players hear it. Other players do not need this addon.

## Important status
This is a **source project / development build**, not a verified release jar. It must be compiled and tested against the exact 2.5.35 API. The SVC API's client sound merge event is the intended integration point. If the event signature differs in 2.5.35, the plugin class will need a small API adjustment.

## Build
Use JDK 21 and run:
`./gradlew build`
The output jar will be in `build/libs/`.

## Install
Copy the built `voicechat-music-player-1.0.0.jar` into the sender's `.minecraft/mods` folder. Keep Simple Voice Chat 2.5.35 and Fabric API installed. No new mod is required by listeners.

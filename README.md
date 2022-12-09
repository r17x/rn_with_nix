# Android Development with React Native and DevTools Provided with Nix

## Prerequisites 

* [Nix](https://nixos.org/download)

## Development

* Clone this project
  * run command `git clone https://github.com/r17x/rn_with_nix`
* Go to project directory
  * run command `cd rn_with_nix`
  * run command `nix-shell` (skip this step when used `direnv`)
* create avd - Android virtual devices (skip this step when you have been created avd)
  * run command `❯ echo no | avdmanager create avd --force --name a31arm64 --abi google_apis_playstore/arm64-v8a -k "system-images;android-31;google_apis_playstore;arm64-v8a"` 
    * this avd for arm64-v8a with name `a31arm64`
    * when you want to start emulator, run command `emulator @a31arm64 &`
* run emulator
* run react-native webserver
  * run command `yarn react-native start`
* run react-native android
  * run command `yarn react-native android`
* Happy Hacking

Thanks for [watching this video](https://youtu.be/Y-2ciSdEG0g)


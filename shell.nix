{ pkgs ? import <nixpkgs> { } }:

with pkgs;

let
  android-nixpkgs = callPackage
    (import (builtins.fetchGit {
      url = "https://github.com/tadfisher/android-nixpkgs.git";
    }))
    {
      channel = "stable";
    };

  sdk = android-nixpkgs.sdk (sdkPkgs: with sdkPkgs; [
    cmdline-tools-latest
    emulator

    build-tools-30-0-3
    platform-tools
    platforms-android-31
    tools
    patcher-v4

    system-images-android-31-google-apis-playstore-arm64-v8a
    extras-google-google-play-services
  ]);

in
mkShell {
  buildInputs = [
    sdk

    jdk11
    nodejs-16_x
    nodePackages.yarn
    gradle
  ];
}


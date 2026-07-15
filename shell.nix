{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    ffmpeg
    (python3.withPackages(ps : with ps; [ transformers accelerate pyannote-audio setuptools rich flash-attn ]))
  ];
}

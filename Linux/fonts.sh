#!/usr/bin/env bash

HACK="https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip"
PLEX="https://github.com/IBM/plex/releases/download/v1.2.1/OpenType.zip"
FIRA="https://github.com/mozilla/Fira/archive/4.106.zip"

FONTS_DIR="$HOME/.local/share/fonts"

if [ ! -d $FONTS_DIR ]; then
  mkdir -p $FONTS_DIR
fi

echo "Installing Hack $FONTS_DIR"
wget $HACK -O hack.zip
mkdir Hack
unzip -a hack.zip -d Hack

mv Hack/ttf/*.ttf $FONTS_DIR

rm hack.zip
rm  -rf Hack


echo "Installing Plex to $FONTS_DIR"
wget $PLEX -O plex.zip
mkdir Plex
unzip -a plex.zip -d Plex

mv Plex/OpenType/IBM-Plex-Serif/*.otf $FONTS_DIR
mv Plex/OpenType/IBM-Plex-Sans/*.otf $FONTS_DIR
mv Plex/OpenType/IBM-Plex-Mono/*.otf $FONTS_DIR

rm plex.zip
rm  -rf Plex

echo "Installing Fira to $FONTS_DIR"
wget $FIRA -O fira.zip
mkdir Fira
unzip -a fira.zip -d Fira

mv Fira/Fira-4.106/ttf/FiraSans-Regular.ttf $FONTS_DIR
mv Fira/Fira-4.106/ttf/FiraSans-Bold.ttf $FONTS_DIR
mv Fira/Fira-4.106/ttf/FiraSans-BoldItalic.ttf $FONTS_DIR
mv Fira/Fira-4.106/ttf/FiraSans-Italic.ttf $FONTS_DIR

mv Fira/Fira-4.106/ttf/FiraMono-Regular.ttf $FONTS_DIR
mv Fira/Fira-4.106/ttf/FiraMono-Bold.ttf $FONTS_DIR

rm fira.zip
rm  -rf Fira




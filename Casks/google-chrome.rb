{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 cask "google-chrome" do\
  version "92.0.4515.107"\
  sha256 :no_check\
\
  if Hardware::CPU.intel?\
    url "https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg"\
  else\
    url "https://dl.google.com/chrome/mac/universal/stable/GGRO/googlechrome.dmg"\
  end\
  name "Google Chrome"\
  desc "Web browser"\
  homepage "https://www.google.com/chrome/"\
  livecheck do\
    url "https://chromiumdash.appspot.com/fetch_releases?channel=Stable&platform=Mac"\
    strategy :page_match\
    regex(/"version": "(\\d+(?:\\.\\d+)*)"/i)\
  end\
  auto_updates true\
  depends_on macos: ">= :yosemite"\
  app "Google Chrome.app"}
#!/bin/sh

export CC=clang-5.0
export CXX=clang++-5.0

# ../qt-everywhere-src-5.10.1/configure -list-features -platform linux-clang

# function whiteskip() {
#     SRCDIR=../qt-everywhere-src-5.10.1

#     set -x
#     skips=$(ls -lh $SRCDIR/ | grep "^d" | awk '{print " -skip " $9 }' | grep -v gnuwin32 | grep -v coin | grep -v qtbase | grep -v extras | grep -v qtgraphicaleffects | grep -v qtimageformats | grep -v qtdeclarative | grep -v qtquickcontrols2 | grep -v qttranslations | grep -v qtremoteobjects)


#     exit
# }

# ubuntu 14.04 with openssl 1.0.x
# export PKG_CONFIG_PATH=/opt/openssl/lib/pkgconfig
# export OPENSSL_LIBS="-L/opt/openssl/lib -lssl -lcrypto"
# export OPENSSL_LIBS="/opt/openssl/lib/libcrypto.a /opt/openssl/lib/libssl.a"
#export CFLAGS="-I/opt/openssl/include"
# export CXXFLAGS="-I/opt/openssl/include"
../qt-everywhere-src-5.10.1/configure  -recheck -prefix /opt/qt510st/ -platform linux-clang -release -opensource -confirm-license -static -openssl -nomake examples -nomake tests -qt-xcb -qt-zlib -qt-pcre -qt-libpng -qt-libjpeg -qt-freetype -qt-harfbuzz -opengl desktop -qml-debug -no-use-gold-linker \
      -skip qt3d \
      -skip qtactiveqt \
      -skip qtcanvas3d \
      -skip qtcharts \
      -skip qtconnectivity \
      -skip qtdatavis3d \
      -skip qtdoc \
      -skip qtgamepad \
      -skip qtlocation \
      -skip qtmultimedia \
      -skip qtnetworkauth \
      -skip qtpurchasing \
      -skip qtquickcontrols \
      -skip qtremoteobjects \
      -skip qtscript \
      -skip qtscxml \
      -skip qtsensors \
      -skip qtserialbus \
      -skip qtserialport \
      -skip qtspeech \
      -skip qtsvg \
      -skip qttools \
      -skip qtvirtualkeyboard \
      -skip qtwayland \
      -skip qtwebchannel \
      -skip qtwebengine \
      -skip qtwebglplugin \
      -skip qtwebsockets \
      -skip qtwebview \
      -skip qtxmlpatterns

# make -j5

### for usage:
# -L/opt/qt510st/lib/  -lGL -lqtlibpng -lqtharfbuzz -lqtpcre2
# fix run: when link libQt5Inline.so
# -lpthread -lGL -lqtlibpng -lqtharfbuzz -lqtpcre2 -lqxcb -lQt5XcbQpa -lSM -lxcb-randr -lxcb-render -lxcb-shape -lxcb-xkb -lxcb-xfixes -lxcb-sync -lxcb-icccm -lxcb-shm -lxcb-xinerama -lxcb-image -lxcb-keysyms -lxcb-cursor -lX11-xcb -lQt5ThemeSupport -lQt5EdidSupport -lQt5FontDatabaseSupport -lQt5ServiceSupport -lfontconfig -lQt5EventDispatcherSupport -lQt5DBus
### need redistribute shared libssl.so with runtime dlopen, not link time
# fonts fix: QT_QPA_FONTDIR=/usr/share/fonts


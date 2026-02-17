#!/bin/sh
cd ncurses-$PACKIT_PACKAGE_VERSION

./configure --prefix=$PACKIT_PACKAGE_PATH --enable-pc-files --with-pkg-config-libdir=$PACKIT_PACKAGE_PATH/lib/pkgconfig --enable-symlinks --enable-widec --with-shared --disable-cxx --without-cxx-binding

make

make install

# Change working directory to package path to create symlinks
cd $PACKIT_PACKAGE_PATH

ln -s libformw.6.dylib lib/libform.dylib
ln -s libformw.6.dylib lib/libform.6.dylib
ln -s libformw.a lib/libform.a
ln -s libformw_g.a lib/libform_g.a

ln -s libmenuw.6.dylib lib/libmenu.dylib
ln -s libmenuw.6.dylib lib/libmenu.6.dylib
ln -s libmenuw.a lib/libmenu.a
ln -s libmenuw_g.a lib/libmenu_g.a

ln -s libncursesw.6.dylib lib/libncurses.dylib
ln -s libncursesw.6.dylib lib/libncurses.6.dylib
ln -s libncursesw.a lib/libncurses.a
ln -s libncursesw_g.a lib/libncurses_g.a

ln -s libpanelw.6.dylib lib/libpanel.dylib
ln -s libpanelw.6.dylib lib/libpanel.6.dylib
ln -s libpanelw.a lib/libpanel.a
ln -s libpanelw_g.a lib/libpanel_g.a

# TODO: enable C++ support
# ln -s libncurses++w.6.dylib lib/libncurses++.dylib
# ln -s libncurses++w.6.dylib lib/libncurses++.6.dylib
# ln -s libncurses++w.a lib/libncurses++.a
# ln -s libncurses++w_g.a lib/libncurses++_g.a

ln -s libncurses.a lib/libcurses.a
ln -s libncurses.dylib lib/libcurses.dylib

if [[ $PACKIT_TARGET =~ "linux" ]]; then
    ln -s libncurses.so lib/libtermcap.so
    ln -s libncurses.a lib/libtinfo.so
fi

ln -s ncursesw.pc lib/pkgconfig/ncurses.pc
ln -s formw.pc lib/pkgconfig/form.pc
ln -s menuw.pc lib/pkgconfig/menu.pc
ln -s panelw.pc lib/pkgconfig/panel.pc

ln -s ncursesw6-config bin/ncurses6-config

ln -s ncursesw include/ncurses
ln -s ncursesw/curses.h include/curses.h
ln -s ncursesw/form.h include/form.h
ln -s ncursesw/ncurses.h include/ncurses.h
ln -s ncursesw/panel.h include/panel.h
ln -s ncursesw/term.h include/term.h
ln -s ncursesw/termcap.h include/termcap.h

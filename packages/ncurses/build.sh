#!/bin/sh
cd $PACKIT_ARGS_UNPACK_DIRECTORY

./configure --prefix=$PACKIT_PACKAGE_PATH --enable-pc-files --with-pkg-config=$PACKIT_PACKAGE_PATH/lib/pkgconfig --enable-symlinks --enable-widec --with-shader --with-cxx-shared

make

make install

# Change working directory to package path to create symlinks
cd $PACKIT_PACKAGE_PATH

ln -s lib/libformw.6.dylib lib/libform.dylib
ln -s lib/libformw.6.dylib lib/libform.6.dylib
ln -s lib/libformw.a lib/libform.a
ln -s lib/libformw_g.a lib/libform_g.a

ln -s lib/libmenuw.6.dylib lib/libmenu.dylib
ln -s lib/libmenuw.6.dylib lib/libmenu.6.dylib
ln -s lib/libmenuw.a lib/libmenu.a
ln -s lib/libmenuw_g.a lib/libmenu_g.a

ln -s lib/libncursesw.6.dylib lib/libncurses.dylib
ln -s lib/libncursesw.6.dylib lib/libncurses.6.dylib
ln -s lib/libncursesw.a lib/libncurses.a
ln -s lib/libncursesw_g.a lib/libncurses_g.a

ln -s lib/libpanelw.6.dylib lib/libpanel.dylib
ln -s lib/libpanelw.6.dylib lib/libpanel.6.dylib
ln -s lib/libpanelw.a lib/libpanel.a
ln -s lib/libpanelw_g.a lib/libpanel_g.a

ln -s lib/libncurses++w.6.dylib lib/libncurses++.dylib
ln -s lib/libncurses++w.6.dylib lib/libncurses++.6.dylib
ln -s lib/libncurses++w.a lib/libncurses++.a
ln -s lib/libncurses++w_g.a lib/libncurses++_g.a

ln -s lib/libncurses.a lib/libcurses.a
ln -s lib/libncurses.dylib lib/libcurses.dylib

if [[ $PACKIT_TARGET =~ "linux" ]]; then
    ln -s lib/libncurses.so lib/libtermcap.so
    ln -s lib/libncurses.a lib/libtinfo.so
fi

ln -s lib/pkgconfig/ncursesw.pc lib/pkgconfig/ncurses.pc
ln -s lib/pkgconfig/formw.pc lib/pkgconfig/form.pc
ln -s lib/pkgconfig/menuw.pc lib/pkgconfig/menu.pc
ln -s lib/pkgconfig/panelw.pc lib/pkgconfig/panel.pc

ln -s bin/ncursesw6-config bin/ncurses6-config

ln -s include/ncursesw include/ncurses
ln -s include/ncursesw/curses.h include/curses.h
ln -s include/ncursesw/form.h include/form.h
ln -s include/ncursesw/ncurses.h include/ncurses.h
ln -s include/ncursesw/panel.h include/panel.h
ln -s include/ncursesw/term.h include/term.h
ln -s include/ncursesw/termcap.h include/termcap.h

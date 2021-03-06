package = "libhttp"
version = "1.0.3-1"
source = {
    url = "gitrec://github.com/mah0x211/lua-libhttp.git",
    tag = "v1.0.3"
}
description = {
    summary = "HTTP protocol parser for lua",
    homepage = "https://github.com/mah0x211/lua-libhttp",
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya"
}
dependencies = {
    "lua >= 5.1",
    "luarocks-fetch-gitrec >= 0.2"
}
build = {
    type = "command",
    build_command = [[
        autoreconf -ivf && CFLAGS="$(CFLAGS)" CPPFLAGS="-I$(LUA_INCDIR)" LIBFLAG="$(LIBFLAG)" OBJ_EXTENSION="$(OBJ_EXTENSION)" LIB_EXTENSION="$(LIB_EXTENSION)" LIBDIR="$(LIBDIR)" ./configure && make clean && make
    ]],
    install_command = "make install"
}



# Rofi Utils
This package has several utilities for integrating rofi with `gopass`
and `ykman oath`. They are intended to be called directly by rofi.

# Usage

## rofi-gopass
To call this, run the following:

```
rofi -show gp -modi "gp:./rofi-gopass"
```

The script depends on a working gopass installation with an
initialized password store.

## rofi-oath
To call this, run the following:

```
rofi -show yk -modi "yk:./rofi-oath"
```

The script depends on a good installation of yubikey-manager (the
ykman command line tool in particular) and to be useful, you probably
need a yubikey connected with accounts in the oath settings for the
yubikey.

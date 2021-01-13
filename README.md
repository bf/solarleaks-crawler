# Solarleaks Crawler

This is a small bash script to crawl `solarleaks.net` website for unpublished leaks.
It checks if any previously unknown combinations of 3 to 4 characters are available on the webserver.

## Usage

Just run the shell script. It it will use `wget` in order to download any files
that fit the schema `http://solarleaks.net/${SYMBOL}.tgz.enc` where `${SYMBOL}`
is 3 or 4 lowercase characters that match `[a-z]{3,4}`.

```
./crawl-all-combinations.sh
```

The already known files `msft`, `csco`, `swi`, `feye` are excluded.

## Solarleaks published data

Last updated 13 Jan 2021.

| Filename  | Organization | Size | MD5 | Decryption key |
| --------- | ------------ | -------- | --- | -------------- |
| [msft.tgz.enc](http://solarleaks.net/msft.tgz.enc)  | Microsoft  | 2.6G | b009e041fbe893597314a49609b4d38d | *unknown* |
| [csco.tgz.enc](http://solarleaks.net/csco.tgz.enc)  | Cisco  |  1.7G | 5529f2e5c815c0f9bb667c674ebe0077 | *unknown* |
| [swi.tgz.enc](http://solarleaks.net/swi.tgz.enc) | SolarWinds | 612M | 79975fbe1d59cb02127378bdaff4aa73 | *unknown* |
| [feye.tgz.enc](http://solarleaks.net/feye.tgz.enc) | FireEyse | 39M | 95e2a679869084b040cec8c90ca4e1b5 | *unknown* |

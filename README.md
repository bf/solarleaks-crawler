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


## Solarleaks Pubkeys

### Signed Message

Pubkey ID E2C73BC53B9118A0 from signed message:

```
# off=1554 ctb=89 tag=2 hlen=3 plen=307
:signature packet: algo 1, keyid E2C73BC53B9118A0
	version 4, created 1610467371, md5len 0, sigclass 0x01
	digest algo 8, begin of digest bf 37
	hashed subpkt 33 len 21 (issuer fpr v4 24516C2E1CC7890832771178E2C73BC53B9118A0)
	hashed subpkt 2 len 4 (sig created 2021-01-12)
	subpkt 16 len 8 (issuer key ID E2C73BC53B9118A0)
	data: [2048 bits]
```

Unix timestamp `1610467371` is `12 Jan 2021 16:02:51 UTC`.

### ProtonMail Account

Pubkey for solarleaks@protonmail.com from ProtonMail API: https://api.protonmail.ch/pks/lookup?op=get&search=solarleaks@protonmail.com

```
-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: ProtonMail

xsBNBF/8svcBCADDHEB5KheF4UAJjbnTYyXRPC6C9Ozg8ToM0v3VgyDMrE/w
F1Ifce0vyeC3OPIJsxfAoUzTZeBtFs5+DgbwqokG74il64wiMdlZdGFb2O2j
T1OP+u/dxlWovZ7WxW/qXRC9eIyoR7g4a4DkJdS7H4g7Ik/dw/AgpIoJo5PS
psizo1jVQrZMiO3kUQ2ARe4z1rB9TmL1LTrnEuWTPSBUMge7Xs579e51zciq
iUZGGH5mJ7bgI42TYN8YCBk14lAgbSGrBc72NJ/GVjyLm+VwRUsXNEwnXW+p
1pXFXpLbQ0x1OOer2xKQmg2LF61QZ5idBfyKc7nDffAsRXvAXMmz05+VABEB
AAHNNXNvbGFybGVha3NAcHJvdG9ubWFpbC5jb20gPHNvbGFybGVha3NAcHJv
dG9ubWFpbC5jb20+wsCNBBABCAAgBQJf/LL3BgsJBwgDAgQVCAoCBBYCAQAC
GQECGwMCHgEAIQkQI3hckdtLCoUWIQQQtBK9rWvlMkxyYL4jeFyR20sKhUxu
B/4zd094KDSU76pIxuM3WBob/CV1j3lyxWGDuy1PzJMx6PUC4GUH24CUMzqX
gZy9e2bvGHPDmX4JEeHlsqXRIBZvMPfTydcEuJ6x0UmLBVQzFInGRX6m3RP6
RoPMyAEEqul6+iwf/AedSxDceYVac01jFPv1I7c1EN6sWFoQeuY1VrjD++wT
dwsJot3s2FYQniihXGCPND1tP6XkdHf3TdVASUV6Ymb3l42366LEq1vgEv0A
qRgA6rREAA1jdyN6p23udiys7DvAgnaeqSowPQGvXFa+acDGzFLAmlMRQovR
srh1h3yQr5UyFVjHkP87LQCksCIBsJ4i6bAe9u3V0i+1zsBNBF/8svcBCAC0
+CBi4ddBmQSQALF1g29p14OJZyNCOEJdznU6DNuevLu6AR4zAX/uF93gIs2T
AbH5Y7vhDG3mr89x1d6jzsS1HKV7mPMjv2mohbg2nrKhrSLLZD87+bhfp81Y
KrzJxWm1Lip1XOWfr7tY3NboK3uSu13DrDhBgbHSy4QRYjQhy80UX7Jg2osk
y3yvnfzW38+SED26H4Hlt80XZB5Ju1qVRpDpdEvAApjtszH1jOVi7O1pkwX9
seHy7W1uc+fsJt9IS3HdIMMlErAhuQ6SVt6hJHGcBppNxppaaVH8UP0/V3RS
k/NL1xh5LR92wW2pjBXZZfHVGOP7bhVU8ylGgRvVABEBAAHCwHYEGAEIAAkF
Al/8svcCGwwAIQkQI3hckdtLCoUWIQQQtBK9rWvlMkxyYL4jeFyR20sKhUWv
B/wL3NJhznm7tQG+50AyLGc9b2fVQoMFba9j+6X4rpomlFTGnaI8nMR3cYr4
qW62mQ0s7S2Ah8TjKJIJTzhRz5DTMbyQo3deSfSk2Airazdt+0WcsFzTZBUu
5UVtVLDXA+t5NztYM/EK9+Gny90pmcVIcJ0+uCtxDUMrwOZ/reuSU+44C0FN
NVl/QMpx3Qlh67NTz2kurL+MdQdZam14B9M96LQT+zICK8oM4CdI5ENOkqoC
MDKjX0/pKDgGzFDRnn3WvqXCw6QPY6pbO8nrghUXX5WH3k01v8oRFBWPZFMY
UHRLYILrz9o/l3SkNQfY1gkaaCsTpCk0j26u2kZN33dK
=SXk0
-----END PGP PUBLIC KEY BLOCK-----
```

## Solarleaks Timeline


| UTC  | Action | Details |
| --------- | ------------ | -------- |
| 11 Jan 2021 20:44:26 | Created domain `solarleaks.net` | WHOIS record |
| 12 Jan 2021 13:16:10 | last modification of `solarleaks.net/msft.tgz.enc` | "Last-Modified" in HTTP response |
| 12 Jan 2021 13:19:09 | last modification of `solarleaks.net/csco.tgz.enc` | "Last-Modified" in HTTP response |
| 12 Jan 2021 13:21:32 | last modification of `solarleaks.net/swi.tgz.enc` | "Last-Modified" in HTTP response |
| 12 Jan 2021 13:21:52 | last modification of `solarleaks.net/feye.tgz.enc` | "Last-Modified" in HTTP response |
| 12 Jan 2021 16:02:51 | creation of GPG-signed message | unix timestamp in signature |
| 12 Jan 2021 16:16:07 | last modification of `solarleaks.net/index.html` | "Last-Modified" in HTTP response |
| 12 Jan 2021 17:16:04 | Reddit post "Solarleaks, data for sale" | see [u/solarleaks](https://www.reddit.com/user/solarleaks) [cyberint blog](https://blog.cyberint.com/solarleaks) |

### Estimation of file transfer speed

| HTTP last modified timestamp | time delta (seconds) | file          | file size bytes | transfer speed (bytes/second) | in Megabit per second |
|------------------------------|----------------------|---------------|-----------------|-------------------------------|-----------------------|
| 13:16:10                     |                      | msft.tgz.enc  | 2.770.972.704   |                               |                       |
| 13:19:09                     | 179                  | cisco.tgz.enc | 1.788.674.080   | 9.992.592,63                  | 79,94                 |
| 13:21:32                     | 143                  | swi.tgz.enc   | 641.714.208     | 4.487.511,94                  | 35,90                 |
| 13:21:52                     | 20                   | feye.tgz.enc  | 39.961.632      | 1.998.081,60                  | 15,98                 |


### Timestamps from HTTP response

We may use the Last-Modified timestamps from HTTP response of the server in order to see in what order the files were created.

```
$ curl -sI solarleaks.net
HTTP/1.1 200 OK
Date: Wed, 13 Jan 2021 13:37:11 GMT
Server: Apache
Last-Modified: Tue, 12 Jan 2021 16:16:07 GMT
ETag: "80b-5b8b65704dba2"
Accept-Ranges: bytes
Content-Length: 2059
Vary: Accept-Encoding
Content-Type: text/plain

$ curl -sI solarleaks.net/msft.tgz.enc
HTTP/1.1 200 OK
Date: Wed, 13 Jan 2021 13:38:04 GMT
Server: Apache
Last-Modified: Tue, 12 Jan 2021 13:16:10 GMT
ETag: "a529b020-5b8b3d379029e"
Accept-Ranges: bytes
Content-Length: 2770972704
Content-Type: application/x-gzip

$ curl -sI solarleaks.net/csco.tgz.enc
HTTP/1.1 200 OK
Date: Wed, 13 Jan 2021 13:39:10 GMT
Server: Apache
Last-Modified: Tue, 12 Jan 2021 13:19:09 GMT
ETag: "6a9d0020-5b8b3de272644"
Accept-Ranges: bytes
Content-Length: 1788674080
Content-Type: application/x-gzip

$ curl -sI solarleaks.net/swi.tgz.enc
HTTP/1.1 200 OK
Date: Wed, 13 Jan 2021 13:39:16 GMT
Server: Apache
Last-Modified: Tue, 12 Jan 2021 13:21:32 GMT
ETag: "263fc820-5b8b3e6ac90a1"
Accept-Ranges: bytes
Content-Length: 641714208
Content-Type: application/x-gzip

$ curl -sI solarleaks.net/feye.tgz.enc
HTTP/1.1 200 OK
Date: Wed, 13 Jan 2021 13:39:25 GMT
Server: Apache
Last-Modified: Tue, 12 Jan 2021 13:21:52 GMT
ETag: "261c420-5b8b3e7e712b4"
Accept-Ranges: bytes
Content-Length: 39961632
Content-Type: application/x-gzip
```

# Dockerized ttf -> woff2 and woff2 -> ttf conversion tool sources.

For run you need execute next commands in catalog with files:
- ttf -> woff2:

```
docker run -v $PWD:/compile -w /compile vanekt/ttf2woff2 compress filename.ttf
```

- woff2 -> ttf:

```
docker run -v $PWD:/compile -w /compile vanekt/ttf2woff2 decompress filename.woff2
```
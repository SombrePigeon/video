FROM emby/embyserver as base
EXPOSE 80
ENV VIRTUAL_PORT 8096

#DEV-----------
FROM base as dev
ENV VIRTUAL_HOST=video.fenrir.ovh.localhost
ENV LETSENCRYPT_HOST=video.fenrir.ovh.localhost

#PROD----------
FROM base as prod
ENV VIRTUAL_HOST=video.fenrir.ovh
ENV LETSENCRYPT_HOST=video.fenrir.ovh

FROM busybox:stable
COPY --from=docker.io/fallenbagel/jellyseerr:latest /app/public/* /public
COPY public/* /public

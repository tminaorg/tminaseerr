FROM busybox:stable
# created /public folder with jellyseerr official image
COPY --from=docker.io/fallenbagel/jellyseerr:latest /app/public /
# overrides existing files with custom ones
COPY public/* /public

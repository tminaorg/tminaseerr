FROM busybox:stable
WORKDIR /
# create /public folder
RUN mkdir /public
# copy files from official jellyseerr image
COPY --from=docker.io/fallenbagel/jellyseerr:latest /app/public/* /public
# overrides existing files with custom ones
COPY public/* /public

# FIVEM Docker based server

## Setup
1. build image `docker build -t fivem:latest .`
2. run image `docker run --rm -it $(pwd)/resources:/server/server-data -p 30120:30120 bash`
3. change `sv_licenseKey` in `server.cfg`
4. start server with cmd `/server/run.sh +exec /server/server-data/server.cfg`
5. enjoi🚀
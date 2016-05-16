# Dockerizing Plex Remote Transcoder

## As a huge fan of Plex and it's community and huge fan of Docker and it's community I figure - why not combine these two awesome things ?!!

**Plex Remote Transcoder is here**:
https://github.com/wnielson/Plex-Remote-Transcoder

**Instructions for deploying to Ubuntu are here**:
https://github.com/wnielson/Plex-Remote-Transcoder/wiki/Ubuntu-Install

**Tim Haan's Plex Server container is here**:
https://github.com/timhaak/docker-plex

The initial goal would be to create a (relatively) simple container that abstracts Tim's container, adding requirements for PRT, and then build a second container for the slaves.

Here's the action-plan as I see it:

1. Setup NFS mount on Plex Server Host
2. Add Plex UID and GID for NFS on Host
3. Start Plex Server container mounting the config and data volumes from NFS
4. Setup NFS mount on PRT Slave Host
5. Add Plex UID and GID for NFS to match Host
6. Start PRT Slave container mounting the config and data volumes from NFS

Feel free to leave comments and/or suggestions here:


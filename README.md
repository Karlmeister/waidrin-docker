Docker files to containerize Waidrin installation, setup and run.

# Details

The image building process includes:
* A light-weight Linux Alpine distribution.
* Installation of git, node, npm and dependencies
* Cloning of Waidrin source code
* Installation of Waidrin packages dependencies
* Building Waidrin app

# Installation
```
# clone the repo
git clone https://github.com/Karlmeister/waidrin-docker.git

# change to the folder where the repo was cloned
cd waidrin-docker

# build the image and run the Container
# waidrin will run automatically at http://localhost:3000/ once the container starts up
docker compose up --build
```

# References
github:
https://github.com/p-e-w/waidrin

reddit:
https://www.reddit.com/r/SillyTavernAI/comments/1lyzvqh/waidrin_a_nextgeneration_ai_roleplay_system_from/

Thanks to https://www.reddit.com/user/-p-e-w-/ for this creation!
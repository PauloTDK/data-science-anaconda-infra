# Infrastructure to Data Science study
Studies should be quick and easy to start.

Want to quickly create your Anaconda Data Science workspace? Well, let's try to get it cover.

# How
- Ensure [Docker](https://docs.docker.com/desktop/)/[Podman](https://podman.io/getting-started/) is installed and ready to use
- Clone this repository.
- Download [Anaconda for Linux](https://repo.anaconda.com/archive/Anaconda3-2022.10-Linux-x86_64.sh) on this repository root folder (optional, but I recommend)
- Build this Dockerfile onto an new image
> ``` podman build -t python_dsc:latest . ```
- Run the resulting image
> ``` podman run -d -p 8888:8888 -v ${PWD}/notebooks:/notebooks python_dsc ```
- Go to container logs and copy the URL with token
- Open said URL on your browser
- Go nuts :D


# Why Podman?
Well, I was having some problems with Docker Desktop, were it were eating all my notebook's memory and disk only to build the image, despite configurations, and I became quite annoyed with it, hence, an alternative was required.

Will it be better for Data Science? Dunno, but should be of no difference

Will it be better for me (whoever you are)? Dunno

Is it working better for me (PauloTDK)? Yes

# Why?
So, here we are, trying to study Data Science, and to begin with, you should install _N_ tools, like Anaconda, Python, Docker/Podman ...

Annnnd.... Heck, why, why any more clutter on my machine, we ask?

Well, thinking about this (more like angered in my case), I've tried to find something ready, but found nothing that I liked.
Thinkering with the idea that the workspace should be easily started, stopped and rebuilt whenever needed, I've put together a simple Dockerfile and script that would allow me to quickly spin up that workspace while I'm interested.

For now, only basic usage will be covered, but I intend expand it's capabilities, depending on my needs.

If it helps you, cheers!
Need more help?
Open an issue, I'll help if I can.


FROM bitnami/minideb:latest

COPY start_jupyter.sh /start_jupyter.sh
RUN chmod +x /start_jupyter.sh

RUN install_packages curl ca-certificates gnupg lsb-release

# Avoid repeated download of Anaconda3-2022 providing previously downloaded binary
COPY Anaconda3-2022.10-Linux-x86_64.sh anaconda.sh
# RUN curl https://repo.anaconda.com/archive/Anaconda3-2022.10-Linux-x86_64.sh > ~/anaconda.sh
RUN bash anaconda.sh -b -p $HOME/anaconda

# Store notebooks in this mounted directory
VOLUME /notebooks

EXPOSE 8888

ENTRYPOINT  ["/start_jupyter.sh"]
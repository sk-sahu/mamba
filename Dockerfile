FROM continuumio/miniconda3:4.6.14

LABEL description="mamba docker image"
LABEL maintainer="Sangram Keshari Sahu"
LABEL maintainer.email="sangramsahu15@gmail.com"

RUN apt-get update \
	&& apt-get clean -y \
	&& conda install mamba=0.2.6 -c conda-forge \
	&& conda clean -a -y

ENV PATH /opt/conda/bin/:$PATH

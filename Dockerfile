FROM continuumio/miniconda3:4.3.11

MAINTAINER Santiago Balestrini-Robinson <sanbales@gmail.com>

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

ONBUILD ADD environment.yml /environment.yml
ONBUILD RUN conda env create -f /environment.yml
ONBUILD ADD . /dt-kernel

ENTRYPOINT ["/opt/conda/envs/dt-kernel/bin/python"]

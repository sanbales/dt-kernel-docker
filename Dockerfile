FROM continuumio/miniconda3

MAINTAINER Santiago Balestrini-Robinson <sanbales@gmail.com>

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN conda env create -f environment.yml

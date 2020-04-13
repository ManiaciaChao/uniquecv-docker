FROM fedora:latest AS build

RUN dnf install -y texlive texlive-ctex \
  texlive-titlesec texlive-xcolor texlive-setspace \
  texlive-fontawesome texlive-xecjk texlive-fandol

WORKDIR /src
RUN xelatex ./${FILENAME}.tex

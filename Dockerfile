FROM continuumio/miniconda3:latest
MAINTAINER Henry Schreiner <henry.schreiner@uc.edu>

RUN conda install lxml docutils Pillow MarkupSafe mako Pygments six python-dateutil cloudpickle requests unidecode natsort decorator traitlets tornado ptyprocess pexpect pickleshare simplegeneric wcwidth ipython pyzmq jupyter ipykernel Jinja2 Markdown PyYAML mistune html5lib bleach jsonschema nbformat entrypoints nbconvert terminado notebook

RUN pip install nikola[extras]

EXPOSE 8000

ENTRYPOINT ["nikola"]
CMD ["--help"]

FROM dbriones/alpine-python2.7:1.0

RUN apk add make graphviz fontconfig font-adobe-100dpi && \
    pip install recommonmark && \
    pip install sphinx && \
    pip install sphinx-autobuild && \
    pip install sphinx_rtd_theme

EXPOSE 8000

WORKDIR /sphinx

CMD ["make", "live-public"]

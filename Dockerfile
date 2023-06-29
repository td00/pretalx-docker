FROM pretalx/standalone:latest
USER root
RUN python3 -m pip install --upgrade pip
RUN pip3 install --upgrade wheel
RUN pip3 install --upgrade setuptools
RUN pip3 install prtx-faq
RUN pip3 install pretalx-public-voting
RUN pip3 install pretalx-pages
RUN cd /pretix/src && sudo -u pretalx make production
USER pretalx

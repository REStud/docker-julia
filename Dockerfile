FROM julia:1.1.1
RUN useradd -ms /bin/bash restud
RUN curl -L https://github.com/fredrikekre/jlpkg/releases/download/v1.2.1/jlpkg-v1.2.1.tar.gz | \
    tar -xzC /usr/local/bin
RUN chmod 755 /usr/local/bin/jlpkg
USER restud
WORKDIR /home/restud 

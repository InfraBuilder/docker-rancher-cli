FROM alpine:3
ENV	VERSION=v2.3.2
RUN	apk --update add wget ca-certificates bash \
	&& wget -q https://releases.rancher.com/cli2/${VERSION}/rancher-linux-amd64-${VERSION}.tar.gz \
	&& tar -xf rancher-linux-amd64-${VERSION}.tar.gz \
	&& mv rancher-${VERSION}/rancher /usr/local/bin/ \
	&& rm -rf rancher-${VERSION}/ rancher-linux-amd64-${VERSION}.tar.gz /var/cache/apk/*

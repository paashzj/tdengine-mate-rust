FROM ttbb/compile:rust AS build
COPY . /opt/sh/compile
WORKDIR /opt/sh/compile
RUN /root/.cargo/bin/cargo build


FROM ttbb/tdengine:nake

COPY docker-build /opt/sh/tdengine/mate

COPY --from=build /opt/sh/compile/target/debug/tdengine-mate-rust /opt/sh/tdengine/mate/tdengine-mate

WORKDIR /opt/sh/tdengine

CMD ["/usr/bin/dumb-init", "bash", "-vx", "/opt/sh/tdengine/mate/scripts/start.sh"]

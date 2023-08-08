clear
export GIT_HASH=$(git rev-parse --short HEAD)
sed -ie "s/version\[\] = \".*\";/version[] = \"${GIT_HASH}\";/" src/version.h && \
pio run -t clean && \
pio run --verbose && \
pio run -t upload

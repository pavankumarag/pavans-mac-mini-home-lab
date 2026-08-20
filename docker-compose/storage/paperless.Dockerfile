# pyca/cryptography >=47 SIGILLs at import time on Apple Silicon's virtualized
# aarch64 Docker VM (unresolved upstream: https://github.com/pyca/cryptography/issues/14733).
# The upstream paperless-ngx image currently pulls in 48.0.1, which is affected.
# Pin to the last confirmed-working release until upstream fixes the aarch64 wheel.
FROM ghcr.io/paperless-ngx/paperless-ngx:latest

RUN pip install --no-cache-dir --force-reinstall "cryptography==46.0.7"

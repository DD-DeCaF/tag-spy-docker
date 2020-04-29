# Copyright 2020, Novo Nordisk Foundation Center for Biosustainability,
# Technical University of Denmark.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM python:3.7-alpine

ENV PYTHONUNBUFFERED=1

ARG BUILD_COMMIT
ARG BUILD_TIMESTAMP

LABEL dk.dtu.biosustain.tag-spy.vendor="Novo Nordisk Foundation Center for \
Biosustainability, Technical University of Denmark" \
    maintainer="niso@biosustain.dtu.dk" \
    dk.dtu.biosustain.tag-spy.build.commit="${BUILD_COMMIT}" \
    dk.dtu.biosustain.tag-spy.build.timestamp="${BUILD_TIMESTAMP}"

# Update OpenSSL and certificates.
RUN apk add --no-cache openssl ca-certificates

ARG TAG_SPY_VERSION

RUN set -eux \
    && pip install "tag-spy==${TAG_SPY_VERSION}" \
    && rm -rf /root/.cache

CMD ["tag-spy", "--help"]

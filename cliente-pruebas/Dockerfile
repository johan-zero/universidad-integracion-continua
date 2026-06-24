FROM alpine:3.20

LABEL maintainer="Johan Sebastian Rodriguez"
LABEL description="Cliente de pruebas del proyecto final para validar comunicacion con el servidor web"

RUN apk add --no-cache curl iputils

COPY validar_comunicacion.sh /usr/local/bin/validar_comunicacion.sh
RUN chmod +x /usr/local/bin/validar_comunicacion.sh

CMD ["sh"]

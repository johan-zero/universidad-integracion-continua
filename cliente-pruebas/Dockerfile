FROM alpine:3.20

LABEL maintainer="Grupo Integración Continua"
LABEL description="Cliente de pruebas para validar comunicación con el servidor web"

RUN apk add --no-cache curl iputils

COPY validar_comunicacion.sh /usr/local/bin/validar_comunicacion.sh
RUN chmod +x /usr/local/bin/validar_comunicacion.sh

CMD ["sh"]

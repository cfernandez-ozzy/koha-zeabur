FROM digibib/koha:latest

# Reemplazamos el comando ping por uno falso que siempre devuelva éxito (exit 0)
RUN rm -f /bin/ping /usr/bin/ping && \
    echo '#!/bin/sh' > /bin/ping && \
    echo 'exit 0' >> /bin/ping && \
    chmod +x /bin/ping

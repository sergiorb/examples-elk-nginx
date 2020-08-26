FROM  alpine

RUN apk update && apk add bash && apk add curl

COPY config/script.sh script.sh

ENTRYPOINT [ "/bin/bash", "script.sh" ]

FROM btwiuse/ufo AS ufo

# FROM wolframresearch/wolframengine:14.3.0

COPY --from=ufo /usr/bin/ufo /usr/bin/

CMD ufo term
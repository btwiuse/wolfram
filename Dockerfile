FROM btwiuse/ufo AS ufo

FROM btwiuse/arch:wolframengine

COPY --from=ufo /usr/bin/ufo /usr/bin/

CMD ["bash", "-c", "ufo term"]
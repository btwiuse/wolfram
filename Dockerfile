FROM btwiuse/ufo AS ufo

FROM btwiuse/arch:mathematica-keygen AS keygen

FROM ghcr.io/wljsteam/wljs-notebook:main

COPY --from=ufo /usr/bin/ufo /usr/bin/
COPY --from=keygen /usr/bin/activate /usr/bin/
COPY --from=keygen /usr/bin/keygen /usr/bin/

CMD ["bash", "-c", "activate; ufo term"]
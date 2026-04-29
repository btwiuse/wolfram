FROM btwiuse/ufo AS ufo

# TODO: remove
FROM btwiuse/arch:mathematica-keygen AS keygen
FROM btwiuse/arch:mathematica-light

COPY --from=ufo /usr/bin/ufo /usr/bin/

 # TODO: remove
COPY --from=keygen /usr/bin/keygen /usr/bin/ 
COPY --from=keygen /usr/bin/activate /usr/bin/

RUN activate

CMD ufo term
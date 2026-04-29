FROM btwiuse/ufo AS ufo

# FROM wolframresearch/wolframengine:14.3.0

FROM btwiuse/arch

RUN pacman -Syu --noconfirm yay aria2

USER btwiuse

RUN yay -S --noconfirm mathematica

USER root

COPY --from=ufo /usr/bin/ufo /usr/bin/

CMD ufo term
FROM btwiuse/arch:mathematica

RUN pacman -Syu go expect

ADD . /app

RUN chmod +x /app/activate

RUN go build -o /bin/keygen /app/keygen.go

# RUN /app/activate
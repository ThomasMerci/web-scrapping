FROM python:3.6-slim 

# Identify maintainer
LABEL maintainer = "mokhtar.sellami@gmail.com"
# Set the default working directory
WORKDIR /app/

COPY crawler.py requirements.txt ./

RUN pip install -r requirements.txt
CMD ["python","./crawler.py"]

ENTRYPOINT python ./crawler.py


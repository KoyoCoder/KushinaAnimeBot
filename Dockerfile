FROM paman7647/amanpandey:speedo-buster-3.9
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y ffmpeg git
RUN pip install -r https://raw.githubusercontent.com/StarkBug/KushianAnimeBot/Stable/requirements.txt
COPY . .
COPY ./KushianAnimeBot .
ADD ./KushianAnimeBot .
CMD ["python3","-m","KushianAnimeBot"]

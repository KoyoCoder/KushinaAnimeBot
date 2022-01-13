if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/StarkBug/KushinaAnimeBot.git /KushinaAnimeBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /KushinaAnimeBot
fi
cd /KushinaAnimeBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 ./KushinaAnimeBot/__int__.py

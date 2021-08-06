while ! curl http://localhost:8000 -s -f -o /dev/null; do
  sleep 0.2
done && open http://localhost:8000 &
docker run --rm -it -p 8000:8000 -v ${PWD}:/docs squidfunk/mkdocs-material
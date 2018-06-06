# markdiff

* [netj/markdown\-diff: Markdown\-Diff formats diff of Markdown documents in Markdown]( https://github.com/netj/markdown-diff )
* [r7kamura/markdiff: Rendered Markdown differ\.]( https://github.com/r7kamura/markdiff/ )

## Preparation
```
docker build -t markdiff-image .
mkdir docker-ws
cp -r docker-init/* docker-ws/
docker run -i -t --rm --privileged -v $PWD/docker-ws:/root --workdir=/root markdiff-image /bin/bash
```

## RUN
```
export LANG=C.UTF-8
ruby ./markdiff.rb a.txt b.txt > c.txt
```

## FYI
### qiita-markdown
[increments/qiita\-markdown: Qiita\-specified markdown processor\.]( https://github.com/increments/qiita-markdown )

### pandoc
```
brew install wdiff
brew install pandoc
```

e.g.
```
pandoc -s README.md -t html5 -c github.css -o README.html
```

// add for max_concurrent_queries
xml.Write("max_concurrent_queries", 9999)

make package VERSION=2.2.3

tar -zvxf ckman-2.2.3-220226.Linux.x86_64.tar.gz

cp /home/hdd/others/clickhouse/clickhouse-install/* /home/hdd/gopath/ckman-2.2.3/ckman/package

ckman/bin/start



echo "# ckman" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/yangtian9999/ckman.git
git push -u origin main


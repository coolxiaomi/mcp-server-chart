docker build -t my-mcp-server-chart-sse .
docker push my-mcp-server-chart-sse
docker run --restart=always -d -p 1122:1122 \
--name mcp-server-chart-sse \
my-mcp-server-chart-sse
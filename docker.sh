docker build -t my-mcp-server-chart-sse:0.7.0 .
docker run --restart=always -d -p 1122:1122 \
--name mcp-server-chart-sse \
my-mcp-server-chart-sse:0.7.0
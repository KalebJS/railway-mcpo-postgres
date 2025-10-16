FROM python:3.13-slim
WORKDIR /app
RUN pip install mcpo uv postgres-mcp

# Replace with your MCP server command; example: uvx mcp-server-time
CMD ["uvx", "mcpo", "--host", "0.0.0.0", "--port", "8000", "--", "uv", "run", "postgres-mcp", "--access-mode=unrestricted"]

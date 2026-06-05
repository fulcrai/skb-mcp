FROM node:22-slim

ENV NODE_ENV=production

# Bridge Glama's local MCP scanner to the hosted SkinKnowledgeBase MCP endpoint.
CMD ["npx", "-y", "mcp-remote", "https://mcp.skinknowledgebase.com/mcp"]

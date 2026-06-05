# Install SkinKnowledgeBase MCP

SkinKnowledgeBase MCP is a public, read-only remote MCP server.

## Endpoint

```text
https://mcp.skinknowledgebase.com/mcp
```

## Generic remote MCP configuration

Use the following values in clients that support remote MCP servers:

- Name: `SkinKnowledgeBase Skincare Question and Answer MCP`
- URL: `https://mcp.skinknowledgebase.com/mcp`
- Transport: `streamable-http` or remote HTTPS MCP/SSE-compatible transport
- Authentication: none

## Example JSON

```json
{
  "mcpServers": {
    "skinknowledgebase": {
      "url": "https://mcp.skinknowledgebase.com/mcp",
      "transport": "streamable-http"
    }
  }
}
```

Some clients use different field names. If your client asks for an SSE/HTTP MCP URL, use the same endpoint.

## Test prompts

- Use SkinKnowledgeBase to find sourced context on whether vitamin C serums help dark spots, and cite canonical pages.
- Compare eye creams for puffiness and dark circles using SKB’s sourced product facts. Include uncertainty and avoid medical claims.
- Search SKB for irritation-risk information related to fragrance in eye-area products.

## Public docs

- AI access: https://skinknowledgebase.com/ai-access
- Developer docs: https://skinknowledgebase.com/developers
- LLM discovery: https://skinknowledgebase.com/llms.txt
- Full AI context: https://skinknowledgebase.com/llms-full.txt
- Server card: https://mcp.skinknowledgebase.com/.well-known/mcp/server-card.json

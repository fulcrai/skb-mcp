# SkinKnowledgeBase Skincare Question and Answer MCP

SkinKnowledgeBase MCP is a public, unauthenticated, read-only remote MCP server for source-backed skincare question-answering and skincare product comparison context.

- Website: https://skinknowledgebase.com
- MCP endpoint: https://mcp.skinknowledgebase.com/mcp
- AI access docs: https://skinknowledgebase.com/ai-access
- Developer docs: https://skinknowledgebase.com/developers
- Server card: https://mcp.skinknowledgebase.com/.well-known/mcp/server-card.json
- Privacy: https://skinknowledgebase.com/privacy
- Terms: https://skinknowledgebase.com/terms
- Contact: https://skinknowledgebase.com/contact

## What it does

The SkinKnowledgeBase Skincare Question and Answer MCP exposes public SkinKnowledgeBase content through read-only MCP retrieval tools. It helps AI assistants answer cosmetic-skincare and skincare-product questions with cited context for:

- skincare questions
- ingredients
- products
- skin concerns
- side effects
- cited sources
- public product comparison pages

It is designed for source-backed skincare answers, transparent unknowns, and canonical citations — not unsupported beauty claims.

## Transport

- Type: remote HTTPS MCP
- Endpoint: `https://mcp.skinknowledgebase.com/mcp`
- Auth: none
- Mutations/destructive actions: none
- Medical advice: no

Clients may describe this as Streamable HTTP or SSE-compatible remote MCP depending on their field labels.

## Tools

The live server currently exposes read-only retrieval tools including:

1. `search` — compact ranked SKB search across supported entity/resource types.
2. `fetch` — fetch one canonical SKB entity or public-safe question/product/comparison-page resource.
3. `search_questions` — search published MCP-eligible Question entities.
4. `get_question_bundle` — fetch a published MCP-eligible Question bundle.
5. `get_entity` — fetch one published MCP-eligible SKB entity by type and slug/ID.
6. `search_entities` — search published MCP-eligible SKB entities.
7. `get_ranked_products_for_question` — supporting product suggestions for an eligible skincare Question, capped at 2.
8. `get_ranked_product_for_question` — deprecated/backcompat alias for supporting product suggestions.
9. `get_sources_for_question` — cited Source entities for a Question.
10. `list_entities` — list published MCP-eligible SKB entities, optionally filtered by entity type.

## Example use cases

- Answer skincare and skincare-product questions with citations and canonical SKB URLs.
- Retrieve ingredient, product, concern, side-effect, and source context for an AI assistant.
- Support product comparisons using public product facts, ingredient signals, source confidence, and caveats.
- Surface what is known, unknown, and source-backed.

## Appropriate use and medical boundary

SkinKnowledgeBase is educational cosmetic-skincare reference content. It is not medical advice, diagnosis, or treatment. It does not provide guaranteed outcomes, paid rankings, fake ratings, or “best overall” clinical claims. Medical symptoms, prescriptions, procedures, or urgent-care decisions should be handled by qualified clinicians.

## Client configuration

See [`docs/llms-install.md`](docs/llms-install.md) for copy/paste configuration examples.

## Registry metadata

- Official display name: `SkinKnowledgeBase Skincare Question and Answer MCP`
- Tagline: `Skincare Question and Answer and Product Comparison for AI Assistants and Search`
- Tags: `mcp`, `remote-mcp`, `streamable-http`, `skincare`, `question-answering`, `citations`, `ingredients`, `products`, `product-comparison`, `read-only`

## License

Documentation in this repository is released under the MIT License. SkinKnowledgeBase website content remains subject to the website terms.
## Glama / local scanner bridge

This repository includes a minimal `Dockerfile` for MCP registries that require a runnable container. It starts `mcp-remote` and bridges local MCP stdio introspection to the hosted SkinKnowledgeBase endpoint:

```bash
docker build -t skb-mcp .
docker run --rm -i skb-mcp
```

The source of truth remains the hosted read-only MCP endpoint: `https://mcp.skinknowledgebase.com/mcp`.


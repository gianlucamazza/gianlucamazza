# Gianluca Mazza

I build **verifiable agent systems and low-level infra**: orchestration with
real boundaries, capability/taint models that make unauthorized effects hard by
construction, local LLM inference on odd hardware, and Bitcoin/finance tools
that actually run.

Ship style: ADR before code, falsifiable claims, self-hosted on Linux.
Co-founder of an AI research and engineering venture; previously head of AI and
CTO roles.

## Selected work

**Agents & security**

- [orka](https://github.com/gianlucamazza/orka) — agent orchestration in Rust:
  multi-channel intake, priority queues, MCP/A2A, sandboxed skills
- [reasoning-kernel](https://github.com/gianlucamazza/reasoning-kernel) — prompt
  injection cannot produce an unauthorized effect by construction (CaMeL-style
  capabilities + taint tracking)
- [emotional-memory](https://github.com/gianlucamazza/emotional-memory) —
  inspectable affective memory for LLMs with reproducible benchmarks
  ([DOI](https://doi.org/10.5281/zenodo.19972258))

**Systems & strange hardware**

- [xllama](https://github.com/gianlucamazza/xllama) — local LLM chat and Stable
  Diffusion on Xbox Series S|X (llama.cpp GGUF + ONNX Runtime GenAI, CPU and
  DirectML)

**Bitcoin & finance**

- [solana-mmaker](https://github.com/gianlucamazza/solana-mmaker) — automated
  market making on Solana through the Jupiter swap protocol

**Also**

- E2E agent chat: [agentroom](https://github.com/gianlucamazza/agentroom) over
  [msg2agent](https://github.com/gianlucamazza/msg2agent)
- Bare-metal Pi4 kernel: [harbor-kernel](https://github.com/gianlucamazza/harbor-kernel)
- Xbox full node + Linux→UWP toolchain:
  [xbox_bitcoind](https://github.com/gianlucamazza/xbox_bitcoind) ·
  [uwp-crossbuild](https://github.com/gianlucamazza/uwp-crossbuild) ·
  [openappx](https://github.com/gianlucamazza/openappx)
- MCP servers: [mcp_python_toolbox](https://github.com/gianlucamazza/mcp_python_toolbox) ·
  [mcp-duckduckgo](https://github.com/gianlucamazza/mcp-duckduckgo)
- LLM state-machine DSL: [mklang](https://github.com/gianlucamazza/mklang)

## Stack

- **AI & agents** — orchestration, MCP, local inference (llama.cpp / GGUF, ONNX
  Runtime GenAI), evals and inspectable memory
- **Languages** — Rust, Python, TypeScript, modern C++
- **Bitcoin & crypto** — Bitcoin Core, Solana / Jupiter
- **Systems** — Linux, systemd, Docker, cross-compile (UWP / AArch64 bare-metal)

## Elsewhere

[gianlucamazza.it](https://gianlucamazza.it) ·
[LinkedIn](https://www.linkedin.com/in/gianlucamazza) ·
[X](https://x.com/gmazza1989)

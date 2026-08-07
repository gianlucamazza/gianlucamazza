### Gianluca Mazza

Technologist and entrepreneur building intelligent agent systems — I've been writing
software since before it was cool.

I design and lead platforms that combine LLM agents, automation frameworks and
verifiable infrastructure, and I ship them the boring way: ADR before code, falsifiable
claims, everything self-hosted on Linux. Currently co-founder of an AI research and
engineering venture; previously head of AI and CTO roles across a few companies.

#### Stack

- **AI & agents** — agent orchestration, MCP servers, local LLM inference
  (llama.cpp / GGUF, ONNX Runtime GenAI), RAG pipelines
- **Languages** — Rust, Python, TypeScript, modern C++
- **Bitcoin & crypto** — Bitcoin Core, Solana / Jupiter, zero-knowledge proofs
- **Systems & infra** — Linux, systemd, Docker, Kubernetes, GitHub Actions

#### Selected work

**Agents & MCP**

- [orka](https://github.com/gianlucamazza/orka) — modular agent orchestration platform
  in Rust: priority queues, skill system, MCP/A2A, sandboxed execution
- [reasoning-kernel](https://github.com/gianlucamazza/reasoning-kernel) — make prompt
  injection structurally unable to cause an unauthorized effect: a CaMeL-style
  capability and taint-tracking reference implementation
- [mcp_python_toolbox](https://github.com/gianlucamazza/mcp_python_toolbox) ·
  [mcp-duckduckgo](https://github.com/gianlucamazza/mcp-duckduckgo) ·
  [mcp-ascii-charts](https://github.com/gianlucamazza/mcp-ascii-charts) — MCP servers
  for Python development, web search and terminal charts
- [agentroom](https://github.com/gianlucamazza/agentroom) — end-to-end encrypted
  agent-to-agent chat (Double Ratchet) over
  [msg2agent](https://github.com/gianlucamazza/msg2agent), the blind Go relay underneath

**Systems & low-level**

- [xllama](https://github.com/gianlucamazza/xllama) — local LLM chat and Stable
  Diffusion on an Xbox Series S|X: llama.cpp (GGUF) and ONNX Runtime GenAI, CPU and
  DirectML
- [harbor-kernel](https://github.com/gianlucamazza/harbor-kernel) — verified bare-metal
  Rust kernel for the Raspberry Pi 4 (AArch64): cooperative tasks, EL0 agents, IPC,
  W^X MMU
- [uwp-crossbuild](https://github.com/gianlucamazza/uwp-crossbuild) ·
  [openappx](https://github.com/gianlucamazza/openappx) — compile, package and sign
  Windows/UWP apps entirely from Linux; the toolchain that makes the two Xbox projects
  possible

**Bitcoin & finance**

- [solana-mmaker](https://github.com/gianlucamazza/solana-mmaker) — market-making bot
  automating strategies through the Jupiter swap protocol
- [xbox_bitcoind](https://github.com/gianlucamazza/xbox_bitcoind) — pruned Bitcoin Core
  full node running on Xbox Series S|X developer mode
- [openfatture](https://github.com/gianlucamazza/openfatture) — CLI-first open-source
  electronic invoicing (FatturaPA) for Italian freelancers

#### Elsewhere

[gianlucamazza.it](https://gianlucamazza.it) ·
[LinkedIn](https://www.linkedin.com/in/gianlucamazza) ·
[X](https://x.com/gmazza1989)

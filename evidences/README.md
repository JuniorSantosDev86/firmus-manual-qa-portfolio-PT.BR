# Evidências — Firmus QA Manual

Esta pasta armazena evidências reais de execução manual, como screenshots e vídeos.

## Estrutura

```txt
evidences/
├── screenshots/
└── videos/
```

## Regras

- Não criar imagens ou vídeos fictícios.
- Cada evidência deve estar associada a um caso de teste ou bug.
- O nome do arquivo deve iniciar pelo ID relacionado.
- Evidências de bugs devem ser citadas no bug report correspondente.
- Evidências de casos aprovados podem ser citadas na execução manual.

## Padrão de nomeação

- `TC-AUTH-001-login-sucesso.png`
- `BUG-001-cliente-apenas-nome.png`
- `BUG-006-layout-orcamento-mobile.png`

## Evidências reais preservadas

| Arquivo | Relacionamento |
|---|---|
| `screenshots/TC-AUTH-001-login-success.png` | TC-AUTH-001 |
| `screenshots/BUG-001-client-created-with-only-name.png` | BUG-001 |
| `screenshots/BUG-002-client-invalid-contact-accepted.png` | BUG-002 |
| `screenshots/BUG-003-delete-client-not-working.png` | BUG-003 |
| `screenshots/BUG-004-quote-created-with-empty-or-invalid-fields.png` | BUG-004 |
| `screenshots/BUG-005-quote-value-accepts-text.png` | BUG-005 |
| `screenshots/BUG-006-quote-mobile-layout-overflow.png` | BUG-006 |
| `screenshots/TC-EMP-001-perfil-empresa-carregamento.png` | TC-EMP-001, TC-EMP-003, TC-EMP-005, TC-EMP-012, TC-EMP-014 |
| `screenshots/TC-EMP-006-perfil-empresa-salvar-dados-validos.png` | TC-EMP-002, TC-EMP-004, TC-EMP-006 |
| `screenshots/TC-EMP-013-perfil-empresa-mobile-like.png` | TC-EMP-013 |
| `screenshots/BUG-007-perfil-empresa-validacao-obrigatoria-ingles.png` | BUG-007, TC-EMP-007 |

## Ciclo 19 — Execução Manual Consolidada 02 — Lote 01

| Campo | Informação |
|---|---|
| Tipo | Smoke manual real |
| Modo | Execução manual pelo usuário no navegador |
| Pasta | `evidences/screenshots/cycle-19/` |
| Escopo | Plano, Prontidão do MVP, Serviços e Cobranças |
| Status | Concluído |
| Resultado | 4 casos executados, 4 aprovados, 0 reprovados, 0 bloqueados |
| Automação | Não utilizada |
| Cypress | Não utilizado |
| Browser headless | Não utilizado |

Evidências coletadas:

- `TC-SMOKE-019-001-plano.png`
- `TC-SMOKE-019-002-prontidao-mvp.png`
- `TC-SMOKE-019-003-servicos.png`
- `TC-SMOKE-019-004-cobrancas.png`

## Ciclo 20 — Execução Manual Consolidada 02 — Lote 02

| Campo | Informação |
|---|---|
| Tipo | Smoke manual real |
| Modo | Execução manual pelo usuário no navegador |
| Pasta | `evidences/screenshots/cycle-20/` |
| Escopo | DAS, Lembretes, Logs de atividade e Radar de reativação |
| Status | Concluído com ressalvas |
| Resultado | 4 casos executados, 3 aprovados, 1 aprovado com ressalvas, 0 reprovados, 0 bloqueados nos casos principais |
| Validações complementares bloqueadas | 2, ambas relacionadas ao módulo DAS |
| Automação | Não utilizada |
| Cypress | Não utilizado |
| Browser headless | Não utilizado |

Evidências coletadas:

- `TC-SMOKE-020-001-das.png`
- `TC-SMOKE-020-002-lembretes.png`
- `TC-SMOKE-020-003-logs-atividade.png`
- `TC-SMOKE-020-004-radar-reativacao.png`

## Observação

Os nomes existentes foram preservados para não quebrar referências históricas. Novas evidências podem usar nomes em PT-BR desde que mantenham o ID no início.

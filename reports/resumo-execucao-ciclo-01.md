# Resumo de Execução — Ciclo 01

## Objetivo do ciclo

Validar fluxos principais já disponíveis no Firmus em ambiente local, com foco em autenticação, dashboard, clientes, orçamentos, visão financeira, NFSe e responsividade básica.

## Escopo testado

Autenticação, rotas protegidas, dashboard, clientes, orçamentos, visão financeira, NFSe, responsividade básica e usabilidade básica.

## Ambiente

| Campo | Informação |
|---|---|
| Data | 2026-04-24 |
| Ambiente | Desenvolvimento local |
| URL | `http://localhost:3000` |
| Navegador | Google Chrome / Chromium-based |
| Sistema operacional | Ubuntu Linux |
| Viewports | Desktop e mobile-like |

## Resultado

| Status | Total |
|---|---:|
| Aprovado | 72 |
| Reprovado | 5 |
| Bloqueado | 0 |
| Não Aplicável | 1 |
| Não Executado | 0 |
| Total | 78 |

## Bugs encontrados

| ID | Módulo | Severidade | Prioridade |
|---|---|---|---|
| BUG-001 | Clientes | Média | Média |
| BUG-002 | Clientes | Média | Média |
| BUG-003 | Clientes | Alta | Alta |
| BUG-004 | Orçamentos | Média | Média |
| BUG-005 | Orçamentos | Média | Média |
| BUG-006 | Orçamentos | Média | Média |

## Decisão Go/No-Go

**No-Go** para liberação sem correções, principalmente por falhas de validação de dados em Clientes e Orçamentos, falha de exclusão de cliente e quebra responsiva em Orçamentos.

## Riscos conhecidos

- Dados incompletos de clientes podem comprometer comunicação e operação.
- Orçamentos inválidos podem afetar visão financeira e confiança comercial.
- Responsividade de orçamentos precisa de regressão após correção.

## Próximos passos

- Corrigir e retestar `BUG-001` a `BUG-006`.
- Executar ciclo 02 para os módulos ainda planejados.
- Coletar novas evidências apenas durante execução real.

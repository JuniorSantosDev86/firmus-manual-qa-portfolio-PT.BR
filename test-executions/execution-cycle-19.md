# Ciclo de Execução 19 — Execução Manual Consolidada 02 — Smoke Manual — Lote 01

## Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Tipo de documento | Execução manual real |
| Ciclo | 19 |
| Lote | 01 |
| Escopo | Smoke manual dos módulos Plano, Prontidão do MVP, Serviços e Cobranças |
| Responsável | Ademir dos Santos Junior |
| Ambiente | Local |
| Projeto executado | firmus-app |
| Status | Concluído |

## Registro da execução

A execução foi feita manualmente pelo usuário no navegador, a partir do projeto `firmus-app`, em ambiente local.

Durante este ciclo:

- nenhum arquivo versionado de `firmus-app` foi alterado;
- não foi usado Cypress;
- não foi usado Playwright;
- não foi usado Puppeteer;
- não foi usado browser headless;
- não foi usado CDP;
- não foram usados scripts automatizados;
- nenhum bug novo foi encontrado;
- `BUG-008` permanece disponível.

## Casos executados

| ID | Módulo | Rota esperada | Objetivo | Status | Evidência | Bug relacionado | Observações |
|---|---|---|---|---|---|---|---|
| TC-SMOKE-019-001 | Plano | /plan | Validar carregamento mínimo do módulo | Aprovado | evidences/screenshots/cycle-19/TC-SMOKE-019-001-plano.png | Não aplicável | Módulo carregou corretamente, conteúdo principal visível e sem erro crítico observado. |
| TC-SMOKE-019-002 | Prontidão do MVP | /mvp-readiness | Validar carregamento mínimo do módulo | Aprovado | evidences/screenshots/cycle-19/TC-SMOKE-019-002-prontidao-mvp.png | Não aplicável | Módulo carregou corretamente, conteúdo principal visível e sem erro crítico observado. |
| TC-SMOKE-019-003 | Serviços | /services | Validar carregamento mínimo do módulo | Aprovado | evidences/screenshots/cycle-19/TC-SMOKE-019-003-servicos.png | Não aplicável | Módulo carregou corretamente, conteúdo principal visível e sem erro crítico observado. |
| TC-SMOKE-019-004 | Cobranças | /charges | Validar carregamento mínimo do módulo | Aprovado | evidences/screenshots/cycle-19/TC-SMOKE-019-004-cobrancas.png | Não aplicável | Módulo carregou corretamente, conteúdo principal visível e sem erro crítico observado. |

## Evidências coletadas

- `evidences/screenshots/cycle-19/TC-SMOKE-019-001-plano.png`
- `evidences/screenshots/cycle-19/TC-SMOKE-019-002-prontidao-mvp.png`
- `evidences/screenshots/cycle-19/TC-SMOKE-019-003-servicos.png`
- `evidences/screenshots/cycle-19/TC-SMOKE-019-004-cobrancas.png`

## Resultado quantitativo

| Métrica | Quantidade |
|---|---:|
| Total de casos executados | 4 |
| Aprovados | 4 |
| Reprovados | 0 |
| Bloqueados | 0 |
| Bugs novos | 0 |

## Decisão

Aprovado para avançar ao Lote 02.

## Próximos passos

Iniciar Ciclo 20 com DAS, Lembretes, Logs de atividade e Radar de reativação.

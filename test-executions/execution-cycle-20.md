# Ciclo de Execução 20 — Execução Manual Consolidada 02 — Smoke Manual — Lote 02

## Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Tipo de documento | Execução manual real |
| Ciclo | 20 |
| Lote | 02 |
| Escopo | Smoke manual dos módulos DAS, Lembretes, Logs de atividade e Radar de reativação |
| Responsável | Ademir dos Santos Junior |
| Ambiente | Local |
| Projeto executado | firmus-app |
| Status | Concluído com ressalvas |

## Objetivo

Registrar a execução manual real do segundo lote de smoke dos módulos preparados, validando carregamento, navegação básica, ausência de erro crítico e coleta de evidência visual real.

## Registro da execução

A execução foi realizada manualmente pelo usuário no navegador, a partir do projeto `firmus-app`, em ambiente local.

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

## Limites da execução

Este ciclo foi apenas um smoke manual inicial, não uma execução detalhada completa dos casos de teste.

## Critério de smoke

Aprovado quando a rota carrega, o conteúdo principal aparece, não há tela branca, não há crash, não há erro crítico e há evidência visual real.

Aprovado com ressalvas quando o módulo principal carrega corretamente, mas alguma validação complementar depende de massa, integração ou cenário ainda indisponível.

Bloqueado quando o módulo ou validação não pode ser executado por limitação de ambiente, massa de dados ou dependência externa.

## Casos executados

| ID | Módulo | Rota esperada | Objetivo | Status | Evidência | Bug relacionado | Observações |
|---|---|---|---|---|---|---|---|
| TC-SMOKE-020-001 | DAS | /das | Validar carregamento mínimo do módulo | Aprovado com ressalvas | evidences/screenshots/cycle-20/TC-SMOKE-020-001-das.png | Não aplicável | Módulo carregou corretamente e sem erro crítico. Validações complementares de canal oficial e “Marcar como pago” ficaram bloqueadas/não executadas por ausência de competência DAS pendente/massa adequada/integração necessária. |
| TC-SMOKE-020-002 | Lembretes | /reminders | Validar carregamento mínimo do módulo | Aprovado | evidences/screenshots/cycle-20/TC-SMOKE-020-002-lembretes.png | Não aplicável | Módulo carregou corretamente, conteúdo principal visível e sem erro crítico observado. |
| TC-SMOKE-020-003 | Logs de atividade | /activity-logs | Validar carregamento mínimo do módulo | Aprovado | evidences/screenshots/cycle-20/TC-SMOKE-020-003-logs-atividade.png | Não aplicável | Módulo carregou corretamente, conteúdo principal visível e sem erro crítico observado. |
| TC-SMOKE-020-004 | Radar de reativação | /reactivation-radar | Validar carregamento mínimo do módulo | Aprovado | evidences/screenshots/cycle-20/TC-SMOKE-020-004-radar-reativacao.png | Não aplicável | Módulo carregou corretamente, conteúdo principal visível e sem erro crítico observado. |

## Validações complementares bloqueadas

| Módulo | Validação | Status | Motivo | Evidência |
|---|---|---|---|---|
| DAS | Verificar botão ou link para canal oficial quando disponível | Bloqueado | Não havia competência DAS pendente/massa adequada/integração necessária para validar este comportamento no ciclo atual. | Não aplicável |
| DAS | Verificar botão “Marcar como pago” quando há DAS pendente | Bloqueado | Não havia competência DAS pendente/massa adequada/integração necessária para validar este comportamento no ciclo atual. | Não aplicável |

Essas limitações não caracterizam bug neste ciclo.

## Evidências coletadas

Pasta: `evidences/screenshots/cycle-20/`

- `TC-SMOKE-020-001-das.png`
- `TC-SMOKE-020-002-lembretes.png`
- `TC-SMOKE-020-003-logs-atividade.png`
- `TC-SMOKE-020-004-radar-reativacao.png`

## Bugs encontrados

Nenhum bug novo foi encontrado neste lote.

`BUG-008` permanece disponível para o próximo bug real evidenciado.

## Resultado quantitativo

| Métrica | Quantidade |
|---|---:|
| Total de casos executados | 4 |
| Aprovados | 3 |
| Aprovados com ressalvas | 1 |
| Reprovados | 0 |
| Bloqueados nos casos principais | 0 |
| Validações complementares bloqueadas | 2 |
| Bugs novos | 0 |

## Decisão

Aprovado com ressalvas para avançar ao Lote 03.

## Riscos remanescentes

- Smoke não substitui execução detalhada.
- Fluxos internos dos módulos ainda precisam de validação futura.
- Validações complementares do DAS dependem de competência DAS pendente/massa adequada.
- Demais módulos ainda precisam de smoke.
- A cobertura deste ciclo valida disponibilidade básica.

## Próximos passos

- Iniciar Ciclo 21.
- Executar smoke manual de Modelos, Entrada assistida, Sugestões e Regras de automação.
- Coletar evidências em `evidences/screenshots/cycle-21/`.
- Revalidar futuramente as ações complementares do DAS quando houver competência DAS pendente/massa adequada.
- Abrir `BUG-008` somente se houver falha real evidenciada.

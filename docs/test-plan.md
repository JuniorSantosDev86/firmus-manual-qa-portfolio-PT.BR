# Plano de Testes — Firmus QA Manual

## Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Responsável | Ademir dos Santos Junior |
| Tipo | QA Manual |
| Status | Em andamento |
| Ambiente | Desenvolvimento local |

## Objetivo

Definir objetivo, escopo, fora de escopo, abordagem, critérios, riscos e entregáveis do processo de QA Manual aplicado ao Firmus.

## Escopo

Inclui validação manual de autenticação, dashboard, perfil da empresa, clientes, plano, prontidão do MVP, serviços, orçamentos, cobranças, DAS, NFSe, lembretes, logs de atividade, radar de reativação, modelos, entrada assistida, sugestões, regras de automação, resumo semanal, visão financeira, navegação, responsividade e segurança básica manual.

## Fora de escopo

Automação, testes de carga, estresse, exploração invasiva de segurança, validação fiscal legal, integração real com prefeitura ou provedor de NFSe, gateway de pagamento, revisão de código backend e auditoria especializada de acessibilidade.

## Ambiente

| Item | Descrição |
|---|---|
| Aplicação | Firmus |
| URL usada no ciclo 01 | `http://localhost:3000` |
| Navegador | Google Chrome ou Chromium-based |
| Sistema operacional | Ubuntu Linux |
| Dispositivo | Desktop/notebook e viewport mobile-like |
| Dados | Dados locais ou mockados visíveis na aplicação |

## Tipos de teste

- Smoke test
- Teste funcional manual
- Teste negativo e de validação
- Teste exploratório
- Teste responsivo
- Revisão básica de usabilidade
- Regressão manual após correções
- Segurança básica manual não invasiva
- BDD/Gherkin para desenho e comunicação de comportamento esperado

## Critérios de entrada

- Aplicação acessível localmente.
- Credenciais válidas disponíveis quando necessário.
- Módulos visíveis acessíveis pela navegação.
- Casos, checklists ou cenários preparados.
- Pasta de evidências disponível.

## Critérios de saída

- Escopo executado documentado.
- Bugs reproduzíveis registrados com evidência quando disponível.
- Resultados reais separados de cenários planejados.
- Relatório ou resumo de execução atualizado.
- Riscos residuais conhecidos documentados.

## Riscos

| Risco | Impacto | Mitigação |
|---|---|---|
| Ambiente local instável | Pode bloquear execução | Registrar bloqueio e reexecutar quando estável |
| Funcionalidade parcial ou em construção | Pode limitar validação | Documentar premissas e lacunas sem inventar resultado |
| Dados mockados | Pode limitar conclusão de negócio | Indicar limitação em relatórios |
| Mudanças de UI | Pode exigir revisão de casos | Manter documentação versionada |
| Módulos ainda não executados | Cobertura real incompleta | Manter status Planejado/Não Executado |

## Entregáveis

Plano, escopo, estratégia, cenários BDD, casos de teste, checklists, execução real, bug reports, evidências, matrizes de cobertura e risco, resumo de execução e relatório final.

## Papéis e responsabilidades

| Papel | Responsabilidade |
|---|---|
| Product Owner | Explicar regra de negócio e valor operacional |
| QA Pleno | Identificar cenários funcionais e negativos |
| QA Sênior | Avaliar risco, regressão e critérios de aceite |
| QA Lead | Padronizar estratégia, rastreabilidade e comunicação |
| Ademir dos Santos Junior | Documentar, executar e reportar no contexto do portfólio |

## Ferramentas

Navegador, DevTools, Markdown, Gherkin, GitHub, screenshots e registros manuais.

## Estratégia de evidência

Evidências devem ser salvas em `evidences/screenshots/` ou `evidences/videos/`, com nome vinculado ao ID do caso ou bug. Não devem ser criadas evidências fictícias.

# Estratégia de Testes — Firmus QA Manual

## Objetivo

Definir a abordagem de QA Manual para validar o Firmus com foco em risco, clareza de negócio, BDD/Gherkin, execução manual rastreável e comunicação profissional.

## Abordagem manual

A validação parte da perspectiva do usuário autenticado que precisa operar empresa, clientes, serviços, orçamentos, cobranças, obrigações fiscais simples, automações e visão financeira. Os testes priorizam fluxos críticos, validações de dados, estados vazios, navegação, refresh, responsividade e clareza das informações.

## Abordagem BDD

Os arquivos `.feature` descrevem comportamento esperado em português usando `Funcionalidade`, `Contexto`, `Cenário`, `Dado`, `Quando`, `Então`, `E` e `Mas`. Eles são documentação viva planejada e não substituem execução manual real.

## Priorização por risco

Alta prioridade para autenticação, rotas protegidas, dashboard, clientes, serviços, orçamentos, cobranças, NFSe, visão financeira e integridade de dados. Média prioridade para módulos auxiliares que afetam produtividade, como modelos, sugestões, lembretes e automações.

## Cobertura funcional

A cobertura planejada inclui todos os módulos visíveis na sidebar: principal, operação e inteligência. Cada módulo possui casos planejados e cenários BDD.

## Cobertura responsiva

Validar desktop, tablet quando aplicável e mobile-like viewport, com atenção a sidebar/drawer, cards, listas, tabelas, formulários, modais, textos longos e ausência de overflow horizontal.

## Cobertura negativa

Inclui campos vazios, formatos inválidos, valores monetários inválidos, datas inválidas, dados aleatórios, navegação inexistente, sessão encerrada e estados vazios.

## Cobertura de regressão

Após correções, reexecutar casos associados aos bugs `BUG-001` a `BUG-006` e fluxos adjacentes de clientes, orçamentos e responsividade.

## Cobertura de usabilidade

Avaliar hierarquia visual, clareza de labels, mensagens de erro, CTAs, estados vazios, ausência de placeholders e não duplicação de informações.

## Gestão de bugs

Cada bug deve ter ID único, título claro, módulo, ambiente, severidade, prioridade, passos reproduzíveis, resultado atual, resultado esperado, evidência quando disponível, impacto e critério de confirmação da correção.

## Evidências

Evidências reais são preservadas. Novas evidências só devem ser adicionadas após execução manual real.

## Limitações

Não há validação fiscal legal, automação, API, carga, exploração invasiva de segurança ou confirmação de integrações externas neste escopo.

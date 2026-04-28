# Relatório Final de QA Manual — Firmus

## Apresentação do projeto

Este portfólio documenta QA Manual aplicado ao Firmus, um copilot operacional para prestadores de serviços e pequenos negócios. O produto concentra fluxos de perfil da empresa, clientes, serviços, orçamentos, cobranças, obrigações fiscais simples, lembretes, logs, automações, sugestões e visão financeira.

## Papel do QA

Ademir dos Santos Junior atuou na análise do produto, planejamento, definição de escopo, escrita de casos, desenho BDD/Gherkin, execução manual do ciclo 01, reporte de bugs e organização de evidências.

## Estratégia aplicada

A estratégia combinou testes funcionais, negativos, responsivos, exploratórios, regressão planejada e segurança básica manual não invasiva. A priorização foi orientada por risco operacional e impacto no usuário.

## Cobertura funcional

Todos os módulos visíveis do Firmus possuem cobertura planejada em casos de teste e cenários BDD. O ciclo real 01 executou Autenticação, Dashboard, Clientes, Orçamentos, Visão Financeira e NFSe.

## Abordagem BDD/Gherkin

Os cenários `.feature` foram escritos em português para documentar comportamento esperado de forma legível por QA, produto e desenvolvimento. Eles permanecem como Planejado até execução manual futura.

## Execução manual

O ciclo 01 executou 78 casos: 72 aprovados, 5 reprovados, 0 bloqueados, 1 não aplicável e 0 não executados dentro do escopo daquele ciclo.

## Bugs encontrados

Foram preservados seis bugs reais: `BUG-001`, `BUG-002`, `BUG-003`, `BUG-004`, `BUG-005` e `BUG-006`, todos com screenshots vinculados.

## Evidências

As evidências existentes foram preservadas em `evidences/screenshots/` e documentadas em `evidences/README.md`.

## Aprendizados técnicos

O projeto demonstra separação entre planejamento e execução, escrita objetiva de bugs, uso de BDD como apoio de comunicação, rastreabilidade por IDs e leitura de risco por módulo.

## Limitações do ciclo

Não houve execução real dos módulos adicionados posteriormente à cobertura ampla. Não houve automação, API, testes de carga, validação fiscal legal, integração externa ou exploração invasiva de segurança.

## Conclusão

O repositório está organizado como material profissional de QA Manual em PT-BR, com cobertura planejada ampla e execução real preservada sem inventar resultados.

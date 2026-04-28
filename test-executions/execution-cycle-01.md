# Ciclo de Execução 01 — Firmus QA Manual

## Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Tipo de documento | Execução manual de testes |
| Ciclo | 01 |
| Executado por | Ademir dos Santos Junior |
| Status | Concluído com bugs abertos |

## Objetivo

Registrar a execução real do primeiro ciclo manual de QA do Firmus, preservando resultados observados para Autenticação, Dashboard, Clientes, Orçamentos, Visão Financeira e NFSe.

## Escopo executado

- Autenticação
- Rotas protegidas
- Dashboard
- Clientes
- Orçamentos
- Visão Financeira
- NFSe
- Responsividade básica
- Usabilidade básica

## Fora de escopo do ciclo 01

Módulos adicionados posteriormente à cobertura planejada, automação, API, carga, estresse, segurança profunda, validação fiscal real, banco de dados e revisão de código.

## Ambiente

| Campo | Informação |
|---|---|
| Data de execução | 2026-04-24 |
| Ambiente | Desenvolvimento local |
| URL | `http://localhost:3000` |
| Navegador | Google Chrome / Chromium-based |
| Sistema operacional | Ubuntu Linux |
| Dispositivo | Desktop / Notebook |
| Viewports | Desktop e mobile-like |

## Legenda

| Status | Significado |
|---|---|
| Aprovado | Resultado atual igual ao esperado |
| Reprovado | Resultado atual diferente do esperado |
| Bloqueado | Não executado por bloqueio |
| Não Aplicável | Não se aplica à versão atual |
| Não Executado | Ainda não executado |

## Resumo

| Status | Total |
|---|---:|
| Aprovado | 72 |
| Reprovado | 5 |
| Bloqueado | 0 |
| Não Aplicável | 1 |
| Não Executado | 0 |
| Total | 78 |

## Resumo por módulo

| Módulo | Total | Aprovado | Reprovado | Bloqueado | Não Aplicável | Não Executado |
|---|---:|---:|---:|---:|---:|---:|
| Autenticação | 12 | 12 | 0 | 0 | 0 | 0 |
| Dashboard | 12 | 12 | 0 | 0 | 0 | 0 |
| Clientes | 12 | 10 | 2 | 0 | 0 | 0 |
| Orçamentos | 14 | 11 | 3 | 0 | 0 | 0 |
| Visão Financeira | 14 | 13 | 0 | 0 | 1 | 0 |
| NFSe | 14 | 14 | 0 | 0 | 0 | 0 |
| Total | 78 | 72 | 5 | 0 | 1 | 0 |

## Bugs encontrados

| Bug | Módulo | Status |
|---|---|---|
| BUG-001 | Clientes | Aberto |
| BUG-002 | Clientes | Aberto |
| BUG-003 | Clientes | Aberto |
| BUG-004 | Orçamentos | Aberto |
| BUG-005 | Orçamentos | Aberto |
| BUG-006 | Orçamentos | Aberto |

## Observação importante

Este arquivo registra execução real. Os cenários BDD e casos de teste adicionados posteriormente para outros módulos permanecem como Planejado/Não Executado até novo ciclo manual.

## Detalhamento da execução real

Os itens abaixo preservam os resultados reais do ciclo 01. Eles não incluem os módulos adicionados posteriormente como cobertura planejada.


### Autenticação

| ID | Caso de Teste | Status | Evidência | Bug |
|---|---|---|---|---|
| TC-AUTH-001 | Login com credenciais válidas | Aprovado | evidences/screenshots/TC-AUTH-001-login-success.png | - |
| TC-AUTH-002 | Login com e-mail inválido | Aprovado | - | - |
| TC-AUTH-003 | Login com senha inválida | Aprovado | - | - |
| TC-AUTH-004 | Login com campo de e-mail vazio | Aprovado | - | - |
| TC-AUTH-005 | Login com campo de senha vazio | Aprovado | - | - |
| TC-AUTH-006 | Login com ambos os campos vazios | Aprovado | - | - |
| TC-AUTH-007 | Acesso a rota protegida sem autenticação | Aprovado | - | - |
| TC-AUTH-008 | Acesso a rota protegida após login | Aprovado | - | - |
| TC-AUTH-009 | Logout de sessão autenticada | Aprovado | - | - |
| TC-AUTH-010 | Acesso a rota protegida após logout | Aprovado | - | - |
| TC-AUTH-011 | Refresh com usuário autenticado | Aprovado | - | - |
| TC-AUTH-012 | Validação visual e de usabilidade da tela de login | Aprovado | - | - |

### Dashboard

| ID | Caso de Teste | Status | Evidência | Bug |
|---|---|---|---|---|
| TC-DASH-001 | Dashboard carrega após login | Aprovado | - | - |
| TC-DASH-002 | Seções principais visíveis | Aprovado | - | - |
| TC-DASH-003 | Cards de resumo operacional exibidos corretamente | Aprovado | - | - |
| TC-DASH-004 | Próximas ações visíveis e compreensíveis | Aprovado | - | - |
| TC-DASH-005 | Atividades recentes visíveis e legíveis | Aprovado | - | - |
| TC-DASH-006 | Links e atalhos da dashboard funcionam | Aprovado | - | - |
| TC-DASH-007 | Dashboard sem informação quebrada ou duplicada | Aprovado | - | - |
| TC-DASH-008 | Estados vazios claros quando aplicável | Aprovado | - | - |
| TC-DASH-009 | Dashboard permanece utilizável após refresh | Aprovado | - | - |
| TC-DASH-010 | Dashboard legível em desktop | Aprovado | - | - |
| TC-DASH-011 | Dashboard utilizável em mobile-like | Aprovado | - | - |
| TC-DASH-012 | Hierarquia visual clara | Aprovado | - | - |

### Clientes

| ID | Caso de Teste | Status | Evidência | Bug |
|---|---|---|---|---|
| TC-CLI-001 | Página de clientes carrega | Aprovado | - | - |
| TC-CLI-002 | Lista de clientes visível com registros | Aprovado | - | - |
| TC-CLI-003 | Estado vazio de clientes claro | Aprovado | - | - |
| TC-CLI-004 | Ação de criar cliente visível | Aprovado | - | - |
| TC-CLI-005 | Criar cliente com dados válidos | Aprovado | - | - |
| TC-CLI-006 | Criar cliente com campos obrigatórios vazios | Reprovado | evidences/screenshots/BUG-001-client-created-with-only-name.png | BUG-001 |
| TC-CLI-007 | Criar cliente com contato inválido | Reprovado | evidences/screenshots/BUG-002-client-invalid-contact-accepted.png | BUG-002 |
| TC-CLI-008 | Detalhes do cliente visíveis | Aprovado | - | - |
| TC-CLI-009 | Navegação relacionada a clientes funciona | Aprovado | - | - |
| TC-CLI-010 | Página sem placeholder ou informação quebrada | Aprovado | - | - |
| TC-CLI-011 | Clientes permanece utilizável após refresh | Aprovado | - | - |
| TC-CLI-012 | Clientes utilizável em mobile-like | Aprovado | - | - |

### Orçamentos

| ID | Caso de Teste | Status | Evidência | Bug |
|---|---|---|---|---|
| TC-QUO-001 | Página de orçamentos carrega | Aprovado | - | - |
| TC-QUO-002 | Lista de orçamentos visível com registros | Aprovado | - | - |
| TC-QUO-003 | Estado vazio de orçamentos claro | Aprovado | - | - |
| TC-QUO-004 | Ação de criar orçamento visível | Aprovado | - | - |
| TC-QUO-005 | Criar orçamento com dados válidos | Aprovado | - | - |
| TC-QUO-006 | Criar orçamento com campos vazios | Reprovado | evidences/screenshots/BUG-004-quote-created-with-empty-or-invalid-fields.png | BUG-004 |
| TC-QUO-007 | Criar orçamento com valor monetário inválido | Reprovado | evidences/screenshots/BUG-005-quote-value-accepts-text.png | BUG-005 |
| TC-QUO-008 | Status do orçamento visível | Aprovado | - | - |
| TC-QUO-009 | Detalhes do orçamento visíveis | Aprovado | - | - |
| TC-QUO-010 | Acesso público ao orçamento quando disponível | Aprovado | - | - |
| TC-QUO-011 | Navegação relacionada a orçamento funciona | Aprovado | - | - |
| TC-QUO-012 | Página sem placeholder ou informação quebrada | Aprovado | - | - |
| TC-QUO-013 | Orçamentos permanece utilizável após refresh | Aprovado | - | - |
| TC-QUO-014 | Orçamentos utilizável em mobile-like | Reprovado | evidences/screenshots/BUG-006-quote-mobile-layout-overflow.png | BUG-006 |

### Visão Financeira

| ID | Caso de Teste | Status | Evidência | Bug |
|---|---|---|---|---|
| TC-FIN-001 | Página financeira carrega | Aprovado | - | - |
| TC-FIN-002 | Cards financeiros visíveis | Aprovado | - | - |
| TC-FIN-003 | Valores monetários formatados | Aprovado | - | - |
| TC-FIN-004 | Registros financeiros visíveis quando existem | Aprovado | - | - |
| TC-FIN-005 | Estado vazio financeiro claro | Aprovado | - | - |
| TC-FIN-006 | Indicadores financeiros claros | Aprovado | - | - |
| TC-FIN-007 | Sem valores negativos ou inconsistentes inesperados | Aprovado | - | - |
| TC-FIN-008 | Filtros financeiros funcionam quando disponíveis | Não Aplicável | - | - |
| TC-FIN-009 | Navegação financeira funciona | Aprovado | - | - |
| TC-FIN-010 | Página sem placeholders ou informação quebrada | Aprovado | - | - |
| TC-FIN-011 | Visão financeira após refresh | Aprovado | - | - |
| TC-FIN-012 | Visão financeira legível em desktop | Aprovado | - | - |
| TC-FIN-013 | Visão financeira utilizável em mobile-like | Aprovado | - | - |
| TC-FIN-014 | Informação financeira compreensível | Aprovado | - | - |

### NFSe

| ID | Caso de Teste | Status | Evidência | Bug |
|---|---|---|---|---|
| TC-NFSE-001 | Página de NFSe carrega | Aprovado | - | - |
| TC-NFSE-002 | Registros de NFSe visíveis quando existem | Aprovado | - | - |
| TC-NFSE-003 | Estado vazio de NFSe claro | Aprovado | - | - |
| TC-NFSE-004 | Status fiscal visível | Aprovado | - | - |
| TC-NFSE-005 | Referência do provedor exibida quando disponível | Aprovado | - | - |
| TC-NFSE-006 | Número do documento exibido quando disponível | Aprovado | - | - |
| TC-NFSE-007 | Data de emissão exibida quando disponível | Aprovado | - | - |
| TC-NFSE-008 | Informações não duplicadas no mesmo card | Aprovado | - | - |
| TC-NFSE-009 | Página sem placeholder ou informação quebrada | Aprovado | - | - |
| TC-NFSE-010 | Navegação relacionada a NFSe funciona | Aprovado | - | - |
| TC-NFSE-011 | NFSe permanece utilizável após refresh | Aprovado | - | - |
| TC-NFSE-012 | NFSe legível em desktop | Aprovado | - | - |
| TC-NFSE-013 | NFSe utilizável em mobile-like | Aprovado | - | - |
| TC-NFSE-014 | Informação fiscal compreensível | Aprovado | - | - |

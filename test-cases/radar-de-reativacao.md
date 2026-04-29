# Casos de Teste — Radar de reativação

## 1. Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Módulo | Radar de reativação |
| Responsável | Ademir dos Santos Junior |
| Última atualização | 2026-04-29 |
| Status geral | Planejado |

## 2. Objetivo

Detalhar a cobertura manual planejada do módulo Radar de reativação para futura execução em navegador, com base em inspeção estática do código do projeto `firmus-app`.

## 3. Base da análise

- Inspeção estática do projeto `firmus-app`.
- Leitura de rotas, componentes, textos, estados e regras do módulo Radar de reativação.
- Revisão de serviços e critérios de elegibilidade do radar.
- Leitura dos testes Cypress como referência de comportamento esperado.
- Execução manual em navegador não realizada neste ciclo.

## 4. Regras e premissas do módulo

- A rota do módulo é `/reactivation-radar`.
- O menu lateral expõe o label `Radar de reativação`.
- O módulo exibe oportunidades por tipo `Win-back` e `Follow-up`.
- O radar usa critérios de inatividade baseados em tempo e sinais comerciais.
- O radar evita oportunidades quando há lembrete ativo equivalente.
- O CTA operacional principal é criar lembrete de reativação.
- A ordenação é determinística por prioridade, inatividade e atividade recente.

## 5. Fora de escopo

- Execução manual real no navegador neste ciclo.
- Testes automatizados.
- Testes de API isolados.
- Validação em banco de dados externo.
- Testes de carga e segurança invasiva.

## 6. Massa de dados ou condições sugeridas

- Cliente com cobrança paga antiga (candidato a win-back).
- Cliente com orçamento antigo sem progresso (candidato a follow-up parado).
- Cliente recente sem idade mínima para radar (não elegível).
- Cliente com lembrete pendente equivalente (deve ser excluído do radar).
- Cenário sem candidatos para validar estado vazio.

## 7. Casos de teste detalhados

| ID | Módulo | Tipo | Prioridade | Severidade se falhar | Status de design | Status de execução | Base da definição | Pré-condições | Dados de teste ou condição de teste | Passos detalhados | Resultado esperado | Resultado atual | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| TC-RADAR-001 | Radar de reativação | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Radar de reativação. | Aplicação acessível, usuário autenticado e módulo disponível no menu. | Rota `/reactivation-radar` disponível. | 1. Autenticar. 2. Acessar `/reactivation-radar`. 3. Validar carregamento da página. | Página do radar carregada com sucesso, sem erro de navegação. | Não executado neste ciclo. | Não coletada neste ciclo. | Validar em execução manual futura. |
| TC-RADAR-002 | Radar de reativação | Funcional | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Radar de reativação. | Página do radar acessível. | Conteúdo de cabeçalho do módulo disponível. | 1. Abrir o radar. 2. Verificar título e descrição do módulo. | Identificação visual do módulo exibida com título e texto operacional coerentes. | Não executado neste ciclo. | Não coletada neste ciclo. | Inclui validação de clareza textual. |
| TC-RADAR-003 | Radar de reativação | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Radar de reativação. | Existem candidatos elegíveis no ambiente. | Cliente com inatividade elegível para radar. | 1. Acessar o radar com massa elegível. 2. Observar listagem apresentada. | Listagem de oportunidades exibida com itens de reativação. | Não executado neste ciclo. | Não coletada neste ciclo. | Validar quantidade e consistência dos itens. |
| TC-RADAR-004 | Radar de reativação | Funcional | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Radar de reativação. | Não há candidatos elegíveis. | Base sem oportunidades de reativação. | 1. Acessar radar sem candidatos. 2. Verificar retorno da tela. | Estado vazio exibido com mensagem "Nenhuma oportunidade de reativação no momento.". | Não executado neste ciclo. | Não coletada neste ciclo. | Não deve exibir card residual. |
| TC-RADAR-005 | Radar de reativação | Funcional | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Radar de reativação. | Há ao menos um candidato no radar. | Oportunidade com `clientName` válido. | 1. Abrir radar com listagem. 2. Inspecionar card de oportunidade. | Nome do cliente relacionado exibido de forma clara no item. | Não executado neste ciclo. | Não coletada neste ciclo. | Confirmar associação correta cliente-oportunidade. |
| TC-RADAR-006 | Radar de reativação | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Radar de reativação. | Há candidatos no radar. | Candidatos de tipos distintos quando possível. | 1. Abrir listagem do radar. 2. Verificar campo "Motivo" e contexto da oportunidade. | Critério de inatividade/reativação exibido no card conforme regra aplicável. | Não executado neste ciclo. | Não coletada neste ciclo. | Validar aderência ao tipo de oportunidade exibido. |
| TC-RADAR-007 | Radar de reativação | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Radar de reativação. | Há candidatos no radar. | Itens com `lastActivityAt` disponível. | 1. Abrir card no radar. 2. Verificar campo "Última atividade relevante". | Data relevante exibida em formato compreensível ao usuário. | Não executado neste ciclo. | Não coletada neste ciclo. | Validar consistência com histórico da entidade. |
| TC-RADAR-008 | Radar de reativação | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Radar de reativação. | Há candidatos do tipo win-back e/ou follow-up. | Tipos distintos de oportunidade e inatividade mensurada. | 1. Abrir radar. 2. Verificar tipo da oportunidade e dias de inatividade. | Prioridade/tipo operacional é identificado e contexto de risco é compreensível. | Não executado neste ciclo. | Não coletada neste ciclo. | O módulo não expõe score numérico explícito. |
| TC-RADAR-009 | Radar de reativação | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Radar de reativação. | Há candidatos no radar. | Campo de ação sugerida disponível no item. | 1. Abrir radar. 2. Verificar texto do botão de ação sugerida. | Sugestão de próxima ação exibida como "Criar lembrete de reativação". | Não executado neste ciclo. | Não coletada neste ciclo. | Confirmar consistência entre itens. |
| TC-RADAR-010 | Radar de reativação | Navegação | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Radar de reativação. | Existe item na listagem com `clientId` válido. | CTA "Abrir cliente" disponível no card. | 1. Abrir radar. 2. Acionar CTA "Abrir cliente" em um item. | Redirecionamento para detalhe do cliente relacionado (`/clients/{clientId}`). | Não executado neste ciclo. | Não coletada neste ciclo. | Validar rota e contexto do cliente aberto. |
| TC-RADAR-011 | Radar de reativação | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Radar de reativação. | Existe item elegível para criação de lembrete. | Sem lembrete equivalente pendente para o cliente. | 1. Abrir radar. 2. Acionar "Criar lembrete de reativação". 3. Observar retorno na tela. | CTA cria lembrete e apresenta feedback de sucesso; item pode ser reavaliado no radar. | Não executado neste ciclo. | Não coletada neste ciclo. | Confirmar reflexo no módulo Lembretes em ciclo real. |
| TC-RADAR-012 | Radar de reativação | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Radar de reativação. | Item do radar possui referência comercial. | Candidato com vínculo de orçamento/cobrança quando aplicável. | 1. Abrir radar. 2. Verificar se contexto comercial do item orienta ação de orçamento/cobrança futura. | A oportunidade comunica claramente ação comercial equivalente, mesmo quando CTA direto de orçamento/cobrança não estiver presente. | Não executado neste ciclo. | Não coletada neste ciclo. | Módulo atual prioriza CTA de lembrete. |
| TC-RADAR-013 | Radar de reativação | Integração funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Radar de reativação. | Dados de clientes, orçamentos, cobranças e lembretes existentes. | Cenários com e sem histórico comercial. | 1. Preparar massa com combinações de histórico. 2. Acessar radar. 3. Verificar elegibilidade gerada. | Oportunidades refletem corretamente a relação com dados de clientes, orçamentos, cobranças e lembretes. | Não executado neste ciclo. | Não coletada neste ciclo. | Validar sincronismo funcional em runtime. |
| TC-RADAR-014 | Radar de reativação | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Radar de reativação. | Existem múltiplos candidatos. | Itens de tipos e tempos de inatividade diferentes. | 1. Abrir radar com massa variada. 2. Verificar ordem dos cards. | Ordenação segue prioridade por tipo e maior inatividade, com comportamento determinístico. | Não executado neste ciclo. | Não coletada neste ciclo. | Considerar desempate por atividade e nome. |
| TC-RADAR-015 | Radar de reativação | Funcional | Média | Baixa | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Radar de reativação. | Existem oportunidades de múltiplos tipos. | Filtros `Todos`, `Win-back` e `Follow-up` disponíveis. | 1. Abrir radar. 2. Aplicar cada filtro. 3. Comparar itens visíveis. | Filtros exibem subconjuntos corretos sem inconsistência de estado. | Não executado neste ciclo. | Não coletada neste ciclo. | Validar persistência do filtro durante uso da tela. |
| TC-RADAR-016 | Radar de reativação | Negativo / Integridade | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Radar de reativação. | Há cliente elegível com lembrete ativo equivalente. | Massa inclui lembrete pendente equivalente. | 1. Preparar cenário com lembrete ativo equivalente. 2. Acessar radar. | Oportunidade duplicada indevida não deve ser exibida para o mesmo contexto. | Não executado neste ciclo. | Não coletada neste ciclo. | Regra crítica de redução de ruído operacional. |
| TC-RADAR-017 | Radar de reativação | Robustez | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Radar de reativação. | Radar acessível com dados carregáveis. | Página recarregada sem alteração artificial de sessão. | 1. Abrir radar. 2. Executar refresh. 3. Revalidar conteúdo. | Módulo permanece utilizável após refresh com recomputação consistente. | Não executado neste ciclo. | Não coletada neste ciclo. | Confirmar estabilidade de mensagens e ações. |
| TC-RADAR-018 | Radar de reativação | Navegação | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Radar de reativação. | Dashboard e Radar disponíveis no menu. | Navegação principal habilitada. | 1. Acessar Dashboard. 2. Ir para Radar. 3. Retornar ao Dashboard. 4. Voltar ao Radar. | Navegação entre módulos ocorre sem perda de usabilidade do radar. | Não executado neste ciclo. | Não coletada neste ciclo. | Validar contexto de rota e carregamento. |
| TC-RADAR-019 | Radar de reativação | Responsivo | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Radar de reativação. | Execução manual futura com viewport desktop. | Viewport desktop definido no plano da execução real. | 1. Abrir radar em desktop. 2. Revisar filtros, cards e CTAs. | Layout desktop permanece legível, alinhado e acionável. | Não executado neste ciclo. | Não coletada neste ciclo. | Validar clipping e alinhamento em runtime. |
| TC-RADAR-020 | Radar de reativação | Responsivo | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Radar de reativação. | Execução manual futura com viewport mobile-like. | Viewport mobile-like definido no plano da execução real. | 1. Abrir radar em mobile-like. 2. Revisar filtros, cards e CTAs. | Layout mobile-like permanece legível e utilizável, sem sobreposição indevida. | Não executado neste ciclo. | Não coletada neste ciclo. | Validar ergonomia de toque em runtime. |
| TC-RADAR-021 | Radar de reativação | Qualidade de conteúdo | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Radar de reativação. | Módulo renderizado com e sem candidatos. | Mensagens de estado e campos dos cards exibidos. | 1. Abrir radar em cenários com e sem dados. 2. Verificar textos apresentados. | Não devem aparecer placeholders, dados técnicos expostos ou mensagens confusas ao usuário final. | Não executado neste ciclo. | Não coletada neste ciclo. | Confirmar qualidade textual em runtime. |
| TC-RADAR-022 | Radar de reativação | Usabilidade funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Radar de reativação. | Módulo acessível com oportunidades elegíveis. | Cenário com win-back e follow-up disponível. | 1. Abrir radar. 2. Ler informações de tipo, motivo, inatividade e ação. | O módulo comunica valor operacional de reativação, facilitando decisão de próximo passo. | Não executado neste ciclo. | Não coletada neste ciclo. | Validar percepção em execução manual real. |

## 8. Checklist de pré-execução manual

- [ ] Confirmar aplicação acessível.
- [ ] Confirmar usuário autenticado.
- [ ] Confirmar rota de Radar de reativação disponível.
- [ ] Confirmar massa de dados inicial.
- [ ] Confirmar se há oportunidades existentes ou estado vazio.
- [ ] Confirmar clientes disponíveis para reativação.
- [ ] Confirmar dados de última atividade, orçamento, cobrança ou contato.
- [ ] Confirmar se existem CTAs de ação.
- [ ] Confirmar se filtros/ordenação existem.
- [ ] Confirmar viewports que serão usadas.
- [ ] Confirmar pasta de evidências.
- [ ] Confirmar próximo número de bug disponível.
- [ ] Confirmar padrão de nomenclatura das screenshots.
- [ ] Confirmar que ciclos anteriores não serão alterados.

## 9. Plano de evidências para execução futura

Estes arquivos são apenas nomes sugeridos para evidências futuras. Nenhuma evidência visual foi coletada neste ciclo.

- `TC-RADAR-001-radar-carregamento.png`
- `TC-RADAR-004-radar-estado-vazio.png`
- `TC-RADAR-005-radar-cliente-relacionado.png`
- `TC-RADAR-006-radar-criterio-inatividade.png`
- `TC-RADAR-009-radar-sugestao-proxima-acao.png`
- `TC-RADAR-010-radar-abrir-cliente.png`
- `TC-RADAR-011-radar-criar-lembrete.png`
- `TC-RADAR-016-radar-sem-duplicacao.png`
- `TC-RADAR-019-radar-desktop.png`
- `TC-RADAR-020-radar-mobile-like.png`
- `BUG-008-radar-[descricao-curta].png`, se bug for encontrado no futuro.

## 10. Critérios de aceite do módulo

- Cobertura planejada de TC-RADAR-001 a TC-RADAR-022 concluída no ciclo de preparação.
- Cenários BDD do radar atualizados e coerentes com o código analisado.
- Checklist de pré-execução e plano de evidências prontos para execução real posterior.
- Nenhuma afirmação de validação visual real sem execução manual em navegador.

## 11. Observação sobre execução

Este documento representa preparação de testes por análise estática. A validação funcional real em UI, a coleta de evidências e eventual abertura de bugs funcionais devem ocorrer em ciclo futuro de execução manual.

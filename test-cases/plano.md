# Casos de Teste — Plano

## 1. Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Módulo | Plano |
| Tipo de documento | Casos de teste manuais |
| Responsável | Ademir dos Santos Junior |
| Status geral | Planejado |

## 2. Objetivo

Definir casos de teste manuais detalhados para o módulo Plano com base em inspeção estática do projeto `firmus-app`, preparando a execução funcional futura em navegador.

## 3. Base da análise

- Inspeção estática do projeto `firmus-app`.
- Leitura de rota, componentes, serviços e textos do módulo Plano.
- Sem execução manual em navegador neste ciclo.
- Sem coleta de screenshots neste ciclo.

## 4. Regras e premissas do módulo

- Rota principal do módulo: `/plan`.
- Identificação do menu: `Plano`.
- Título da página: `Plano e limites`.
- Tiers mapeados: `Free`, `Plus`, `Pro`.
- Recursos mapeados por entitlement: `NFSe`, `Acompanhamento de DAS`, `Regras de automação`.
- Limite quantitativo atual mapeado: `Modelos`.
- Estado bloqueado premium em módulos protegidos exibe CTA `Abrir plano e limites` com destino para `/plan`.

## 5. Fora de escopo

- Execução manual via navegador neste ciclo.
- Testes automatizados.
- Testes de API.
- Validação direta em banco de dados.
- Testes de carga.
- Testes invasivos de segurança.
- Compra real ou troca real de plano com billing externo.

## 6. Massa de dados ou condições sugeridas

- Usuário autenticado.
- Ambiente local com aplicação acessível para ciclo futuro de execução.
- Cenários com plano `free`, `plus` e `pro`.
- Condição com limite de modelos atingido para validar mensagem de bloqueio por limite.
- Viewports recomendadas para execução futura: desktop 1366x900 e mobile-like 390x844.

## 7. Casos de teste detalhados

| ID | Módulo | Tipo | Prioridade | Severidade se falhar | Status de design | Status de execução | Base da definição | Pré-condições | Dados de teste ou condição de teste | Passos detalhados | Resultado esperado | Resultado atual | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| TC-PLAN-001 | Plano | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Plano. | Usuário autenticado. | Rota `/plan` disponível. | 1. Acessar a aplicação autenticada. 2. Navegar para `Plano`. 3. Confirmar carregamento da rota `/plan`. | A página deve carregar com título `Plano e limites` e conteúdo principal do módulo. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-PLAN-002 | Plano | Funcional | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Plano. | Usuário autenticado no módulo Plano. | Header do módulo disponível. | 1. Abrir `/plan`. 2. Verificar título e descrição da página. | O módulo deve exibir identificação visual e textual clara de `Plano e limites`. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-PLAN-003 | Plano | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Plano. | Usuário autenticado no módulo Plano. | Tiers mapeados: Free/Plus/Pro. | 1. Abrir `/plan`. 2. Validar bloco `Plano atual`. 3. Conferir botões de tiers. | Deve exibir plano atual e opções de tier `Free`, `Plus`, `Pro`. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-PLAN-004 | Plano | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Plano. | Usuário autenticado no módulo Plano. | Seção `Recursos liberados` carregada. | 1. Abrir `/plan`. 2. Verificar seção `Recursos liberados`. | Benefícios/recursos liberados devem ser exibidos com linguagem clara em PT-BR. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-PLAN-005 | Plano | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Plano. | Usuário autenticado no módulo Plano. | Seção `Limites do plano` carregada. | 1. Abrir `/plan`. 2. Verificar `Uso atual` e `Limite` dos modelos. | Limites devem ser compreensíveis e indicar `Sem limite` quando aplicável. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-PLAN-006 | Plano | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Plano. | Usuário autenticado no módulo Plano. | Condição com recurso premium não liberado. | 1. Abrir `/plan` com plano restritivo. 2. Verificar `Recursos bloqueados`. | Recursos indisponíveis devem exibir motivo de liberação mínima por plano. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-PLAN-007 | Plano | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Plano. | Usuário autenticado em módulo com bloqueio premium. | Estado bloqueado premium exibido. | 1. Acessar um módulo premium bloqueado. 2. Localizar CTA equivalente. | Deve exibir CTA `Abrir plano e limites` quando bloqueio premium ocorrer. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-PLAN-008 | Plano | Navegação | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Plano. | Estado bloqueado com CTA visível. | CTA `Abrir plano e limites` disponível. | 1. Acionar CTA `Abrir plano e limites`. 2. Validar rota de destino. | O CTA deve direcionar para `/plan` sem erro técnico. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-PLAN-009 | Plano | Negativo/Resiliência | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Plano. | Usuário autenticado. | Simular indisponibilidade/estado parcial de dados na execução futura. | 1. Acessar `/plan` em condição de carregamento ou indisponibilidade parcial. 2. Observar estabilidade da tela. | O módulo deve exibir fallback de carregamento e não quebrar a experiência. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-PLAN-010 | Plano | Qualidade de Conteúdo | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Plano. | Usuário autenticado no módulo Plano. | Conteúdo completo da página visível. | 1. Acessar `/plan`. 2. Revisar textos dos cards e painéis. | Não deve exibir placeholders, textos técnicos quebrados ou mensagens confusas. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-PLAN-011 | Plano | Navegação | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Plano. | Usuário autenticado. | Dashboard e Plano acessíveis. | 1. Abrir `/plan`. 2. Ir para Dashboard. 3. Retornar para Plano. | A navegação entre Dashboard e Plano deve manter estabilidade do módulo. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-PLAN-012 | Plano | Resiliência | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Plano. | Usuário autenticado em `/plan`. | Plano previamente selecionado. | 1. Abrir `/plan`. 2. Executar refresh. 3. Verificar consistência. | O módulo deve continuar utilizável após refresh e manter consistência de estado local. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-PLAN-013 | Plano | Responsivo | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Plano. | Usuário autenticado em `/plan`. | Viewport desktop 1366x900. | 1. Abrir `/plan` em desktop. 2. Verificar legibilidade/alinhamento dos painéis. | O layout desktop deve manter leitura e operação dos blocos de plano/recursos/limites. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-PLAN-014 | Plano | Responsivo | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Plano. | Usuário autenticado em `/plan`. | Viewport mobile-like 390x844. | 1. Abrir `/plan` em mobile-like. 2. Verificar legibilidade e ausência de quebra impeditiva. | O layout mobile-like deve permanecer legível e operável. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-PLAN-015 | Plano | Usabilidade/Conteúdo | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Plano. | Usuário autenticado no módulo Plano. | Conteúdo integral da página carregado. | 1. Acessar `/plan`. 2. Revisar se plano, benefícios e limitações sustentam decisão do usuário. | O módulo deve comunicar claramente valor, benefícios e limitações do plano atual. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |

## 8. Critérios de aceite do módulo

- Rota `/plan` acessível e estável.
- Identificação do módulo clara em título e descrição.
- Plano atual e tiers visíveis e compreensíveis.
- Recursos liberados e bloqueados diferenciados com mensagens claras em PT-BR.
- Limites quantitativos visíveis com comportamento de bloqueio compreensível.
- Navegação, refresh e usabilidade preservados.
- Comportamento responsivo adequado em desktop e mobile-like.

## 9. Observação sobre execução

Todos os casos deste documento permanecem com `Status de design: Planejado` e `Status de execução: Não Executado`, pois este ciclo foi de análise estática/documental do módulo Plano.

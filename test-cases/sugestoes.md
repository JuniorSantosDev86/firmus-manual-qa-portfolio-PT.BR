# Casos de Teste — Sugestões

## 1. Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Módulo | Sugestões |
| Tipo | Planejamento de testes manuais |
| Responsável | Ademir dos Santos Junior |
| Status geral | Planejado |

## 2. Objetivo

Preparar cobertura de testes manuais do módulo Sugestões com base em inspeção estática do projeto `firmus-app`.

## 3. Base da análise

Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Sugestões.

## 4. Regras e premissas do módulo

- Label de navegação: "Sugestões".
- Rota identificada: `/assisted-charge-suggestions`.
- Escopo atual observado: sugestões operacionais de cobrança.
- Estado aberto é calculado por regras de dados e status (`open`, `dismissed`, `accepted`).
- Ação sugerida principal observada: criação de cobrança com confirmação explícita.

## 5. Fora de escopo

- Execução manual real em navegador neste ciclo.
- Coleta de evidências visuais neste ciclo.
- Testes de API, carga e segurança invasiva.

## 6. Massa de dados ou condições sugeridas

- Clientes, cobranças, orçamentos e lembretes com combinações que gerem sugestão.
- Cenário sem dados para estado vazio.
- Cenário com sugestão dispensada previamente para validar persistência.
- Cenário com múltiplas sugestões para validar ordenação e ausência de duplicação.

## 7. Casos de teste detalhados

| ID | Módulo | Tipo | Prioridade | Severidade se falhar | Status de design | Status de execução | Base da definição | Pré-condições | Dados de teste ou condição de teste | Passos detalhados | Resultado esperado | Resultado atual | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| TC-SUG-001 | Sugestões | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Sugestões. | Usuário autenticado. | Rota de Sugestões disponível. | 1. Acessar a rota do módulo. 2. Validar carregamento inicial. | Página de Sugestões carrega com estrutura principal. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-SUG-002 | Sugestões | Funcional | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Sugestões. | Módulo aberto. | Cabeçalho da tela. | 1. Visualizar topo da página. | Identificação visual do módulo exibida de forma clara. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-SUG-003 | Sugestões | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Sugestões. | Dados elegíveis a sugestões abertas. | Base com sugestões abertas. | 1. Abrir módulo com dados elegíveis. | Listagem de sugestões exibida com cards. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-SUG-004 | Sugestões | Funcional | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Sugestões. | Sem dados elegíveis. | Base sem sugestões. | 1. Abrir módulo sem dados elegíveis. | Estado vazio exibido com mensagem clara. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-SUG-005 | Sugestões | Funcional | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Sugestões. | Sugestão aberta disponível. | Card de sugestão. | 1. Abrir módulo com sugestão aberta. 2. Revisar card. | Card exibe informações claras e legíveis. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-SUG-006 | Sugestões | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Sugestões. | Sugestão aberta disponível. | Tipo da sugestão. | 1. Revisar card de sugestão. | Tipo/categoria da sugestão exibido quando disponível. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-SUG-007 | Sugestões | Funcional | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Sugestões. | Sugestão aberta disponível. | Bloco de explicação/motivos. | 1. Revisar explicação e motivos no card. | Motivo/contexto da sugestão exibido em linguagem compreensível. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-SUG-008 | Sugestões | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Sugestões. | Sugestão aberta disponível. | Tipo, motivos, conteúdo do card. | 1. Revisar sinais de prioridade/impacto/confiança/urgência disponíveis. | Sinais de relevância exibidos quando o módulo os fornecer. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-SUG-009 | Sugestões | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Sugestões. | Sugestão aberta disponível. | Ação recomendada principal. | 1. Revisar CTA principal do card. | Próxima ação recomendada exibida de forma clara. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-SUG-010 | Sugestões | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Sugestões. | Sugestão aberta válida. | CTA "Criar cobrança". | 1. Acionar CTA principal em sugestão válida. | Ação sugerida executa fluxo esperado quando disponível. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-SUG-011 | Sugestões | Integração | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Sugestões. | Navegação disponível. | Sugestões e módulo relacionado. | 1. A partir de Sugestões, navegar para módulo relacionado. | CTA/navegação para módulo relacionado funciona quando disponível. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-SUG-012 | Sugestões | Funcional | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Sugestões. | Sugestão aberta disponível. | CTA "Dispensar". | 1. Acionar opção de dispensar sugestão. | Sugestão deixa de aparecer como aberta. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-SUG-013 | Sugestões | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Sugestões. | Fluxo de aceitação executável. | Sugestão com dados válidos. | 1. Executar ação sugerida. 2. Observar retorno. | Feedback de sucesso/erro exibido após ação. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-SUG-014 | Sugestões | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Sugestões. | Sugestão dispensada anteriormente. | Estado persistido em storage. | 1. Dispensar sugestão. 2. Reabrir página. | Persistência de dispensa mantida quando aplicável. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-SUG-015 | Sugestões | Integração | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Sugestões. | Dados relacionáveis disponíveis. | Clientes, cobranças, orçamentos, lembretes. | 1. Gerar cenário com entidades relacionadas. 2. Abrir Sugestões. | Relações entre sugestões e módulos operacionais refletidas corretamente. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-SUG-016 | Sugestões | Qualidade funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Sugestões. | Múltiplas fontes elegíveis. | Base com potenciais sugestões repetidas. | 1. Carregar módulo com múltiplas fontes. 2. Verificar repetição indevida. | Lista aberta evita duplicação indevida de sugestões. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-SUG-017 | Sugestões | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Sugestões. | Múltiplas sugestões abertas. | Dados com timestamps distintos. | 1. Abrir módulo com várias sugestões. 2. Revisar ordem exibida. | Ordenação segue critério implementado quando aplicável. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-SUG-018 | Sugestões | Funcional | Baixa | Baixa | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Sugestões. | Existência de filtros/categorias na UI. | Filtros por tipo/categoria. | 1. Verificar presença de filtros. 2. Aplicar quando disponível. | Filtro por tipo/categoria funciona quando disponível. | Não Executado | Não coletada | Na análise estática não foi identificado filtro explícito na UI atual. |
| TC-SUG-019 | Sugestões | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Sugestões. | Módulo disponível. | Refresh de página. | 1. Abrir Sugestões. 2. Recarregar página. | Módulo permanece utilizável após refresh. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-SUG-020 | Sugestões | Navegação | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Sugestões. | Navegação habilitada. | Dashboard e Sugestões. | 1. Ir de Dashboard para Sugestões. 2. Retornar ao Dashboard. | Navegação entre módulos funciona sem inconsistência evidente. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-SUG-021 | Sugestões | Usabilidade | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Sugestões. | Viewport desktop definido. | Ex.: 1366x768. | 1. Abrir módulo em desktop. 2. Revisar leitura/interação. | Exibição correta em viewport desktop. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-SUG-022 | Sugestões | Usabilidade | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Sugestões. | Viewport mobile-like definido. | Ex.: 390x844. | 1. Abrir módulo em mobile-like. 2. Revisar leitura/interação. | Exibição correta em viewport mobile-like. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-SUG-023 | Sugestões | Qualidade de conteúdo | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Sugestões. | Módulo carregado. | Textos visíveis da tela. | 1. Revisar textos do módulo. | Sem placeholders técnicos, dados quebrados ou mensagens confusas. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-SUG-024 | Sugestões | Valor de produto | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Sugestões. | Módulo carregado. | Conteúdo de orientação e cards. | 1. Revisar clareza do valor do módulo. | Valor operacional das sugestões comunicado claramente ao usuário. | Não Executado | Não coletada | Preparado para execução futura. |

## 8. Checklist de pré-execução manual

- Confirmar aplicação acessível.
- Confirmar usuário autenticado.
- Confirmar rota de Sugestões disponível.
- Confirmar massa de dados inicial.
- Confirmar se há sugestões existentes ou estado vazio.
- Confirmar quais módulos geram sugestões.
- Confirmar se existem sugestões com categorias diferentes.
- Confirmar se existem prioridades/impactos/urgências diferentes.
- Confirmar se há CTAs para módulos relacionados.
- Confirmar se há ação de ignorar/dispensar sugestão.
- Confirmar se há filtros ou ordenação.
- Confirmar viewports que serão usadas.
- Confirmar pasta de evidências.
- Confirmar próximo número de bug disponível.
- Confirmar padrão de nomenclatura das screenshots.
- Confirmar que ciclos anteriores não serão alterados.

## 9. Plano de evidências para execução futura

- `TC-SUG-001-sugestoes-carregamento.png`
- `TC-SUG-004-sugestoes-estado-vazio.png`
- `TC-SUG-005-sugestao-card-informacoes.png`
- `TC-SUG-007-sugestao-motivo-contexto.png`
- `TC-SUG-009-sugestao-proxima-acao.png`
- `TC-SUG-010-sugestao-executar-acao.png`
- `TC-SUG-012-sugestao-dispensar.png`
- `TC-SUG-016-sugestoes-sem-duplicacao.png`
- `TC-SUG-021-sugestoes-desktop.png`
- `TC-SUG-022-sugestoes-mobile-like.png`
- `BUG-008-sugestoes-[descricao-curta].png`, se bug for encontrado no futuro.

Estes arquivos são apenas nomes sugeridos para evidências futuras. Nenhuma evidência visual foi coletada neste ciclo.

## 10. Critérios de aceite do módulo

- Casos TC-SUG-001 a TC-SUG-024 aptos para execução manual futura.
- BDD aderente ao comportamento esperado identificado por inspeção estática.
- Cobertura documental de estado vazio, listagem, CTAs, dispensa e integração.

## 11. Observação sobre execução

Documento de preparação por análise estática. Não houve execução manual via navegador neste ciclo.

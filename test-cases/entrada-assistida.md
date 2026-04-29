# Casos de Teste — Entrada assistida

## 1. Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Módulo | Entrada assistida |
| Tipo | Planejamento de testes manuais |
| Responsável | Ademir dos Santos Junior |
| Status geral | Planejado |

## 2. Objetivo

Preparar cobertura de testes manuais do módulo Entrada assistida com base em inspeção estática do projeto `firmus-app`.

## 3. Base da análise

Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida.

## 4. Regras e premissas do módulo

- A rota do módulo é `/assisted-input`.
- O fluxo depende de interpretação de texto e revisão de rascunho antes de criação.
- Criação de entidade deve ocorrer apenas após confirmação explícita.
- Intenções mapeadas no parser: criação de orçamento, cobrança e lembrete.
- Campos extraídos podem incluir cliente, valor, data e título/contexto.

## 5. Fora de escopo

- Execução manual real em navegador neste ciclo.
- Coleta de evidências visuais neste ciclo.
- Testes de API, carga e segurança invasiva.

## 6. Massa de dados ou condições sugeridas

- Clientes cadastrados: Ana Silva, João, Bruno.
- Frases válidas de cobrança/orçamento/lembrete.
- Frases ambíguas e frases curtas/inválidas.
- Ambiente autenticado com rota `/assisted-input` acessível.

## 7. Casos de teste detalhados

| ID | Módulo | Tipo | Prioridade | Severidade se falhar | Status de design | Status de execução | Base da definição | Pré-condições | Dados de teste ou condição de teste | Passos detalhados | Resultado esperado | Resultado atual | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| TC-ASSIST-001 | Entrada assistida | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida. | Usuário autenticado. | Rota `/assisted-input`. | 1. Acessar rota do módulo. 2. Validar carregamento inicial. | Página carrega com título e estrutura base do módulo. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-ASSIST-002 | Entrada assistida | Funcional | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida. | Usuário autenticado. | Cabeçalho da página. | 1. Abrir módulo. 2. Validar identificação visual. | Identificação "Entrada assistida" e contexto de uso claros. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-ASSIST-003 | Entrada assistida | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida. | Módulo carregado. | Campo textarea. | 1. Abrir módulo. 2. Localizar campo de texto livre. | Campo de entrada livre disponível para digitação. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-ASSIST-004 | Entrada assistida | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida. | Módulo carregado. | Texto de exemplos. | 1. Abrir área "Digite sua instrução". 2. Ler orientação exibida. | Exemplos e instruções em PT-BR visíveis. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-ASSIST-005 | Entrada assistida | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida. | Campo disponível. | Frase válida. | 1. Digitar frase válida. 2. Acionar interpretar. | Sistema aceita preenchimento e inicia interpretação. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-ASSIST-006 | Entrada assistida | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida. | Texto válido de cobrança/orçamento/lembrete. | Ex.: "Criar cobrança para Ana de R$ 90 amanhã". | 1. Informar frase válida. 2. Interpretar. | Intenção reconhecida e exibida em "O que entendi". | Não Executado | Não coletada | Preparado para execução futura. |
| TC-ASSIST-007 | Entrada assistida | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida. | Cliente existente cadastrado. | Frase com nome do cliente. | 1. Informar frase com cliente. 2. Interpretar. | Cliente extraído/relacionado exibido no resumo. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-ASSIST-008 | Entrada assistida | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida. | Frase de orçamento com contexto de serviço. | Texto com serviço/contexto. | 1. Informar frase de orçamento. 2. Interpretar. | Título/contexto do serviço extraído quando aplicável. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-ASSIST-009 | Entrada assistida | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida. | Frase com valor monetário. | Ex.: R$ 250,00. | 1. Informar frase com valor. 2. Interpretar. | Valor extraído e exibido em formato monetário. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-ASSIST-010 | Entrada assistida | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida. | Frase com data explícita/relativa. | Ex.: amanhã, em 3 dias, dia 25. | 1. Informar frase com data. 2. Interpretar. | Data/prazo extraído e exibido no resumo. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-ASSIST-011 | Entrada assistida | Funcional | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida. | Interpretação concluída. | Resultado do parser. | 1. Interpretar frase válida. 2. Revisar bloco de resultado. | Sugestão/ação estruturada exibida para revisão. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-ASSIST-012 | Entrada assistida | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida. | Rascunho válido disponível. | Fluxo com botão "Confirmar criação". | 1. Gerar rascunho válido. 2. Confirmar criação. | Ação só é criada após confirmação explícita. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-ASSIST-013 | Entrada assistida | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida. | Rascunho exibido. | Nova frase para reinterpretação. | 1. Interpretar frase A. 2. Alterar para frase B. 3. Interpretar novamente. | Fluxo permite abandonar sugestão anterior sem criação indevida. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-ASSIST-014 | Entrada assistida | Funcional | Média | Baixa | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida. | Campo preenchido. | Nova instrução. | 1. Preencher campo. 2. Substituir conteúdo por nova instrução. 3. Reinterpretar. | Fluxo reinicia com nova interpretação sem estado quebrado. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-ASSIST-015 | Entrada assistida | Funcional | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida. | Campo vazio. | String vazia. | 1. Deixar campo vazio ou mínimo. 2. Interpretar. | Processamento útil não deve ocorrer e orientação deve ser exibida. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-ASSIST-016 | Entrada assistida | Funcional | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida. | Campo disponível. | Frase sem intenção clara. | 1. Informar frase inválida para o parser. 2. Interpretar. | Feedback de não classificação sem quebra da experiência. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-ASSIST-017 | Entrada assistida | Funcional | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida. | Campo disponível. | Frase ambígua entre cobrança e lembrete. | 1. Informar frase ambígua. 2. Interpretar. | Mensagem de ambiguidade clara ao usuário. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-ASSIST-018 | Entrada assistida | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida. | Rascunho válido. | Confirmação com dados obrigatórios. | 1. Gerar rascunho válido. 2. Confirmar criação. | Mensagem de sucesso exibida após criação. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-ASSIST-019 | Entrada assistida | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida. | Rascunho inválido. | Campos obrigatórios faltantes. | 1. Gerar rascunho incompleto. 2. Tentar confirmar. | Mensagem de erro/incerteza compreensível exibida. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-ASSIST-020 | Entrada assistida | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida. | Dados relacionados existentes. | Clientes, cobranças, lembretes e orçamentos. | 1. Interpretar intenções de diferentes entidades. 2. Confirmar quando válido. | Fluxo mantém relação coerente com módulos relacionados. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-ASSIST-021 | Entrada assistida | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida. | Ambiente com plano ativo. | Regras de limite, se existirem. | 1. Validar comportamento em cenário de limite. | Limites de plano são respeitados quando aplicáveis. | Não Executado | Não coletada | Dependente de validação manual e regra ativa. |
| TC-ASSIST-022 | Entrada assistida | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida. | Módulo disponível. | Refresh da página. | 1. Abrir módulo. 2. Atualizar página. 3. Validar usabilidade. | Módulo segue utilizável após refresh. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-ASSIST-023 | Entrada assistida | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida. | Navegação disponível. | Dashboard e Entrada assistida. | 1. Ir para Entrada assistida. 2. Voltar ao Dashboard. 3. Retornar ao módulo. | Navegação entre módulos ocorre sem inconsistência evidente. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-ASSIST-024 | Entrada assistida | Usabilidade | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida. | Definir viewport desktop. | 1366x768 ou equivalente. | 1. Abrir módulo em desktop. 2. Verificar leitura e interação. | Layout desktop com elementos principais acessíveis. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-ASSIST-025 | Entrada assistida | Usabilidade | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida. | Definir viewport mobile-like. | 390x844 ou equivalente. | 1. Abrir módulo em viewport mobile-like. 2. Verificar leitura e interação. | Layout mobile-like com elementos principais acessíveis. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-ASSIST-026 | Entrada assistida | Qualidade de conteúdo | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida. | Módulo carregado. | Textos da interface. | 1. Revisar textos visíveis do módulo. | Sem placeholders técnicos, dados quebrados ou mensagens confusas. | Não Executado | Não coletada | Preparado para execução futura. |
| TC-ASSIST-027 | Entrada assistida | Valor de produto | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Entrada assistida. | Módulo carregado. | Mensagens de orientação e fluxo de revisão. | 1. Avaliar clareza de propósito. 2. Avaliar orientação de uso seguro. | Valor operacional do módulo comunicado de forma clara ao usuário. | Não Executado | Não coletada | Preparado para execução futura. |

## 8. Checklist de pré-execução manual

- Confirmar aplicação acessível.
- Confirmar usuário autenticado.
- Confirmar rota de Entrada assistida disponível.
- Confirmar massa de dados inicial.
- Confirmar clientes disponíveis para extração.
- Confirmar serviços disponíveis para extração.
- Confirmar se existem orçamentos/cobranças/lembretes relacionados.
- Confirmar exemplos de frases válidas.
- Confirmar frases inválidas e ambíguas para teste.
- Confirmar se há confirmação antes de criar entidades.
- Confirmar se há limites de plano relacionados.
- Confirmar viewports que serão usadas.
- Confirmar pasta de evidências.
- Confirmar próximo número de bug disponível.
- Confirmar padrão de nomenclatura das screenshots.
- Confirmar que ciclos anteriores não serão alterados.

## 9. Plano de evidências para execução futura

- `TC-ASSIST-001-entrada-assistida-carregamento.png`
- `TC-ASSIST-003-entrada-assistida-campo-livre.png`
- `TC-ASSIST-004-entrada-assistida-exemplos.png`
- `TC-ASSIST-006-frase-valida-intencao-reconhecida.png`
- `TC-ASSIST-009-extracao-valor-monetario.png`
- `TC-ASSIST-010-extracao-data-prazo.png`
- `TC-ASSIST-011-sugestao-acao-estruturada.png`
- `TC-ASSIST-015-frase-vazia-validacao.png`
- `TC-ASSIST-017-frase-ambigua-mensagem-clara.png`
- `TC-ASSIST-024-entrada-assistida-desktop.png`
- `TC-ASSIST-025-entrada-assistida-mobile-like.png`
- `BUG-008-entrada-assistida-[descricao-curta].png`, se bug for encontrado no futuro.

Estes arquivos são apenas nomes sugeridos para evidências futuras. Nenhuma evidência visual foi coletada neste ciclo.

## 10. Critérios de aceite do módulo

- Casos TC-ASSIST-001 a TC-ASSIST-027 aptos para execução manual futura.
- BDD aderente ao comportamento esperado identificado por inspeção estática.
- Fluxos de confirmação, validação e feedback cobertos documentalmente.

## 11. Observação sobre execução

Documento de preparação por análise estática. Não houve execução manual via navegador neste ciclo.

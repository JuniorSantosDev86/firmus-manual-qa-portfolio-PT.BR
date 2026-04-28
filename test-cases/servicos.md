# Casos de Teste — Serviços

## 1. Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Módulo | Serviços |
| Tipo de documento | Casos de teste manuais |
| Responsável | Ademir dos Santos Junior |
| Status geral | Planejado |

## 2. Objetivo

Definir casos de teste manuais detalhados para o módulo Serviços com base em inspeção estática do projeto `firmus-app`, preparando a execução funcional futura em navegador.

## 3. Base da análise

- Inspeção estática do projeto `firmus-app`.
- Leitura de rota, componentes, armazenamento local, textos e regras de UI do módulo Serviços.
- Sem execução manual em navegador neste ciclo.
- Sem coleta de screenshots neste ciclo.

## 4. Regras e premissas do módulo

- Rota principal do módulo: `/services`.
- Item de navegação: `Serviços` (`nav-services`).
- Título da página: `Serviços`.
- Seções da tela: `Serviços atuais` e formulário de `Criar serviço`/`Editar serviço`.
- Campos do formulário: `Nome` (obrigatório), `Descrição` (opcional), `Preço base` (obrigatório), `Prazo estimado (dias)` (opcional), `Serviço ativo`.
- Persistência local: `localStorage` na chave `firmus.services`.
- Exclusão depende de confirmação explícita (`Confirmar exclusão deste serviço?`).
- O módulo exibe relação operacional com orçamentos no texto da própria página.

## 5. Fora de escopo

- Execução manual via navegador neste ciclo.
- Testes automatizados.
- Testes de API.
- Validação direta em banco de dados.
- Testes de carga.
- Testes invasivos de segurança.
- Ajustes de código da aplicação.

## 6. Massa de dados ou condições sugeridas

- Usuário autenticado.
- Ambiente local com aplicação acessível para ciclo futuro.
- Cenário sem registros na chave `firmus.services`.
- Cenário com pelo menos 1 serviço ativo e 1 inativo.
- Dados sugeridos:
  - Nome: `Landing Page`.
  - Descrição: `Entrega de site one page.`.
  - Preço base válido: `1500.00`.
  - Prazo estimado válido: `7`.
- Viewports recomendadas para execução futura: desktop `1366x900` e mobile-like `390x844`.

## 7. Casos de teste detalhados

| ID | Módulo | Tipo | Prioridade | Severidade se falhar | Status de design | Status de execução | Base da definição | Pré-condições | Dados de teste ou condição de teste | Passos detalhados | Resultado esperado | Resultado atual | Evidência | Observações |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| TC-SRV-001 | Serviços | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Serviços. | Usuário autenticado. | Rota `/services` disponível. | 1. Acessar o menu Serviços. 2. Validar URL. 3. Confirmar carregamento da página. | A rota `/services` deve carregar sem erro técnico. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-SRV-002 | Serviços | Usabilidade/Conteúdo | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Serviços. | Usuário autenticado no módulo. | Página de Serviços carregada. | 1. Validar título da página. 2. Validar descrição do módulo. 3. Validar seção `Serviços atuais`. | Identificação visual e textual do módulo deve ser clara e coerente. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-SRV-003 | Serviços | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Serviços. | Existir ao menos um serviço cadastrado. | Serviço com nome, preço e prazo definidos. | 1. Abrir `/services`. 2. Verificar listagem. 3. Conferir dados exibidos no card/linha. | Listagem deve exibir nome, preço base formatado, prazo e status ativo/inativo. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-SRV-004 | Serviços | Funcional | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Serviços. | Não existir serviço cadastrado. | Chave `firmus.services` vazia ou ausente. | 1. Abrir `/services`. 2. Observar texto de status da listagem. | Deve exibir estado vazio com mensagem orientativa para criar o primeiro serviço. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-SRV-005 | Serviços | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Serviços. | Página carregada. | Formulário visível. | 1. Verificar presença do CTA principal. 2. Confirmar rótulo do botão de criação. | Deve exibir ação de criação por meio do botão `Criar serviço`. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-SRV-006 | Serviços | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Serviços. | Página carregada sem edição ativa. | Campos do formulário disponíveis. | 1. Confirmar título `Criar serviço`. 2. Validar presença dos campos obrigatórios e opcionais. | Formulário de criação deve estar acessível com todos os campos esperados. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-SRV-007 | Serviços | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Serviços. | Formulário disponível. | Nome válido e preço válido. | 1. Preencher Nome, Descrição, Preço base e Prazo. 2. Salvar. 3. Validar listagem. | Serviço deve ser cadastrado e exibido na lista com dados coerentes. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-SRV-008 | Serviços | Negativo/Validação | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Serviços. | Formulário disponível. | Nome vazio ou apenas espaços. | 1. Deixar Nome vazio. 2. Tentar salvar. 3. Verificar listagem. | Cadastro não deve criar novo serviço com nome vazio. | Não executado neste ciclo. | Não coletada neste ciclo. | Validação principal observada no código. |
| TC-SRV-009 | Serviços | Negativo/Validação | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Serviços. | Formulário disponível. | Preço base com caracteres inválidos. | 1. Informar preço com texto não monetário. 2. Salvar com nome válido. 3. Verificar valor persistido/exibido. | Módulo deve tratar valor inválido sem quebrar a tela e sem erro técnico. | Não executado neste ciclo. | Não coletada neste ciclo. | Confirmar comportamento real no ciclo manual. |
| TC-SRV-010 | Serviços | Negativo/Validação | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Serviços. | Formulário disponível. | Descrição vazia, espaços ou conteúdo inconsistente. | 1. Preencher somente Nome e Preço válidos. 2. Deixar Descrição vazia. 3. Salvar. | Cadastro deve permanecer estável e sem mensagem técnica confusa. | Não executado neste ciclo. | Não coletada neste ciclo. | Descrição é opcional no código. |
| TC-SRV-011 | Serviços | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Serviços. | Serviço já cadastrado. | Registro com preço e prazo definidos. | 1. Localizar item criado. 2. Conferir nome e resumo operacional. | Serviço cadastrado deve ser exibido com dados claros e legíveis. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-SRV-012 | Serviços | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Serviços. | Existir serviço na listagem. | Serviço com dados editáveis. | 1. Acionar `Editar`. 2. Alterar preço/prazo. 3. Salvar alterações. | Item deve refletir alterações e manter consistência de dados. | Não executado neste ciclo. | Não coletada neste ciclo. | Ação disponível no código atual. |
| TC-SRV-013 | Serviços | Negativo/Validação | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Serviços. | Formulário em modo edição. | Nome inválido ou preço inválido durante edição. | 1. Entrar em edição. 2. Informar dado inválido. 3. Tentar salvar. | Edição com dado inválido não deve corromper o cadastro existente. | Não executado neste ciclo. | Não coletada neste ciclo. | Confirmar em execução real. |
| TC-SRV-014 | Serviços | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Serviços. | Existir serviço na lista. | Confirmação de exclusão aceita. | 1. Acionar `Excluir`. 2. Confirmar no diálogo. 3. Verificar remoção. | Serviço deve ser removido da listagem após confirmação. | Não executado neste ciclo. | Não coletada neste ciclo. | Ação depende de confirmação explícita. |
| TC-SRV-015 | Serviços | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Serviços. | Existir serviço na lista. | Confirmação de exclusão cancelada. | 1. Acionar `Excluir`. 2. Cancelar no diálogo. 3. Verificar manutenção do item. | Serviço deve permanecer listado quando a exclusão for cancelada. | Não executado neste ciclo. | Não coletada neste ciclo. | Confirmar em execução real. |
| TC-SRV-016 | Serviços | Resiliência | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Serviços. | Serviço previamente salvo. | Persistência local ativa. | 1. Cadastrar/editar serviço. 2. Recarregar página. 3. Validar conteúdo pós-refresh. | Módulo deve manter dados persistidos e continuar utilizável após refresh. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-SRV-017 | Serviços | Navegação | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Serviços. | Dashboard e Serviços acessíveis. | Navegação lateral disponível. | 1. Acessar Dashboard. 2. Ir para Serviços. 3. Voltar ao Dashboard. | Navegação entre Dashboard e Serviços deve funcionar sem inconsistência. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-SRV-018 | Serviços | Responsivo | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Serviços. | Módulo acessível. | Viewport desktop 1366x900. | 1. Abrir Serviços em desktop. 2. Verificar legibilidade/listagem/formulário. | Tela deve permanecer legível e operável em desktop. | Não executado neste ciclo. | Não coletada neste ciclo. | Confirmar em runtime. |
| TC-SRV-019 | Serviços | Responsivo | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Serviços. | Módulo acessível. | Viewport mobile-like 390x844. | 1. Abrir Serviços em mobile-like. 2. Verificar leitura e operação dos elementos. | Tela deve permanecer utilizável sem quebra impeditiva no mobile-like. | Não executado neste ciclo. | Não coletada neste ciclo. | Confirmar em runtime. |
| TC-SRV-020 | Serviços | Qualidade de Conteúdo | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Serviços. | Módulo carregado. | Conteúdo da página completo. | 1. Revisar textos exibidos. 2. Procurar placeholders ou labels técnicos. | Não deve exibir placeholders, dados técnicos ou mensagens confusas para usuário final. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |
| TC-SRV-021 | Serviços | Usabilidade/Valor | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Serviços. | Módulo carregado. | Texto introdutório e estados visíveis. | 1. Revisar mensagens-chave do módulo. 2. Avaliar se o propósito operacional está claro. | O módulo deve comunicar claramente o valor de organizar serviços para reaproveitamento em orçamentos. | Não executado neste ciclo. | Não coletada neste ciclo. | Preparado para execução manual futura. |

## 8. Critérios de aceite do módulo

- Rota `/services` acessível e estável.
- Identificação do módulo clara em título, descrição e seções principais.
- Listagem e estado vazio coerentes.
- Criação, edição e exclusão disponíveis com comportamento previsível.
- Confirmação de exclusão presente.
- Persistência local consistente após refresh.
- Conteúdo em PT-BR sem mensagens técnicas confusas.
- Usabilidade preservada em desktop e mobile-like.

## 9. Observação sobre execução

Todos os casos deste documento permanecem com `Status de design: Planejado` e `Status de execução: Não Executado`, pois este ciclo foi de análise estática/documental do módulo Serviços.

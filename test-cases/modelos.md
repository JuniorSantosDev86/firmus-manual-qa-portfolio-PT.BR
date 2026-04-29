# Casos de Teste — Módulo Modelos

## 1. Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Módulo | Modelos |
| Responsável | Ademir dos Santos Junior |
| Tipo | Preparação para execução manual |
| Status do documento | Planejado |

## 2. Objetivo

Definir cobertura funcional do módulo Modelos para execução manual futura, com base em inspeção estática do projeto `firmus-app`.

## 3. Base da análise

- Inspeção estática do projeto `firmus-app`.
- Leitura de rotas, componentes, serviços, storage e testes E2E relacionados ao módulo.
- Sem execução manual em navegador neste ciclo.
- Sem coleta de screenshots neste ciclo.

## 4. Regras e premissas do módulo

- Rota principal identificada: `/templates`.
- Identificação visual: título "Modelos" e descrição operacional do módulo.
- Formulário com campos obrigatórios `Nome` e `Conteúdo`; `Categoria` por seleção.
- Categorias previstas: Follow-up de orçamento, Lembrete de pagamento, Solicitação de aprovação e Geral.
- Listagem agrupada por categoria com estado Ativo/Inativo.
- Ações disponíveis por item: editar e ativar/inativar.
- Fluxo explícito de exclusão e duplicação não identificado no CRUD atual.
- Persistência local via `localStorage` (`firmus.templates`).
- Criação sujeita ao limite de modelos por plano.

## 5. Fora de escopo

- Execução manual via navegador neste ciclo.
- Testes de API.
- Testes automatizados.
- Testes de carga.
- Avaliação visual real por dispositivo físico.

## 6. Massa de dados ou condições sugeridas

- Usuário autenticado no ambiente local da aplicação.
- Cenário sem modelos salvos.
- Cenário com pelo menos 1 modelo por categoria.
- Cenário com plano bloqueando criação por limite atingido.
- Conteúdos curtos e longos para validar preview resumido.

## 7. Casos de teste detalhados

| ID | Módulo | Tipo | Prioridade | Severidade se falhar | Status de design | Status de execução | Base da definição |
|---|---|---|---|---|---|---|---|
| TC-MOD-001 | Modelos | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Modelos. |
| TC-MOD-002 | Modelos | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Modelos. |
| TC-MOD-003 | Modelos | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Modelos. |
| TC-MOD-004 | Modelos | Funcional | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Modelos. |
| TC-MOD-005 | Modelos | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Modelos. |
| TC-MOD-006 | Modelos | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Modelos. |
| TC-MOD-007 | Modelos | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Modelos. |
| TC-MOD-008 | Modelos | Funcional | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Modelos. |
| TC-MOD-009 | Modelos | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Modelos. |
| TC-MOD-010 | Modelos | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Modelos. |
| TC-MOD-011 | Modelos | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Modelos. |
| TC-MOD-012 | Modelos | Validação | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Modelos. |
| TC-MOD-013 | Modelos | Validação | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Modelos. |
| TC-MOD-014 | Modelos | Funcional | Alta | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Modelos. |
| TC-MOD-015 | Modelos | Validação | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Modelos. |
| TC-MOD-016 | Modelos | Funcional | Média | Alta | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Modelos. |
| TC-MOD-017 | Modelos | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Modelos. |
| TC-MOD-018 | Modelos | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Modelos. |
| TC-MOD-019 | Modelos | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Modelos. |
| TC-MOD-020 | Modelos | Validação | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Modelos. |
| TC-MOD-021 | Modelos | Integração funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Modelos. |
| TC-MOD-022 | Modelos | Funcional | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Modelos. |
| TC-MOD-023 | Modelos | Navegação | Alta | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Modelos. |
| TC-MOD-024 | Modelos | Responsivo | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Modelos. |
| TC-MOD-025 | Modelos | Responsivo | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Modelos. |
| TC-MOD-026 | Modelos | Qualidade de conteúdo | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Modelos. |
| TC-MOD-027 | Modelos | Qualidade de UX | Média | Média | Planejado | Não Executado | Inspeção estática do projeto `firmus-app` e análise de rotas/componentes/textos relacionados ao módulo Modelos. |

### Detalhamento por caso

#### TC-MOD-001 — Carregar a página de Modelos com sucesso
- Pré-condições: usuário autenticado.
- Dados de teste ou condição de teste: rota `/templates` acessível.
- Passos detalhados: 1) Acessar `/templates`. 2) Verificar renderização da página.
- Resultado esperado: página carrega sem erro e mostra bloco principal.
- Resultado atual: Não executado.
- Evidência: Pendente.
- Observações: Validar runtime no ciclo manual.

#### TC-MOD-002 — Exibir identificação visual do módulo Modelos
- Pré-condições: usuário autenticado.
- Dados de teste ou condição de teste: página de Modelos aberta.
- Passos detalhados: verificar título e descrição do cabeçalho.
- Resultado esperado: título "Modelos" e texto operacional em PT-BR.
- Resultado atual: Não executado.
- Evidência: Pendente.
- Observações: Baseado em `app/templates/page.tsx`.

#### TC-MOD-003 — Exibir listagem de modelos quando houver registros
- Pré-condições: existir modelos salvos.
- Dados de teste ou condição de teste: storage com modelos válidos.
- Passos detalhados: abrir listagem e verificar cards.
- Resultado esperado: modelos exibidos em cards por categoria.
- Resultado atual: Não executado.
- Evidência: Pendente.
- Observações: Validação manual pendente.

#### TC-MOD-004 — Exibir estado vazio quando não houver modelos
- Pré-condições: storage sem modelos.
- Dados de teste ou condição de teste: lista vazia.
- Passos detalhados: abrir página sem modelos.
- Resultado esperado: mensagem "Nenhum modelo salvo ainda.".
- Resultado atual: Não executado.
- Evidência: Pendente.
- Observações: Texto identificado estaticamente.

#### TC-MOD-005 — Exibir modelos padrão quando disponíveis
- Pré-condições: ambiente com modelos pré-carregados.
- Dados de teste ou condição de teste: existência de templates padrão.
- Passos detalhados: acessar listagem e identificar origem padrão.
- Resultado esperado: modelos padrão exibidos quando existirem no ambiente.
- Resultado atual: Não executado.
- Evidência: Pendente.
- Observações: Não identificado seed padrão no código atual.

#### TC-MOD-006 — Exibir modelos criados pelo usuário quando disponíveis
- Pré-condições: usuário já criou modelos.
- Dados de teste ou condição de teste: modelos persistidos em `firmus.templates`.
- Passos detalhados: abrir listagem após criação prévia.
- Resultado esperado: modelos do usuário exibidos corretamente.
- Resultado atual: Não executado.
- Evidência: Pendente.
- Observações: Persistência local prevista no storage.

#### TC-MOD-007 — Exibir categoria ou tipo do modelo
- Pré-condições: modelos em categorias diferentes.
- Dados de teste ou condição de teste: categorias válidas do domínio.
- Passos detalhados: validar cabeçalhos por categoria e filtro.
- Resultado esperado: categorias funcionais exibidas em PT-BR.
- Resultado atual: Não executado.
- Evidência: Pendente.
- Observações: Labels definidas no serviço.

#### TC-MOD-008 — Exibir título e conteúdo do modelo de forma clara
- Pré-condições: modelo salvo.
- Dados de teste ou condição de teste: nome e conteúdo preenchidos.
- Passos detalhados: verificar card da listagem.
- Resultado esperado: nome visível e preview do conteúdo legível.
- Resultado atual: Não executado.
- Evidência: Pendente.
- Observações: Preview usa truncamento por tamanho.

#### TC-MOD-009 — Visualizar preview do modelo quando disponível
- Pré-condições: conteúdo com tamanho acima e abaixo do limite.
- Dados de teste ou condição de teste: textos curtos e longos.
- Passos detalhados: comparar exibição dos previews.
- Resultado esperado: conteúdo longo com reticências e curto sem corte.
- Resultado atual: Não executado.
- Evidência: Pendente.
- Observações: Regra `getTemplatePreview`.

#### TC-MOD-010 — Exibir ação de criação de modelo quando disponível
- Pré-condições: usuário em módulo Modelos.
- Dados de teste ou condição de teste: formulário em modo criação.
- Passos detalhados: verificar botão principal do formulário.
- Resultado esperado: botão "Salvar modelo" disponível quando permitido pelo plano.
- Resultado atual: Não executado.
- Evidência: Pendente.
- Observações: Pode alternar para "Limite atingido".

#### TC-MOD-011 — Criar modelo com dados válidos quando disponível
- Pré-condições: limite do plano não atingido.
- Dados de teste ou condição de teste: nome, categoria e conteúdo válidos.
- Passos detalhados: preencher formulário e salvar.
- Resultado esperado: novo modelo incluído na listagem como ativo.
- Resultado atual: Não executado.
- Evidência: Pendente.
- Observações: Fluxo coberto em teste E2E existente.

#### TC-MOD-012 — Impedir criação de modelo com campos obrigatórios vazios
- Pré-condições: formulário disponível.
- Dados de teste ou condição de teste: nome ou conteúdo vazio.
- Passos detalhados: tentar salvar sem preencher obrigatórios.
- Resultado esperado: submissão bloqueada por validação obrigatória.
- Resultado atual: Não executado.
- Evidência: Pendente.
- Observações: `required` em nome e conteúdo.

#### TC-MOD-013 — Impedir criação de modelo com conteúdo vazio ou inválido
- Pré-condições: formulário disponível.
- Dados de teste ou condição de teste: conteúdo apenas com espaços.
- Passos detalhados: informar conteúdo inválido e salvar.
- Resultado esperado: criação não persistida.
- Resultado atual: Não executado.
- Evidência: Pendente.
- Observações: normalização no storage rejeita conteúdo vazio.

#### TC-MOD-014 — Editar modelo existente quando disponível
- Pré-condições: existir modelo salvo.
- Dados de teste ou condição de teste: item com ação "Editar modelo".
- Passos detalhados: entrar em edição, alterar dados e atualizar.
- Resultado esperado: dados alterados refletidos na listagem.
- Resultado atual: Não executado.
- Evidência: Pendente.
- Observações: título muda para "Editar modelo".

#### TC-MOD-015 — Impedir edição de modelo com dados inválidos
- Pré-condições: formulário em modo edição.
- Dados de teste ou condição de teste: nome/conteúdo inválidos.
- Passos detalhados: limpar campos obrigatórios e atualizar.
- Resultado esperado: atualização não persistida.
- Resultado atual: Não executado.
- Evidência: Pendente.
- Observações: validação de strings não vazias no storage.

#### TC-MOD-016 — Excluir modelo após confirmação quando disponível
- Pré-condições: existir modelo salvo.
- Dados de teste ou condição de teste: ação de exclusão disponível.
- Passos detalhados: tentar localizar fluxo de exclusão e confirmar.
- Resultado esperado: se funcionalidade existir, exclusão somente após confirmação.
- Resultado atual: Não executado.
- Evidência: Pendente.
- Observações: não identificado botão de exclusão no código atual.

#### TC-MOD-017 — Cancelar exclusão de modelo quando disponível
- Pré-condições: fluxo de exclusão implementado.
- Dados de teste ou condição de teste: modal/dialog de confirmação.
- Passos detalhados: iniciar exclusão e cancelar.
- Resultado esperado: item permanece inalterado.
- Resultado atual: Não executado.
- Evidência: Pendente.
- Observações: cenário condicionado à existência futura do recurso.

#### TC-MOD-018 — Duplicar ou copiar modelo quando disponível
- Pré-condições: funcionalidade de cópia/duplicação disponível.
- Dados de teste ou condição de teste: modelo existente.
- Passos detalhados: acionar duplicação/cópia.
- Resultado esperado: se existir, novo item derivado criado corretamente.
- Resultado atual: Não executado.
- Evidência: Pendente.
- Observações: não identificado fluxo explícito no código atual.

#### TC-MOD-019 — Filtrar ou buscar modelos quando disponível
- Pré-condições: modelos em múltiplas categorias.
- Dados de teste ou condição de teste: ao menos duas categorias com dados.
- Passos detalhados: aplicar filtro de categoria.
- Resultado esperado: listagem respeita categoria selecionada.
- Resultado atual: Não executado.
- Evidência: Pendente.
- Observações: busca textual não identificada no módulo atual.

#### TC-MOD-020 — Validar variáveis dinâmicas ou placeholders controlados quando disponíveis
- Pré-condições: suporte a variáveis disponível no módulo.
- Dados de teste ou condição de teste: conteúdo com placeholders.
- Passos detalhados: criar/editar modelo com variáveis.
- Resultado esperado: placeholders controlados conforme regra do produto.
- Resultado atual: Não executado.
- Evidência: Pendente.
- Observações: recurso não identificado no CRUD atual de Modelos.

#### TC-MOD-021 — Validar CTA para usar/aplicar modelo em outro módulo quando disponível
- Pré-condições: CTA de uso/aplicação exposto na UI.
- Dados de teste ou condição de teste: template ativo selecionado.
- Passos detalhados: acionar CTA e validar navegação/aplicação.
- Resultado esperado: integração consistente com módulo de destino.
- Resultado atual: Não executado.
- Evidência: Pendente.
- Observações: vínculo identificado no onboarding (abrir modelos), não no card de template.

#### TC-MOD-022 — Manter Modelos utilizável após refresh
- Pré-condições: existir ao menos um modelo salvo.
- Dados de teste ou condição de teste: storage persistido.
- Passos detalhados: recarregar página e revisar listagem.
- Resultado esperado: dados permanecem disponíveis e íntegros.
- Resultado atual: Não executado.
- Evidência: Pendente.
- Observações: persistência local prevista.

#### TC-MOD-023 — Navegar entre Modelos e Dashboard
- Pré-condições: navegação principal disponível.
- Dados de teste ou condição de teste: links de menu ativos.
- Passos detalhados: alternar entre Dashboard e Modelos.
- Resultado esperado: rotas acessíveis e sem erro.
- Resultado atual: Não executado.
- Evidência: Pendente.
- Observações: item `nav-templates` mapeado.

#### TC-MOD-024 — Exibir Modelos corretamente em viewport desktop
- Pré-condições: viewport desktop configurado.
- Dados de teste ou condição de teste: 1366x768 ou superior.
- Passos detalhados: validar layout, legibilidade e ações.
- Resultado esperado: estrutura estável sem sobreposição.
- Resultado atual: Não executado.
- Evidência: Pendente.
- Observações: classes responsivas identificadas estaticamente.

#### TC-MOD-025 — Exibir Modelos corretamente em viewport mobile-like
- Pré-condições: viewport mobile-like configurado.
- Dados de teste ou condição de teste: 390x844 ou similar.
- Passos detalhados: validar reorganização e operabilidade.
- Resultado esperado: fluxo utilizável sem quebra crítica.
- Resultado atual: Não executado.
- Evidência: Pendente.
- Observações: confirmação visual depende de runtime.

#### TC-MOD-026 — Não exibir placeholders técnicos, dados quebrados ou mensagens confusas
- Pré-condições: módulo carregado.
- Dados de teste ou condição de teste: percorrer principais textos visíveis.
- Passos detalhados: revisar labels, botões e mensagens.
- Resultado esperado: textos claros em PT-BR e sem ruído técnico.
- Resultado atual: Não executado.
- Evidência: Pendente.
- Observações: inspeção estática não encontrou placeholder técnico no módulo.

#### TC-MOD-027 — Comunicar claramente o valor operacional dos modelos para o usuário
- Pré-condições: página de Modelos carregada.
- Dados de teste ou condição de teste: cabeçalho visível.
- Passos detalhados: avaliar clareza da proposta de valor textual.
- Resultado esperado: benefício operacional explicitado ao usuário.
- Resultado atual: Não executado.
- Evidência: Pendente.
- Observações: texto de valor presente no cabeçalho.

## 8. Checklist de pré-execução manual

- [ ] Confirmar aplicação acessível.
- [ ] Confirmar usuário autenticado.
- [ ] Confirmar rota de Modelos disponível.
- [ ] Confirmar massa de dados inicial.
- [ ] Confirmar se há modelos existentes ou estado vazio.
- [ ] Confirmar se existem modelos padrão.
- [ ] Confirmar se há criação manual de modelos.
- [ ] Confirmar se há edição, exclusão, duplicação ou cópia.
- [ ] Confirmar se há busca/filtro/categoria.
- [ ] Confirmar se variáveis dinâmicas existem.
- [ ] Confirmar se há integração com outros módulos.
- [ ] Confirmar viewports que serão usadas.
- [ ] Confirmar pasta de evidências.
- [ ] Confirmar próximo número de bug disponível.
- [ ] Confirmar padrão de nomenclatura das screenshots.
- [ ] Confirmar que ciclos anteriores não serão alterados.

## 9. Plano de evidências para execução futura

- `TC-MOD-001-modelos-carregamento.png`
- `TC-MOD-004-modelos-estado-vazio.png`
- `TC-MOD-005-modelos-padrao.png`
- `TC-MOD-008-modelo-titulo-conteudo.png`
- `TC-MOD-009-modelo-preview.png`
- `TC-MOD-011-modelo-criado-com-dados-validos.png`
- `TC-MOD-012-modelo-validacao-campos-obrigatorios.png`
- `TC-MOD-018-modelo-copiado-ou-duplicado.png`
- `TC-MOD-019-modelos-busca-filtro.png`
- `TC-MOD-024-modelos-desktop.png`
- `TC-MOD-025-modelos-mobile-like.png`
- `BUG-008-modelos-[descricao-curta].png`

Estes arquivos são apenas nomes sugeridos para evidências futuras. Nenhuma evidência visual foi coletada neste ciclo.

## 10. Critérios de aceite do módulo

- Cobertura documental concluída para TC-MOD-001 a TC-MOD-027.
- Cenários BDD alinhados ao comportamento esperado identificado em código.
- Pré-condições e massa de dados definidas para execução futura.
- Plano de evidências e checklist de pré-execução disponíveis.

## 11. Observação sobre execução

Este documento registra planejamento e análise estática. Não houve execução manual via navegador neste ciclo.

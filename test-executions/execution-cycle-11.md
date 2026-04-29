# Ciclo de Execução 11 — Modelos — Preparação e Análise Estática

## Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Tipo de documento | Preparação de execução / análise estática |
| Ciclo | 11 |
| Módulo | Modelos |
| Responsável | Ademir dos Santos Junior |
| Status | Preparado para execução manual futura |

## Objetivo

Documentar a preparação do ciclo de testes do módulo Modelos com base na inspeção estática do projeto `firmus-app`, aprofundando cenários BDD e casos de teste para futura execução manual.

## Base da análise

- Projeto analisado: `firmus-app`
- Repositório de documentação atualizado: `firmus-manual-qa-portfolio-PT.BR`
- Tipo de análise: inspeção estática de rotas, componentes, textos, estados, regras e comportamento esperado
- Execução em navegador: Não realizada
- Screenshots: Não coletadas
- Resultado real de UI: Pendente de execução manual futura

## Escopo preparado

- Acesso ao módulo Modelos.
- Identificação visual do módulo.
- Listagem de modelos.
- Estado vazio.
- Modelos padrão.
- Modelos criados pelo usuário.
- Categorias ou tipos.
- Título e conteúdo.
- Preview.
- Criação de modelo, se disponível.
- Validações de campos.
- Edição, exclusão, cancelamento, cópia ou duplicação, se disponíveis.
- Busca/filtro, se disponível.
- Variáveis dinâmicas ou placeholders controlados, se disponíveis.
- CTAs de uso/aplicação, se disponíveis.
- Relação com outros módulos, se houver.
- Navegação.
- Refresh.
- Responsividade.
- Usabilidade básica.
- Qualidade de conteúdo.
- Plano de evidências futuras.
- Checklist de pré-execução manual.

## Fora de escopo

- Execução manual via navegador.
- Testes automatizados.
- Testes de API.
- Validação direta em banco de dados.
- Testes de carga.
- Testes invasivos de segurança.
- Revisão de código com alteração.
- Validação visual real em runtime.
- Envio real de mensagens externas.
- Integração real com WhatsApp, e-mail ou CRM externo.
- Validação editorial definitiva dos textos dos modelos.

## Arquivos do produto consultados

| Arquivo | Uso na análise |
|---|---|
| `firmus-app/app/templates/page.tsx` | Identificação da rota e conteúdo do módulo |
| `firmus-app/components/templates/templates-manager.tsx` | Fluxos de criação, edição, ativação/inativação, filtro e estado vazio |
| `firmus-app/lib/domain/template.ts` | Estrutura da entidade e categorias válidas |
| `firmus-app/lib/services/templates.ts` | Regras de categorias, preview, agrupamento e checagem de limite |
| `firmus-app/lib/template-storage.ts` | Persistência local, validação e normalização de dados |
| `firmus-app/lib/navigation.ts` | Label, rota e testId de navegação do módulo |
| `firmus-app/components/dashboard/top-navigation.tsx` | Presença de Modelos na navegação superior |
| `firmus-app/cypress/e2e/templates.cy.ts` | Comportamentos esperados de estado vazio, criação, edição, toggle e persistência |

## Resumo do ciclo

| Item | Resultado |
|---|---|
| BDD do módulo Modelos | Aprofundado |
| Casos de teste do módulo Modelos | Aprofundados |
| Checklist de pré-execução | Criado |
| Plano de evidências futuras | Criado |
| Execução manual via navegador | Não realizada |
| Evidências visuais | Não coletadas |
| Bugs reais reportados | Nenhum bug por inspeção estática neste ciclo |
| Status para próxima etapa | Pronto para execução manual futura |

## Casos preparados

| ID | Caso de Teste | Status de design | Status de execução | Observação |
|---|---|---|---|---|
| TC-MOD-001 | Carregar a página de Modelos com sucesso | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-MOD-002 | Exibir identificação visual do módulo Modelos | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-MOD-003 | Exibir listagem de modelos quando houver registros | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-MOD-004 | Exibir estado vazio quando não houver modelos | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-MOD-005 | Exibir modelos padrão quando disponíveis | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-MOD-006 | Exibir modelos criados pelo usuário quando disponíveis | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-MOD-007 | Exibir categoria ou tipo do modelo | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-MOD-008 | Exibir título e conteúdo do modelo de forma clara | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-MOD-009 | Visualizar preview do modelo quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-MOD-010 | Exibir ação de criação de modelo quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-MOD-011 | Criar modelo com dados válidos quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-MOD-012 | Impedir criação de modelo com campos obrigatórios vazios | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-MOD-013 | Impedir criação de modelo com conteúdo vazio ou inválido | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-MOD-014 | Editar modelo existente quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-MOD-015 | Impedir edição de modelo com dados inválidos | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-MOD-016 | Excluir modelo após confirmação quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-MOD-017 | Cancelar exclusão de modelo quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-MOD-018 | Duplicar ou copiar modelo quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-MOD-019 | Filtrar ou buscar modelos quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-MOD-020 | Validar variáveis dinâmicas ou placeholders controlados quando disponíveis | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-MOD-021 | Validar CTA para usar/aplicar modelo em outro módulo quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-MOD-022 | Manter Modelos utilizável após refresh | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-MOD-023 | Navegar entre Modelos e Dashboard | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-MOD-024 | Exibir Modelos corretamente em viewport desktop | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-MOD-025 | Exibir Modelos corretamente em viewport mobile-like | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-MOD-026 | Não exibir placeholders técnicos, dados quebrados ou mensagens confusas | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-MOD-027 | Comunicar claramente o valor operacional dos modelos para o usuário | Planejado | Não Executado | Preparado com base em inspeção estática |

## Checklist de pré-execução manual

- Confirmar aplicação acessível.
- Confirmar usuário autenticado.
- Confirmar rota de Modelos disponível.
- Confirmar massa de dados inicial.
- Confirmar se há modelos existentes ou estado vazio.
- Confirmar se existem modelos padrão.
- Confirmar se há criação manual de modelos.
- Confirmar se há edição, exclusão, duplicação ou cópia.
- Confirmar se há busca/filtro/categoria.
- Confirmar se variáveis dinâmicas existem.
- Confirmar se há integração com outros módulos.
- Confirmar viewports que serão usadas.
- Confirmar pasta de evidências.
- Confirmar próximo número de bug disponível.
- Confirmar padrão de nomenclatura das screenshots.
- Confirmar que ciclos anteriores não serão alterados.

## Plano de evidências futuras

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
- `BUG-008-modelos-[descricao-curta].png`, se bug for encontrado no futuro.

Estes arquivos são apenas nomes sugeridos para evidências futuras. Nenhuma evidência visual foi coletada neste ciclo.

## Bugs encontrados por inspeção estática

Nenhum bug foi reportado neste ciclo, pois não houve execução manual via navegador. A criação de bugs funcionais deve ocorrer somente após execução real ou inconsistência comprovável por inspeção estática.

## Evidências

Nenhuma evidência visual foi coletada neste ciclo, pois a análise foi feita diretamente no projeto `firmus-app`, sem execução no navegador.

## Decisão do ciclo

Preparado para execução manual futura.

O módulo Modelos agora possui BDD, casos de teste, checklist de pré-execução e plano de evidências prontos para um ciclo real posterior.

## Riscos conhecidos

- Comportamento visual real ainda não validado em navegador.
- Responsividade ainda não validada por viewport real.
- Fluxos de criação/edição/exclusão ainda precisam ser confirmados em runtime.
- Variáveis dinâmicas, se existirem, precisam ser validadas com dados reais.
- CTAs de uso/aplicação ainda precisam ser confirmados em execução manual.
- Possíveis diferenças entre código analisado e comportamento em runtime.
- Evidências ainda precisam ser coletadas em ciclo futuro.

## Próximos passos

- Iniciar execução manual do módulo Modelos em ciclo futuro.
- Executar TC-MOD-001 a TC-MOD-027.
- Coletar screenshots reais conforme plano de evidências.
- Registrar bugs funcionais se observados.
- Atualizar matriz de cobertura após execução real.
- Reavaliar Go/No-Go do módulo após validação em UI.

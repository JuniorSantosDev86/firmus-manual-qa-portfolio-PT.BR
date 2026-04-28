# Ciclo de Execução 06 — Cobranças — Preparação e Análise Estática

## Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Tipo de documento | Preparação de execução / análise estática |
| Ciclo | 06 |
| Módulo | Cobranças |
| Responsável | Ademir dos Santos Junior |
| Status | Preparado para execução manual futura |

## Objetivo

Documentar a preparação do ciclo de testes do módulo Cobranças com base na inspeção estática do projeto `firmus-app`, aprofundando cenários BDD e casos de teste para futura execução manual.

## Base da análise

- Projeto analisado: `firmus-app`
- Repositório de documentação atualizado: `firmus-manual-qa-portfolio-PT.BR`
- Tipo de análise: inspeção estática de rotas, componentes, textos, estados, regras e comportamento esperado
- Execução em navegador: Não realizada
- Screenshots: Não coletadas
- Resultado real de UI: Pendente de execução manual futura

## Escopo preparado

- Acesso ao módulo Cobranças.
- Identificação visual do módulo.
- Listagem de cobranças.
- Estado vazio.
- Criação de cobrança, se disponível.
- Validação de campos.
- Validação de valor.
- Validação de data.
- Exibição de cobrança cadastrada.
- Status de cobrança.
- Marcação como paga, se disponível.
- Edição de cobrança, se disponível.
- Exclusão de cobrança, se disponível.
- Cancelamento de exclusão, se disponível.
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
- Integração real com gateway de pagamento.
- Emissão real de cobrança externa.
- Validação financeira profunda fora do comportamento visível do módulo.

## Arquivos do produto consultados

| Arquivo | Uso na análise |
|---|---|
| `firmus-app/app/charges/page.tsx` | Identificação da rota e conteúdo principal do módulo |
| `firmus-app/components/charges-manager.tsx` | Regras de UI da listagem, estado vazio, formulário, ações e mensagens |
| `firmus-app/lib/charge-storage.ts` | Persistência local, normalização de dados e operações de criar/editar/excluir |
| `firmus-app/lib/charge-status.ts` | Regra de status resolvido (pendente, pago e em atraso) |
| `firmus-app/lib/navigation.ts` | Confirmação de label/rota de Cobranças no menu principal |
| `firmus-app/cypress/e2e/charges.cy.ts` | Referência de fluxo esperado de criação, edição, pagamento e exclusão |

## Resumo do ciclo

| Item | Resultado |
|---|---|
| BDD do módulo Cobranças | Aprofundado |
| Casos de teste do módulo Cobranças | Aprofundados |
| Checklist de pré-execução | Criado |
| Plano de evidências futuras | Criado |
| Execução manual via navegador | Não realizada |
| Evidências visuais | Não coletadas |
| Bugs reais reportados | Nenhum por inspeção estática |
| Status para próxima etapa | Pronto para execução manual futura |

## Casos preparados

| ID | Caso de Teste | Status de design | Status de execução | Observação |
|---|---|---|---|---|
| TC-COB-001 | Carregar a página de Cobranças com sucesso | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-COB-002 | Exibir identificação visual do módulo Cobranças | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-COB-003 | Exibir listagem de cobranças quando houver registros | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-COB-004 | Exibir estado vazio quando não houver cobranças cadastradas | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-COB-005 | Exibir ação de criação de cobrança quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-COB-006 | Abrir formulário de criação de cobrança quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-COB-007 | Cadastrar cobrança com dados válidos | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-COB-008 | Impedir cadastro de cobrança com campos obrigatórios vazios | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-COB-009 | Impedir cadastro de cobrança com valor inválido | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-COB-010 | Impedir cadastro de cobrança com data inválida | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-COB-011 | Exibir cobrança cadastrada com dados claros | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-COB-012 | Exibir status da cobrança de forma compreensível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-COB-013 | Identificar cobrança pendente quando aplicável | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-COB-014 | Identificar cobrança paga quando aplicável | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-COB-015 | Identificar cobrança vencida quando aplicável | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-COB-016 | Marcar cobrança como paga quando a ação estiver disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-COB-017 | Editar cobrança existente quando a ação estiver disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-COB-018 | Impedir edição de cobrança com dados inválidos | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-COB-019 | Excluir cobrança após confirmação quando a ação estiver disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-COB-020 | Cancelar exclusão de cobrança quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-COB-021 | Manter Cobranças utilizável após refresh | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-COB-022 | Navegar entre Cobranças e Dashboard | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-COB-023 | Exibir Cobranças corretamente em viewport desktop | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-COB-024 | Exibir Cobranças corretamente em viewport mobile-like | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-COB-025 | Não exibir placeholders, dados técnicos ou mensagens confusas | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-COB-026 | Comunicar claramente o valor operacional das cobranças para o usuário | Planejado | Não Executado | Preparado com base em inspeção estática |

## Checklist de pré-execução manual

- [ ] Confirmar aplicação acessível.
- [ ] Confirmar usuário autenticado.
- [ ] Confirmar rota de Cobranças disponível.
- [ ] Confirmar massa de dados inicial.
- [ ] Confirmar se há ou não cobranças existentes.
- [ ] Confirmar se o módulo possui criação manual de cobrança.
- [ ] Confirmar se ações de edição/exclusão/status estão disponíveis.
- [ ] Confirmar viewports que serão usadas.
- [ ] Confirmar pasta de evidências.
- [ ] Confirmar próximo número de bug disponível.
- [ ] Confirmar padrão de nomenclatura das screenshots.
- [ ] Confirmar que ciclos anteriores não serão alterados.

## Plano de evidências futuras

- `TC-COB-001-cobrancas-carregamento.png`
- `TC-COB-004-cobrancas-estado-vazio.png`
- `TC-COB-007-cobranca-criada-com-dados-validos.png`
- `TC-COB-009-cobranca-valor-invalido.png`
- `TC-COB-010-cobranca-data-invalida.png`
- `TC-COB-012-cobranca-status-visivel.png`
- `TC-COB-016-cobranca-marcada-como-paga.png`
- `TC-COB-019-cobranca-exclusao-confirmada.png`
- `TC-COB-023-cobrancas-desktop.png`
- `TC-COB-024-cobrancas-mobile-like.png`
- `BUG-008-cobrancas-[descricao-curta].png`, se bug for encontrado no futuro.

Estes arquivos são apenas nomes sugeridos para evidências futuras. Nenhuma evidência visual foi coletada neste ciclo.

## Bugs encontrados por inspeção estática

Nenhum bug foi reportado neste ciclo, pois não houve execução manual via navegador. A criação de bugs funcionais deve ocorrer somente após execução real ou inconsistência comprovável por inspeção estática.

## Evidências

Nenhuma evidência visual foi coletada neste ciclo, pois a análise foi feita diretamente no projeto `firmus-app`, sem execução no navegador.

## Decisão do ciclo

Preparado para execução manual futura.

O módulo Cobranças agora possui BDD, casos de teste, checklist de pré-execução e plano de evidências prontos para um ciclo real posterior.

## Riscos conhecidos

- Comportamento visual real ainda não validado em navegador.
- Responsividade ainda não validada por viewport real.
- Formulários ainda precisam ser executados manualmente.
- Validação de valor e data ainda precisa ser confirmada em runtime.
- Fluxos de edição/exclusão/status ainda precisam ser confirmados em execução real.
- Possíveis diferenças entre código analisado e comportamento em runtime.
- Evidências ainda precisam ser coletadas em ciclo futuro.
- Integrações financeiras externas, se existirem, não foram validadas.

## Próximos passos

- Iniciar execução manual do módulo Cobranças em ciclo futuro.
- Executar TC-COB-001 a TC-COB-026.
- Coletar screenshots reais conforme plano de evidências.
- Registrar bugs funcionais se observados.
- Atualizar matriz de cobertura após execução real.
- Reavaliar Go/No-Go do módulo após validação em UI.

# Ciclo de Execução 07 — DAS — Preparação e Análise Estática

## Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Tipo de documento | Preparação de execução / análise estática |
| Ciclo | 07 |
| Módulo | DAS |
| Responsável | Ademir dos Santos Junior |
| Status | Preparado para execução manual futura |

## Objetivo

Documentar a preparação do ciclo de testes do módulo DAS com base na inspeção estática do projeto `firmus-app`, aprofundando cenários BDD e casos de teste para futura execução manual.

## Base da análise

- Projeto analisado: `firmus-app`
- Repositório de documentação atualizado: `firmus-manual-qa-portfolio-PT.BR`
- Tipo de análise: inspeção estática de rotas, componentes, textos, estados, regras e comportamento esperado
- Execução em navegador: Não realizada
- Screenshots: Não coletadas
- Resultado real de UI: Pendente de execução manual futura

## Escopo preparado

- Acesso ao módulo DAS.
- Identificação visual do módulo.
- Status da obrigação.
- Competência mensal.
- Vencimento.
- Valor, estimativa ou referência, se aplicável.
- Estado pendente.
- Estado pago.
- Estado vencido.
- Estado vazio ou inicial.
- Alertas de prazo.
- Orientação para canal oficial.
- Handoff para canal oficial.
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
- Emissão real de DAS.
- Pagamento real de guia.
- Consulta real a sistemas oficiais.
- Interpretação fiscal/legal definitiva.

## Arquivos do produto consultados

| Arquivo | Uso na análise |
|---|---|
| `firmus-app/app/das/page.tsx` | Identificação da rota e conteúdo principal do módulo |
| `firmus-app/components/das/das-manager.tsx` | Regras de UI, estado vazio, lista, CTA oficial, feedback e ação de marcar pago |
| `firmus-app/components/das/das-status-badge.tsx` | Exibição de badge e estados visuais de status |
| `firmus-app/lib/services/das/das-companion-service.ts` | Regras de listagem, status exibido, vencimento estimado e atualização de status |
| `firmus-app/lib/services/das/das-handoff-service.ts` | Handoff para canal oficial e validação de registro |
| `firmus-app/lib/services/das/das-deadlines.ts` | Regra de vencimento estimado e derivação de atraso |
| `firmus-app/lib/storage/das-records.ts` | Persistência local, normalização e transição para pago |
| `firmus-app/lib/navigation.ts` | Label/rota de DAS no menu principal |
| `firmus-app/cypress/e2e/das-companion.cy.ts` | Referência de comportamento esperado dos estados e handoff |

## Resumo do ciclo

| Item | Resultado |
|---|---|
| BDD do módulo DAS | Aprofundado |
| Casos de teste do módulo DAS | Aprofundados |
| Checklist de pré-execução | Criado |
| Plano de evidências futuras | Criado |
| Execução manual via navegador | Não realizada |
| Evidências visuais | Não coletadas |
| Bugs reais reportados | Nenhum por inspeção estática |
| Status para próxima etapa | Pronto para execução manual futura |

## Casos preparados

| ID | Caso de Teste | Status de design | Status de execução | Observação |
|---|---|---|---|---|
| TC-DAS-001 | Carregar a página de DAS com sucesso | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-DAS-002 | Exibir identificação visual do módulo DAS | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-DAS-003 | Exibir status da obrigação DAS quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-DAS-004 | Exibir competência mensal quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-DAS-005 | Exibir data de vencimento quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-DAS-006 | Exibir valor, estimativa ou referência quando aplicável | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-DAS-007 | Exibir estado pendente de forma compreensível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-DAS-008 | Exibir estado pago de forma compreensível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-DAS-009 | Exibir estado vencido de forma compreensível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-DAS-010 | Exibir estado vazio ou inicial sem quebrar a experiência | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-DAS-011 | Exibir alerta de prazo quando aplicável | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-DAS-012 | Exibir orientação para canal oficial quando aplicável | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-DAS-013 | Validar CTA de handoff para canal oficial quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-DAS-014 | Comunicar que o Firmus não substitui canal oficial, se aplicável | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-DAS-015 | Navegar entre DAS e Dashboard | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-DAS-016 | Manter DAS utilizável após refresh | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-DAS-017 | Exibir DAS corretamente em viewport desktop | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-DAS-018 | Exibir DAS corretamente em viewport mobile-like | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-DAS-019 | Não exibir placeholders, dados técnicos ou mensagens confusas | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-DAS-020 | Comunicar claramente o valor operacional do acompanhamento do DAS para o usuário | Planejado | Não Executado | Preparado com base em inspeção estática |

## Checklist de pré-execução manual

- [ ] Confirmar aplicação acessível.
- [ ] Confirmar usuário autenticado.
- [ ] Confirmar rota de DAS disponível.
- [ ] Confirmar massa de dados inicial.
- [ ] Confirmar se o módulo possui dados de competência/vencimento/status.
- [ ] Confirmar se há estado vazio/inicial.
- [ ] Confirmar se existe CTA para canal oficial.
- [ ] Confirmar se há aviso de canal oficial ou limitação fiscal.
- [ ] Confirmar viewports que serão usadas.
- [ ] Confirmar pasta de evidências.
- [ ] Confirmar próximo número de bug disponível.
- [ ] Confirmar padrão de nomenclatura das screenshots.
- [ ] Confirmar que ciclos anteriores não serão alterados.

## Plano de evidências futuras

- `TC-DAS-001-das-carregamento.png`
- `TC-DAS-003-das-status-obrigacao.png`
- `TC-DAS-005-das-vencimento.png`
- `TC-DAS-007-das-estado-pendente.png`
- `TC-DAS-008-das-estado-pago.png`
- `TC-DAS-009-das-estado-vencido.png`
- `TC-DAS-012-das-orientacao-canal-oficial.png`
- `TC-DAS-013-das-handoff-canal-oficial.png`
- `TC-DAS-017-das-desktop.png`
- `TC-DAS-018-das-mobile-like.png`
- `BUG-008-das-[descricao-curta].png`, se bug for encontrado no futuro.

Estes arquivos são apenas nomes sugeridos para evidências futuras. Nenhuma evidência visual foi coletada neste ciclo.

## Bugs encontrados por inspeção estática

Nenhum bug foi reportado neste ciclo, pois não houve execução manual via navegador. A criação de bugs funcionais deve ocorrer somente após execução real ou inconsistência comprovável por inspeção estática.

## Evidências

Nenhuma evidência visual foi coletada neste ciclo, pois a análise foi feita diretamente no projeto `firmus-app`, sem execução no navegador.

## Decisão do ciclo

Preparado para execução manual futura.

O módulo DAS agora possui BDD, casos de teste, checklist de pré-execução e plano de evidências prontos para um ciclo real posterior.

## Riscos conhecidos

- Comportamento visual real ainda não validado em navegador.
- Responsividade ainda não validada por viewport real.
- Status e prazos ainda precisam ser confirmados em runtime.
- Links ou CTAs oficiais ainda precisam ser acionados em execução manual, sem concluir transações reais.
- Possíveis diferenças entre código analisado e comportamento em runtime.
- Evidências ainda precisam ser coletadas em ciclo futuro.
- O módulo não substitui validação em canal oficial.

## Próximos passos

- Iniciar execução manual do módulo DAS em ciclo futuro.
- Executar TC-DAS-001 a TC-DAS-020.
- Coletar screenshots reais conforme plano de evidências.
- Registrar bugs funcionais se observados.
- Atualizar matriz de cobertura após execução real.
- Reavaliar Go/No-Go do módulo após validação em UI.

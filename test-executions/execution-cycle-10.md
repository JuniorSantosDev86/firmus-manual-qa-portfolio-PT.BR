# Ciclo de Execução 10 — Radar de reativação — Preparação e Análise Estática

## Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Tipo de documento | Preparação de execução / análise estática |
| Ciclo | 10 |
| Módulo | Radar de reativação |
| Responsável | Ademir dos Santos Junior |
| Status | Preparado para execução manual futura |

## Objetivo

Documentar a preparação do ciclo de testes do módulo Radar de reativação com base na inspeção estática do projeto `firmus-app`, aprofundando cenários BDD e casos de teste para futura execução manual.

## Base da análise

- Projeto analisado: `firmus-app`
- Repositório de documentação atualizado: `firmus-manual-qa-portfolio-PT.BR`
- Tipo de análise: inspeção estática de rotas, componentes, textos, estados, regras e comportamento esperado
- Execução em navegador: Não realizada
- Screenshots: Não coletadas
- Resultado real de UI: Pendente de execução manual futura

## Escopo preparado

- Acesso ao módulo Radar de reativação.
- Identificação visual do módulo.
- Listagem de oportunidades.
- Estado vazio.
- Cliente relacionado.
- Critério de inatividade.
- Última atividade ou data relevante.
- Prioridade, score ou risco, se disponível.
- Sugestão de próxima ação.
- CTAs de ação, se disponíveis.
- Relação com clientes, orçamentos, cobranças e lembretes.
- Ordenação e filtros, se disponíveis.
- Ausência de duplicação.
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
- Validação comercial definitiva de critérios de reativação.

## Arquivos do produto consultados

| Arquivo | Uso na análise |
|---|---|
| `firmus-app/app/reactivation-radar/page.tsx` | Identificação da rota e conteúdo principal do módulo |
| `firmus-app/components/reactivation/reactivation-radar-manager.tsx` | Estrutura da tela, filtros, listagem, estado vazio, CTAs e feedback |
| `firmus-app/lib/services/reactivation-radar-service.ts` | Regras de elegibilidade, critérios de inatividade, ordenação e criação de lembrete |
| `firmus-app/lib/domain/reactivation-radar.ts` | Entidade de oportunidade e tipos de reativação |
| `firmus-app/lib/navigation.ts` | Label e rota do módulo na navegação lateral |
| `firmus-app/cypress/e2e/reactivation-radar.cy.ts` | Referência de comportamento esperado e salvaguardas do fluxo |

## Resumo do ciclo

| Item | Resultado |
|---|---|
| BDD do módulo Radar de reativação | Aprofundado |
| Casos de teste do módulo Radar de reativação | Aprofundados |
| Checklist de pré-execução | Criado |
| Plano de evidências futuras | Criado |
| Execução manual via navegador | Não realizada |
| Evidências visuais | Não coletadas |
| Bugs reais reportados | Nenhum por inspeção estática neste ciclo |
| Status para próxima etapa | Pronto para execução manual futura |

## Casos preparados

| ID | Caso de Teste | Status de design | Status de execução | Observação |
|---|---|---|---|---|
| TC-RADAR-001 | Carregar a página de Radar de reativação com sucesso | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-RADAR-002 | Exibir identificação visual do módulo Radar de reativação | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-RADAR-003 | Exibir listagem de oportunidades quando houver dados | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-RADAR-004 | Exibir estado vazio quando não houver oportunidades | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-RADAR-005 | Exibir cliente relacionado à oportunidade | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-RADAR-006 | Exibir critério de inatividade ou reativação | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-RADAR-007 | Exibir última atividade ou data relevante quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-RADAR-008 | Exibir prioridade, score ou risco quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-RADAR-009 | Exibir sugestão de próxima ação | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-RADAR-010 | Validar CTA para abrir cliente relacionado quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-RADAR-011 | Validar CTA para criar lembrete ou ação equivalente quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-RADAR-012 | Validar CTA para criar orçamento, cobrança ou ação comercial quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-RADAR-013 | Validar relação com dados de clientes, orçamentos ou cobranças | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-RADAR-014 | Ordenar oportunidades por prioridade ou tempo de inatividade quando aplicável | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-RADAR-015 | Filtrar oportunidades quando filtros estiverem disponíveis | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-RADAR-016 | Evitar duplicação indevida de oportunidades | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-RADAR-017 | Manter Radar de reativação utilizável após refresh | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-RADAR-018 | Navegar entre Radar de reativação e Dashboard | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-RADAR-019 | Exibir Radar de reativação corretamente em viewport desktop | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-RADAR-020 | Exibir Radar de reativação corretamente em viewport mobile-like | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-RADAR-021 | Não exibir placeholders, dados técnicos ou mensagens confusas | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-RADAR-022 | Comunicar claramente o valor operacional da reativação para o usuário | Planejado | Não Executado | Preparado com base em inspeção estática |

## Checklist de pré-execução manual

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

## Plano de evidências futuras

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

## Bugs encontrados por inspeção estática

Nenhum bug foi reportado neste ciclo, pois não houve execução manual via navegador. A criação de bugs funcionais deve ocorrer somente após execução real ou inconsistência comprovável por inspeção estática.

## Evidências

Nenhuma evidência visual foi coletada neste ciclo, pois a análise foi feita diretamente no projeto `firmus-app`, sem execução no navegador.

## Decisão do ciclo

Preparado para execução manual futura.

O módulo Radar de reativação agora possui BDD, casos de teste, checklist de pré-execução e plano de evidências prontos para um ciclo real posterior.

## Riscos conhecidos

- Comportamento visual real ainda não validado em navegador.
- Responsividade ainda não validada por viewport real.
- Critérios de inatividade ainda precisam ser confirmados em execução manual.
- CTAs de ação ainda precisam ser confirmados em runtime.
- Possíveis diferenças entre código analisado e comportamento em runtime.
- Evidências ainda precisam ser coletadas em ciclo futuro.
- Valor comercial das sugestões depende da qualidade da massa de dados.

## Próximos passos

- Iniciar execução manual do módulo Radar de reativação em ciclo futuro.
- Executar TC-RADAR-001 a TC-RADAR-022.
- Coletar screenshots reais conforme plano de evidências.
- Registrar bugs funcionais se observados.
- Atualizar matriz de cobertura após execução real.
- Reavaliar Go/No-Go do módulo após validação em UI.

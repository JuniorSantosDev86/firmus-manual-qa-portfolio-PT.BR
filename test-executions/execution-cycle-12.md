# Ciclo de Execução 12 — Entrada assistida — Preparação e Análise Estática

## Informações do documento

| Campo | Informação |
|---|---|
| Projeto | Portfólio de QA Manual — Firmus |
| Sistema sob teste | Aplicação Firmus |
| Tipo de documento | Preparação de execução / análise estática |
| Ciclo | 12 |
| Módulo | Entrada assistida |
| Responsável | Ademir dos Santos Junior |
| Status | Preparado para execução manual futura |

## Objetivo

Documentar a preparação do ciclo de testes do módulo Entrada assistida com base na inspeção estática do projeto `firmus-app`, aprofundando cenários BDD e casos de teste para futura execução manual.

## Base da análise

- Projeto analisado: `firmus-app`
- Repositório de documentação atualizado: `firmus-manual-qa-portfolio-PT.BR`
- Tipo de análise: inspeção estática de rotas, componentes, textos, estados, parsing, regras e comportamento esperado
- Execução em navegador: Não realizada
- Screenshots: Não coletadas
- Resultado real de UI: Pendente de execução manual futura

## Escopo preparado

- Acesso ao módulo Entrada assistida.
- Identificação visual do módulo.
- Campo de entrada livre.
- Instruções e exemplos.
- Processamento de frases válidas.
- Extração de intenção.
- Extração de entidades, valores e datas.
- Sugestões ou ações estruturadas.
- Confirmação e cancelamento de ações, se disponíveis.
- Tratamento de frase vazia, inválida ou ambígua.
- Feedback de sucesso, erro ou incerteza.
- Relação com clientes, serviços, orçamentos, cobranças, lembretes ou automações.
- Limites de plano, se aplicáveis.
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
- Validação de IA externa, caso o módulo use apenas lógica local ou mock.
- Criação real de dados fora do ambiente de teste.
- Avaliação definitiva de qualidade semântica fora das regras implementadas.

## Arquivos do produto consultados

| Arquivo | Uso na análise |
|---|---|
| `firmus-app/app/assisted-input/page.tsx` | Identificação da rota e conteúdo do módulo |
| `firmus-app/components/assisted-input/assisted-input-manager.tsx` | Fluxo de entrada, interpretação, estados, validações e mensagens |
| `firmus-app/lib/navigation.ts` | Label e rota de navegação da Entrada assistida |
| `firmus-app/lib/services/assisted-input.ts` | Orquestração de interpretação, validação e confirmação |
| `firmus-app/lib/services/text-input-parser/index.ts` | Pipeline de parsing de texto |
| `firmus-app/lib/services/text-input-parser/intent-detection.ts` | Regras de detecção de intenção e ambiguidade |
| `firmus-app/lib/services/text-input-parser/amount-extraction.ts` | Extração de valor monetário |
| `firmus-app/lib/services/text-input-parser/date-extraction.ts` | Extração de datas explícitas e relativas |
| `firmus-app/lib/services/text-input-parser/text-field-extraction.ts` | Extração de cliente e título/contexto |
| `firmus-app/lib/services/text-input-parser/warning-shaping.ts` | Campos pendentes e mensagens de aviso |
| `firmus-app/lib/assisted-input/draft-builders.ts` | Montagem de rascunho por tipo de ação |
| `firmus-app/lib/assisted-input/validators.ts` | Regras de validação para confirmar criação |
| `firmus-app/lib/assisted-input/execute-assisted-action.ts` | Comportamento de confirmação e bloqueio de rascunho inválido |
| `firmus-app/lib/assisted-input/action-router.ts` | Criação de cobrança, orçamento e lembrete após confirmação |
| `firmus-app/cypress/e2e/assisted-input.cy.ts` | Cobertura esperada de UI e fluxo de confirmação |
| `firmus-app/cypress/e2e/text-input-parser-helpers.cy.ts` | Comportamento esperado do parser PT-BR |
| `firmus-app/cypress/e2e/assisted-input-parsing-integration.cy.ts` | Integração parser + rascunho + validação |

## Resumo do ciclo

| Item | Resultado |
|---|---|
| BDD do módulo Entrada assistida | Aprofundado |
| Casos de teste do módulo Entrada assistida | Aprofundados |
| Checklist de pré-execução | Criado |
| Plano de evidências futuras | Criado |
| Execução manual via navegador | Não realizada |
| Evidências visuais | Não coletadas |
| Bugs reais reportados | Nenhum bug por inspeção estática neste ciclo |
| Status para próxima etapa | Pronto para execução manual futura |

## Casos preparados

| ID | Caso de Teste | Status de design | Status de execução | Observação |
|---|---|---|---|---|
| TC-ASSIST-001 | Carregar a página de Entrada assistida com sucesso | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-ASSIST-002 | Exibir identificação visual do módulo Entrada assistida | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-ASSIST-003 | Exibir campo de entrada livre para o usuário | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-ASSIST-004 | Exibir instruções ou exemplos de uso quando disponíveis | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-ASSIST-005 | Permitir preenchimento de uma frase válida | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-ASSIST-006 | Processar frase válida com intenção reconhecida | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-ASSIST-007 | Extrair cliente relacionado quando disponível na frase | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-ASSIST-008 | Extrair serviço relacionado quando disponível na frase | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-ASSIST-009 | Extrair valor monetário quando disponível na frase | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-ASSIST-010 | Extrair data ou prazo quando disponível na frase | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-ASSIST-011 | Exibir sugestão ou ação estruturada após processamento | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-ASSIST-012 | Confirmar ação antes de criar entidade quando aplicável | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-ASSIST-013 | Cancelar ação sugerida quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-ASSIST-014 | Limpar entrada ou reiniciar fluxo quando disponível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-ASSIST-015 | Impedir processamento de frase vazia | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-ASSIST-016 | Tratar frase inválida sem quebrar a experiência | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-ASSIST-017 | Tratar frase ambígua com mensagem clara | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-ASSIST-018 | Exibir feedback de sucesso após ação confirmada | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-ASSIST-019 | Exibir feedback de erro ou incerteza de forma compreensível | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-ASSIST-020 | Validar relação com clientes, serviços, orçamentos, cobranças ou lembretes | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-ASSIST-021 | Respeitar limites de plano quando aplicável | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-ASSIST-022 | Manter Entrada assistida utilizável após refresh | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-ASSIST-023 | Navegar entre Entrada assistida e Dashboard | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-ASSIST-024 | Exibir Entrada assistida corretamente em viewport desktop | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-ASSIST-025 | Exibir Entrada assistida corretamente em viewport mobile-like | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-ASSIST-026 | Não exibir placeholders técnicos, dados quebrados ou mensagens confusas | Planejado | Não Executado | Preparado com base em inspeção estática |
| TC-ASSIST-027 | Comunicar claramente o valor operacional da entrada assistida para o usuário | Planejado | Não Executado | Preparado com base em inspeção estática |

## Checklist de pré-execução manual

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

## Plano de evidências futuras

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

## Bugs encontrados por inspeção estática

Nenhum bug foi reportado neste ciclo, pois não houve execução manual via navegador. A criação de bugs funcionais deve ocorrer somente após execução real ou inconsistência comprovável por inspeção estática.

## Evidências

Nenhuma evidência visual foi coletada neste ciclo, pois a análise foi feita diretamente no projeto `firmus-app`, sem execução no navegador.

## Decisão do ciclo

Preparado para execução manual futura.

O módulo Entrada assistida agora possui BDD, casos de teste, checklist de pré-execução e plano de evidências prontos para um ciclo real posterior.

## Riscos conhecidos

- Comportamento visual real ainda não validado em navegador.
- Responsividade ainda não validada por viewport real.
- Parsing real ainda precisa ser confirmado em execução manual.
- Frases ambíguas precisam ser avaliadas com massa de dados realista.
- Criação de entidades a partir da entrada ainda precisa ser validada em runtime.
- Possíveis diferenças entre código analisado e comportamento em runtime.
- Evidências ainda precisam ser coletadas em ciclo futuro.
- Qualidade da entrada assistida depende da clareza das regras implementadas.

## Próximos passos

- Iniciar execução manual do módulo Entrada assistida em ciclo futuro.
- Executar TC-ASSIST-001 a TC-ASSIST-027.
- Coletar screenshots reais conforme plano de evidências.
- Registrar bugs funcionais se observados.
- Atualizar matriz de cobertura após execução real.
- Reavaliar Go/No-Go do módulo após validação em UI.

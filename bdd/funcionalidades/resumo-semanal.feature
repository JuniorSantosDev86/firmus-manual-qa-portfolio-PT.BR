# Status: Planejado.
# Base de análise: inspeção estática do projeto firmus-app.
# Observação: Estes cenários BDD descrevem o comportamento esperado do módulo Resumo semanal e ainda precisam de execução manual via navegador em ciclo futuro.

@planejado @resumo-semanal @weekly-summary @analise-estatica
Funcionalidade: Resumo semanal
  Como usuário autenticado do Firmus
  Quero acessar o Resumo semanal
  Para acompanhar pendências, recebimentos, lembretes e atividade recente da operação

  Contexto:
    Dado que o usuário está autenticado no Firmus
    E a rota "/weekly-summary" está disponível

  @smoke @navegacao
  Cenário: BDD-WEEK-001 — Acesso à rota de Resumo semanal
    Quando o usuário acessa a rota "/weekly-summary"
    Então a página deve exibir o título "Resumo semanal"
    E deve exibir a descrição "Leitura objetiva da operação com base no que já foi registrado no sistema."

  @smoke @qualidade
  Cenário: BDD-WEEK-002 — Identificação visual do módulo
    Quando a página de Resumo semanal é carregada
    Então deve existir o cabeçalho principal do módulo
    E o conteúdo deve estar organizado em painéis de resumo e listas operacionais

  @periodo @formatacao
  Cenário: BDD-WEEK-003 — Exibição do período semanal
    Quando o módulo calcula o período de referência
    Então deve exibir o rótulo "Período"
    E deve mostrar o intervalo no formato "dd/mm/aaaa até dd/mm/aaaa"

  @metricas @financeiro
  Cenário: BDD-WEEK-004 — Exibir cartões de totalização do período
    Quando houver dados de cobrança e lembretes
    Então devem ser exibidos os cartões "Recebido no período", "Em aberto", "Em atraso", "Lembretes pendentes" e "Lembretes concluídos"

  @estado-vazio @metricas
  Cenário: BDD-WEEK-005 — Totais zerados sem dados
    Quando não existir dado persistido de cobranças e lembretes
    Então os cartões financeiros devem permanecer com valor monetário formatado em reais
    E os contadores de lembretes devem permanecer com zero

  @insights @pendencias
  Cenário: BDD-WEEK-006 — Exibir seção de destaques
    Quando houver pendências ou recebimentos no período
    Então a seção "Destaques" deve listar mensagens textuais derivadas dos dados

  @estado-vazio @insights
  Cenário: BDD-WEEK-007 — Fallback de destaques sem atividade
    Quando não houver pendências, recebimentos e atividade no período
    Então a seção "Destaques" deve informar "Sem pendências ou recebimentos registrados no período."

  @cobrancas @pendencias
  Cenário: BDD-WEEK-008 — Cobranças vencidas com dados
    Quando existir cobrança pendente com status em atraso
    Então a seção "Cobranças vencidas" deve listar o item
    E cada item deve exibir identificador parcial, vencimento e valor

  @cobrancas @estado-vazio
  Cenário: BDD-WEEK-009 — Cobranças vencidas sem dados
    Quando não existir cobrança vencida
    Então a seção "Cobranças vencidas" deve exibir "Nenhuma cobrança vencida."

  @cobrancas @periodo
  Cenário: BDD-WEEK-010 — Cobranças próximas dentro da janela
    Quando existir cobrança pendente com vencimento entre a data final da semana e os próximos 7 dias
    Então a seção "Cobranças próximas" deve listar o item esperado

  @cobrancas @estado-vazio
  Cenário: BDD-WEEK-011 — Cobranças próximas sem dados
    Quando não existir cobrança próxima
    Então a seção "Cobranças próximas" deve exibir "Nenhuma cobrança próxima."

  @lembretes @pendencias
  Cenário: BDD-WEEK-012 — Lembretes pendentes com dados
    Quando existir lembrete com status pendente
    Então a seção "Lembretes pendentes" deve listar título e vencimento

  @lembretes @estado-vazio
  Cenário: BDD-WEEK-013 — Lembretes pendentes sem dados
    Quando não existir lembrete pendente
    Então a seção "Lembretes pendentes" deve exibir "Nenhum lembrete pendente."

  @lembretes @periodo
  Cenário: BDD-WEEK-014 — Lembretes concluídos no período com dados
    Quando existir lembrete concluído dentro do período semanal
    Então a seção "Lembretes concluídos no período" deve listar o lembrete
    E deve exibir a data de conclusão

  @lembretes @estado-vazio
  Cenário: BDD-WEEK-015 — Lembretes concluídos no período sem dados
    Quando não existir lembrete concluído no período semanal
    Então a seção "Lembretes concluídos no período" deve exibir "Nenhum lembrete concluído no período."

  @atividades @insights
  Cenário: BDD-WEEK-016 — Atividade recente com dados
    Quando existirem eventos na timeline dentro do período semanal
    Então a seção "Atividade recente" deve listar no máximo 8 eventos mais recentes
    E cada item deve exibir tipo amigável, entidade e data/hora

  @atividades @estado-vazio
  Cenário: BDD-WEEK-017 — Atividade recente sem dados
    Quando não existirem eventos no período semanal
    Então a seção "Atividade recente" deve exibir "Nenhuma atividade recente."

  @formatacao @financeiro
  Cenário: BDD-WEEK-018 — Formatação monetária em real brasileiro
    Quando valores monetários forem exibidos nos cartões e listas
    Então os valores devem estar formatados com locale "pt-BR" e moeda "BRL"

  @formatacao @periodo
  Cenário: BDD-WEEK-019 — Formatação de datas
    Quando datas de vencimento e conclusão forem exibidas
    Então devem aparecer em formato de data local pt-BR
    E datas ausentes ou inválidas devem aparecer como "Sem data"

  @navegacao @dashboard
  Cenário: BDD-WEEK-020 — Navegação entre Dashboard e Resumo semanal
    Quando o usuário utilizar os itens de navegação "Dashboard" e "Resumo semanal"
    Então deve conseguir alternar entre as rotas "/" e "/weekly-summary"

  @refresh @analise-estatica
  Cenário: BDD-WEEK-021 — Comportamento após refresh
    Quando a página de Resumo semanal for recarregada
    Então o módulo deve recalcular o resumo com base nas fontes locais de dados
    E deve manter o período semanal consistente

  @responsivo @desktop @mobile @qualidade
  Cenário: BDD-WEEK-022 — Legibilidade em desktop e mobile-like
    Quando o módulo for visualizado em viewport desktop e mobile-like
    Então os blocos devem permanecer legíveis e sem mensagens técnicas confusas
    Mas a validação visual final deve ocorrer em execução manual futura

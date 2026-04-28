# Status: Planejado.
# Base de análise: inspeção estática do projeto firmus-app.
# Observação: Estes cenários BDD descrevem o comportamento esperado do módulo Plano e ainda precisam de execução manual via navegador em ciclo futuro.

@planejado @plano @analise-estatica @smoke
Funcionalidade: Plano e limites do Firmus
  Como usuário autenticado da área interna
  Quero acessar o módulo Plano
  Para entender plano atual, recursos liberados, bloqueios e limites antes de decidir próximos passos

  Contexto:
    Dado que o usuário está autenticado na aplicação
    E a navegação principal exibe o item "Plano"
    E o módulo está disponível na rota interna "/plan"

  @planejado @plano @smoke @navegacao
  Cenário: BDD-PLAN-001 — Acessar o módulo pela navegação principal
    Quando o usuário acessa o item "Plano" na navegação principal
    Então o sistema deve direcionar para a rota "/plan"
    E deve exibir o cabeçalho "Plano e limites"

  @planejado @plano @smoke @analise-estatica
  Cenário: BDD-PLAN-002 — Exibir carregamento inicial sem quebra
    Quando o módulo Plano ainda estiver carregando dados de entitlements
    Então a tela deve exibir a mensagem "Carregando plano e limites..."
    E não deve exibir erro técnico para o usuário

  @planejado @plano @visual @qualidade
  Cenário: BDD-PLAN-003 — Exibir identificação textual clara do módulo
    Quando o usuário visualizar a página de Plano
    Então o título principal deve ser "Plano e limites"
    E a descrição do módulo deve indicar controle de plano atual, recursos e limites

  @planejado @plano @beneficios
  Cenário: BDD-PLAN-004 — Exibir plano atual com identificação de tier
    Quando o módulo estiver carregado
    Então o sistema deve exibir "Plano atual" com um tier válido
    E os tiers disponíveis devem ser "Free", "Plus" e "Pro"

  @planejado @plano @beneficios @upgrade
  Cenário: BDD-PLAN-005 — Permitir troca local de tier para simulação de entitlement
    Quando o usuário selecionar um tier diferente em "Free", "Plus" ou "Pro"
    Então o plano atual exibido deve ser atualizado
    E os painéis de recursos e limites devem refletir o tier selecionado

  @planejado @plano @beneficios
  Cenário: BDD-PLAN-006 — Exibir recursos liberados de forma compreensível
    Quando houver recursos liberados no plano atual
    Então o painel "Recursos liberados" deve listar os recursos em PT-BR
    E cada item liberado deve comunicar que está disponível no plano

  @planejado @plano @beneficios
  Cenário: BDD-PLAN-007 — Exibir fallback quando não houver recurso premium liberado
    Dado que o plano atual não libera recursos premium
    Quando o usuário acessar o painel "Recursos liberados"
    Então o sistema deve exibir "Nenhum recurso premium liberado."
    E deve exibir orientação textual sobre base operacional

  @planejado @plano @bloqueio
  Cenário: BDD-PLAN-008 — Exibir recursos bloqueados com motivo de liberação
    Quando houver recursos bloqueados no plano atual
    Então o painel "Recursos bloqueados" deve listar os recursos indisponíveis
    E cada recurso deve exibir mensagem de liberação por plano mínimo

  @planejado @plano @bloqueio @upgrade
  Cenário: BDD-PLAN-009 — Exibir fallback quando não houver bloqueios premium
    Dado que o plano atual libera todos os recursos mapeados
    Quando o usuário acessar o painel "Recursos bloqueados"
    Então o sistema deve exibir "Nenhum bloqueio premium ativo."
    E deve indicar que os recursos do bloco estão liberados

  @planejado @plano @limites
  Cenário: BDD-PLAN-010 — Exibir limite quantitativo do plano
    Quando o usuário visualizar o painel "Limites do plano"
    Então o sistema deve exibir "Uso atual" e "Limite" para o recurso de modelos
    E deve exibir "Sem limite" quando o plano não tiver teto numérico

  @planejado @plano @limites @bloqueio
  Cenário: BDD-PLAN-011 — Exibir mensagem de limite atingido em PT-BR
    Dado que o uso atual atingiu o limite do plano
    Quando o usuário visualizar o card de limite correspondente
    Então deve ser exibida mensagem em PT-BR informando limite atingido
    E a mensagem não deve conter placeholder técnico

  @planejado @plano @upgrade @navegacao
  Cenário: BDD-PLAN-012 — Exibir CTA equivalente para usuário bloqueado em recursos premium
    Dado que o usuário acessou um recurso premium bloqueado em outro módulo
    Quando o estado bloqueado for exibido
    Então deve existir CTA "Abrir plano e limites"
    E o CTA deve direcionar para a rota "/plan"

  @planejado @plano @navegacao
  Cenário: BDD-PLAN-013 — Navegar entre Plano e Dashboard
    Quando o usuário navegar de Plano para Dashboard e retornar para Plano
    Então o módulo deve continuar acessível
    E o cabeçalho "Plano e limites" deve permanecer consistente

  @planejado @plano @refresh
  Cenário: BDD-PLAN-014 — Manter consistência após refresh
    Quando o usuário atualizar a rota "/plan"
    Então o módulo deve recarregar sem tela quebrada
    E deve manter consistência de plano atual com persistência local

  @planejado @plano @responsivo @desktop @mobile @visual
  Cenário: BDD-PLAN-015 — Preservar legibilidade em desktop e mobile-like
    Quando o módulo for validado em viewport desktop
    E também em viewport mobile-like
    Então os painéis de plano, recursos e limites devem permanecer legíveis
    Mas a validação visual real depende de execução manual futura em navegador

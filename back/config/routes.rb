Rails.application.routes.draw do
  scope :api, defaults: {format: :json} do
    resources :cultivos
    resources :usuarios
    resources :fazenda_has_planos
    resources :fazendas
    resources :pessoa_fisicas
    resources :pessoa_juridicas
    resources :pessoas
    resources :planos
    resources :tipo_cultivos
    resources :plantios
    resources :tipo_movimentacaos
    resources :status_plantios
    resources :areas
    resources :tipo_solos
    resources :funcionarios
    resources :cargos
    resources :local_fisicos
    resources :acesso_usuario_fazendas
  end
end

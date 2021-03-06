Rails.application.routes.draw do
  apipie
  scope :api, defaults: {format: :json} do

    # login
    get 'auth/login', to: 'authentication#authenticate'

    # cadastro
    post 'signup',     to: 'usuarios#create'
    
    get 'colheitas',       to: 'colheitas#index'
    get 'colheitas_week',  to: 'colheitas#get_week'
    get 'colheitas_day',   to: 'colheitas#get_day'
    get 'colheitas_month', to: 'colheitas#get_month'
    get 'colheitas_year',  to: 'colheitas#get_year'
    get 'area_ocupada',    to: 'areas#get_areas_total_usadas'
    get 'area_disponivel', to: 'areas#get_areas_total_disponiveis'
    get 'area_total',      to: 'areas#get_areas_total'
    get 'local_is_used',   to: 'local_fisicos#local_is_used'

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

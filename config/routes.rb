Annotot::Engine.routes.draw do
  resources :annotations, path: '/', except: %i[new edit], defaults: { format: :json } do
    collection do
      get 'lists'
      get 'pages'
    end
  end
end

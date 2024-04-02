Rails.application.routes.draw do
  resource :merchant, only: [:show] do
    scope module: :merchants do
      resource :site, only: [:show, :update]
    end
  end
end

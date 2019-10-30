Rails.application.routes.draw do
  resources :tasks
  # resouce 自身のプロフィールのようなアプリケーション上に一つしかないようなリソースをREST的にルーティング
  # resouces 複数のルーティングを作成
end

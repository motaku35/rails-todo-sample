#Controllerとはユーザかrのリクエストを受け取り,ModelやViewと連携しながら結果をユーザに返す機能
class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
end
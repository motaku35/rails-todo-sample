#Controllerとはユーザかrのリクエストを受け取り,ModelやViewと連携しながら結果をユーザに返す機能
class TasksController < ApplicationController
  def index
    #limit_dateに近いものから順位並べる
    @tasks = Task.order('start_date').all
  end

  #tasks/newにアクセスする時に使われる
  def new
    @task = Task.new
  end

  #taskを追加する時に使われる
  def create
    @task = Task.create(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render 'new'
    end
  end

  #editアクションを追加
  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end



  private
  #外部からメソッドの使用をできないようにする

  #ストロングパラメータ
  # viewから得られる必要な値だけを許可して使う
  # require(:task)taskの中の情報のみを限定
  # permit(:title)taskの中のtitileのみ情報を限定
  def task_params
    params.require(:task).permit(:title, :start_date, :end_date)
  end
end
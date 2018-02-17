class ParamsController < ApplicationController

  def show
    @login = true
    @method = "POSTメソッドでの送信"
    @food = params[:food]
    @sports = params[:sports]
    @book = params[:book]
    @hobby = params[:hobby]
    if params[:dinner].nil?
      @text = "選択されていません："
      @dinner = ["No Data"]
    else
      @text = "本日のディナー："
      @dinner = params[:dinner]
    end
  end

  def show_get
    @login = true
    @method = "GETメソッドでの送信"
    @food = params[:food]
    @sports = params[:sports]
    @book = params[:book]
  end

end

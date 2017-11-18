class Manage::NewsController < Manage::ApplicationController
  before_action :authenticate_admin!
  
  def index
    @news = News.all
  end

  def new
    @news = News.new
  end

  def create
    @news = News.new(news_params)
    if @news.save
      flash[:success] = "新闻创建成功"
      redirect_to manage_news_index_path
    else
      flash[:error] = "新闻创建失败"
      render :new
    end
  end

  def edit
    @news = News.find(params[:id])
  end

  def update
    @news = News.find(params[:id])
    if @news.update(news_params)
      flash[:success] = "新闻更新成功"
      render :edit
    else
      flash[:error] = "新闻更新失败"
      render :edit
    end
  end

  def destroy
    @news = News.find(params[:id])
    @news.destroy
    redirect_to manage_news_index_path
  end

  private
    def news_params
      params.require(:news).permit(:title, :content)
    end
end

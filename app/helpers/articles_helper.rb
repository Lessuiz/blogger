module ArticlesHelper
  def article_params
    params.require(:article).permit(:body, :title, :tag_list)
  end
end

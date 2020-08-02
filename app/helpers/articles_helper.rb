module ArticlesHelper
  def article_params
    params.require(:article).permit(:body, :title, :tag_list, :image)
  end
end

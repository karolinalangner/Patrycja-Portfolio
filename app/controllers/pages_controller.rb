class PagesController < ApplicationController
  def home

  end

  def kontakt
    @contact = Contact.new
  end

  def dlaczego_warto_zaufac
  end
  
  # Portfolio kategorie

  def teksty_reklamowe
    #pokaz wszystkie teksty (Tekst.all) gdzie kategoria = "reklama"
  end

  def blog
    @articles = Article.paginate(page: params[:page])
  end

  
end

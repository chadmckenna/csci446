class ArticlesController < ApplicationController
  # GET /articles
  # GET /articles.xml
  before_filter :load_authors, :only => [:new, :edit, :update]
  
  def initialize
    subtitles = [
      "with a name .com hipsters love!",
      "what's 'Articl' in Spanish anyway?",
      "my cousin works for Bit.ly",
      "not just for the country of Spain"
    ]
    @subtitle = subtitles[rand(subtitles.length)]
  end
  
  def index
    #@paginator, @articles = paginate :articles, :per_page => 10                                :
    @article_count = Article.all.count
    @articles = Article.paginate :per_page => 10, :page => params[:page]
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @articles }
    end
  end

  # GET /articles/1
  # GET /articles/1.xml
  def show
    @article = Article.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @article }
    end
  end

  # GET /articles/new
  # GET /articles/new.xml
  def new
    @article = Article.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @article }
    end
  end

  # GET /articles/1/edit
  def edit
    set_edit_return_url
    @article = Article.find(params[:id]) 
  end

  # POST /articles
  # POST /articles.xml
  def create
    @article = Article.new(params[:article])

    respond_to do |format|
      if @article.save
        format.html { redirect_to(@article, :notice => 'Article was successfully created.') }
        format.xml  { render :xml => @article, :status => :created, :location => @article }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @article.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /articles/1
  # PUT /articles/1.xml
  def update
    @article = Article.find(params[:id])
    
    if @article.num_edits.nil?
      @article.num_edits = 0
    end
    @article.num_edits += 1

    respond_to do |format|
      if @article.update_attributes(params[:article])
        format.html { redirect_to(session[:edit_redirect], :notice => 'Article was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @article.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.xml
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    respond_to do |format|
      format.html { redirect_to(articles_url) }
      format.xml  { head :ok }
    end
  end
  
private
  def set_edit_return_url
    session[:edit_redirect] = request.referer
  end    
  
  def load_authors
    @authors = Author.all
  end
end

class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    @article.thumbnail_img.destroy
    @article.header_img.destroy
    @article.footer_img1.destroy
    @article.footer_img2.destroy
    @article.footer_img3.destroy
    @article.interview_img.destroy

    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:company_name, :address, :thumbnail_img, :date, :position, :job_descripton, :avilities, :employees, :work_place, :work_start, :work_end, :holiday, :salary, :treatment, :interview_content, :employment_type_pro, :employment_type_student, :employment_type_part, :work_time_morning, :work_time_afternoon, :work_time_break, :work_time_study, :company_color1, :company_color1_value, :company_color2, :company_color2_value, :company_color3, :company_color3_value, :overtime, :career_steppe1, :career_steppe2, :career_steppe3, :career_steppe4, :career_steppe5, :header_img, :footer_img1, :footer_img2, :footer_img3, :interview_img)

    end
end

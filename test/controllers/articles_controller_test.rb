require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article = articles(:one)
  end

  test "should get index" do
    get articles_url
    assert_response :success
  end

  test "should get new" do
    get new_article_url
    assert_response :success
  end

  test "should create article" do
    assert_difference('Article.count') do
      post articles_url, params: { article: { address: @article.address, avilities: @article.avilities, career_steppe: @article.career_steppe, company_color1: @article.company_color1, company_color1_value: @article.company_color1_value, company_color2: @article.company_color2, company_color2_value: @article.company_color2_value, company_color3: @article.company_color3, company_color3_value: @article.company_color3_value, company_name: @article.company_name, date: @article.date, employees: @article.employees, employment_type_part: @article.employment_type_part, employment_type_pro: @article.employment_type_pro, employment_type_student: @article.employment_type_student, holiday: @article.holiday, interview_content: @article.interview_content, job_descripton: @article.job_descripton, overtime: @article.overtime, position: @article.position, salary: @article.salary, thumbnail_img: @article.thumbnail_img, treatment: @article.treatment, work_end: @article.work_end, work_place: @article.work_place, work_start: @article.work_start, work_time_afternoon: @article.work_time_afternoon, work_time_break: @article.work_time_break, work_time_morning: @article.work_time_morning, work_time_study: @article.work_time_study } }
    end

    assert_redirected_to article_url(Article.last)
  end

  test "should show article" do
    get article_url(@article)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_url(@article)
    assert_response :success
  end

  test "should update article" do
    patch article_url(@article), params: { article: { address: @article.address, avilities: @article.avilities, career_steppe: @article.career_steppe, company_color1: @article.company_color1, company_color1_value: @article.company_color1_value, company_color2: @article.company_color2, company_color2_value: @article.company_color2_value, company_color3: @article.company_color3, company_color3_value: @article.company_color3_value, company_name: @article.company_name, date: @article.date, employees: @article.employees, employment_type_part: @article.employment_type_part, employment_type_pro: @article.employment_type_pro, employment_type_student: @article.employment_type_student, holiday: @article.holiday, interview_content: @article.interview_content, job_descripton: @article.job_descripton, overtime: @article.overtime, position: @article.position, salary: @article.salary, thumbnail_img: @article.thumbnail_img, treatment: @article.treatment, work_end: @article.work_end, work_place: @article.work_place, work_start: @article.work_start, work_time_afternoon: @article.work_time_afternoon, work_time_break: @article.work_time_break, work_time_morning: @article.work_time_morning, work_time_study: @article.work_time_study } }
    assert_redirected_to article_url(@article)
  end

  test "should destroy article" do
    assert_difference('Article.count', -1) do
      delete article_url(@article)
    end

    assert_redirected_to articles_url
  end
end

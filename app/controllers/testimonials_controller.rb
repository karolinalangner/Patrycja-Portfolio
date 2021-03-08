class TestimonialsController < ApplicationController
  before_action :authenticate_user!, except:  %i[ index ]
  def new
    @testimonial = Testimonial.new
  end

  def create
    @testimonial = Testimonial.new(testimonial_params)
      if @testimonial.save
        redirect_to dlaczego_warto_zaufac_path
      else
        flash[:alert] = "Błąd"
        render :new
      end  
  end

  def destroy
    @testimonial = Testimonial.find(params[:id])
    @testimonial.destroy
    redirect_to dlaczego_warto_zaufac_path
  end

  def edit
    @testimonial = Testimonial.find(params[:id])
  end

  def update
    @testimonial = Testimonial.find(params[:id]) 
    @testimonial.update(testimonial_params)
    redirect_to dlaczego_warto_zaufac_path
  end

  private
  def testimonial_params
    params.require(:testimonial).permit(:author, :content, :company, :link)
  end

end

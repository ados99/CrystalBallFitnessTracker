
class InputsController < ApplicationController
  before_action :set_input, only: [:show, :edit, :update, :destroy]

  # GET /inputs
  # GET /inputs.json
  def index
    @inputs = Input.all
    respond_to do |format|
      format.html
    end


  end

  # GET /inputs/1
  # GET /inputs/1.json
  def show
    @input = Input.find(params['id'])
  end

  # GET /inputs/new
  def new
    @input = Input.new
  end

  # GET /inputs/1/edit
  def edit
  end

  # POST /inputs
  # POST /inputs.json
  def create
    @input = Input.new(input_params)
    if @input.valid?
      @input.bmi = calculate_bmi(@input.height_feet,@input.height_inches,@input.weight)
      @input.sleep_time = Time.at(@input.wake_up_time - @input.bed_time).utc.strftime("%H:%M")
      @input.rec_cal_count = calculate_cal_count(@input.weight,@input.height_feet,@input.height_inches,
                                               @input.age,@input.gender)
      end
    respond_to do |format|
      if @input.save
        format.html { redirect_to @input}
        format.json { render :show, status: :created, location: @input }
      else
        format.html { render :new }
        format.json { render json: @input.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inputs/1
  # PATCH/PUT /inputs/1.json
  def update
    respond_to do |format|
      if @input.update(input_params)
        format.html { redirect_to @input, notice: 'Input was successfully updated.' }
        format.json { render :show, status: :ok, location: @input }
      else
        format.html { render :edit }
        format.json { render json: @input.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inputs/1
  # DELETE /inputs/1.json
  def destroy
    @input.destroy
    respond_to do |format|
      format.html { redirect_to inputs_url, notice: 'Input was successfully destroyed.'}
      format.json { head :no_content }
    end
  end

  def calculate_bmi(feet,inches,weight)
    height = feet * 12 + inches
    bmi = (703.0 * weight / (height ** 2)).round(1)
  end

  def calculate_cal_count(weight,feet,inches,age,gender)
    cal_count = (0.453592 * weight * 10) + (6.25 * ((12*feet+inches) * 2.54)) - (5 * age)
    gender == "Male"?cal_count+=5:cal_count-=161
    cal_count
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_input
    @input = Input.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def input_params
    params.require(:input).permit(:age, :gender, :height_inches, :height_feet,
                                  :weight, :wake_up_time , :bed_time, :exercise_time)
  end
end
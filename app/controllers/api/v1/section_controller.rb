class Api::V1::SectionController < Api::V1::BaseController

  # POST /section
  def create
    render json: { :response => 'POST test' }
  end

  # GET /section/:id
  def show
    section = Section.find(params[:id])
    render json: {
      :response => {
        :lines => section.lines,
        :annotations => section.annotation_groups,
      }
    }
  end

  # PUT /section/:id
  def update
    render json: { :response => 'PUT :id test' }
  end

  # DELETE /section/:id
  def destroy
    render json: { :response => 'DELETE :id test' }
  end

  private

  def todo_params
    # whitelist params
    params.permit()
  end

end

class TasksController < AdminController
  def new
    pid=params[:pid]
    @obj=Task.new(parent_id:pid,pid:pid,active:true)   
  end

  private
    # Use callbacks to share common setup or constraints between actions.


    # Only allow a trusted parameter "white list" through.
    def get_params
      #params.require(:menu).permit(:name, :title, :url, :ancestry, :pid, :order_by, :user_id)
      params.require(:task).permit!
    end

end
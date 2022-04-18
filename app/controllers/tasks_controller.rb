class TasksController < InheritedResources::Base

  private

    def task_params
      params.require(:task).permit(:project_id, :user_id, :name, :description, :compldated)
    end

end

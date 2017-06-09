class ProjectsController < ApplicationController
  before_action :find_project, only: %i[show edit destroy update]
  def index
    @projects = Project.all.order('created_at desc').paginate(page: params[:page], per_page: 10)
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project, notice: "Project #{@project.title} was created successfully!"
    else
      render 'new', notice: 'Project Creation was unsuccessful, Ray.  Try again!'
    end
  end

  def show; end

  def edit; end

  def update
    if @project.update(project_params)
      redirect_to @project, notice: "Project #{@project.title} was updated successfully!"
    else
      render 'edit', notice: 'Something went wrong, Ray.  Please Try Again!'
    end
  end

  def destroy
    @project.destroy
    redirect_to project_path, notice: 'Project was deleted successfully!'
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :link, :slug)
  end

  def find_project
    @project = Project.friendly.find(params[:id])
  end
end

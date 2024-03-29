class ToolsController < ApplicationController
  before_action :set_tool, only: [:show, :edit, :update, :destroy]
  before_action :admin_only, only: [:edit, :update, :new, :create, :destroy]

  def index
    @tools = Tool.all
  end

  def show
    @procon = Procon.new
  end

  def new
    @tool = Tool.new
  end

  def edit
  end

  def create
    @tool = Tool.new(tool_params)

    if @tool.save
      redirect_to @tool, notice: 'Tool was successfully created.'
    else
      render :new
    end
  end

  def update
    if @tool.update(tool_params)
      redirect_to @tool, notice: 'Tool was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @tool.destroy
    redirect_to tools_url, notice: 'Tool was successfully destroyed.'
  end

  private

    def set_tool
      @tool = Tool.find(params[:id])
    end

    def tool_params
      params.require(:tool).permit(:name, :subtitle, :description, :less_busy, :less_stressed, :happier, :more_relaxed, :less_panicked, :more_motivated, :less_worried, :more_organized, :other, :subscribers_only, :find_by_name)
    end
end

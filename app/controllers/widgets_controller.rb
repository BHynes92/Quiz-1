class WidgetsController < ApplicationController
  def index
    @widgets = Widget.all
  end

  def new
    @widget = Widget.new
  end

  def create
    Widget.create(widget_params)
    redirect_to root_path
  end

  private

  def widget_params
    params.require(:widget).permit(:title, :message)
  end
end

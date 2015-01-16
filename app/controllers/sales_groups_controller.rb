class SalesGroupsController < ApplicationController
  before_action :set_sales_group, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @sales_groups = SalesGroup.all
    respond_with(@sales_groups)
  end

  def show
    respond_with(@sales_group)
  end

  def new
    @sales_group = SalesGroup.new
    respond_with(@sales_group)
  end

  def edit
  end

  def create
    @sales_group = SalesGroup.new(sales_group_params)
    flash[:notice] = 'SalesGroup was successfully created.' if @sales_group.save
    respond_with(@sales_group)
  end

  def update
    flash[:notice] = 'SalesGroup was successfully updated.' if @sales_group.update(sales_group_params)
    respond_with(@sales_group)
  end

  def destroy
    @sales_group.destroy
    respond_with(@sales_group)
  end

  private
    def set_sales_group
      @sales_group = SalesGroup.find(params[:id])
    end

    def sales_group_params
      params[:sales_group]
    end
end

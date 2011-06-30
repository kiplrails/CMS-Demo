module Admin
  class DriversController < ApplicationController
    before_filter :load_company

    def index
      @drivers = @company.drivers
    end

    def new
      @driver = @company.drivers.build
    end

    def create
      @driver = @company.drivers.build(params[:driver])
      if @driver.save
        flash[:notice] = "Driver created successfully"
        redirect_to admin_company_drivers_path(@company)
      else
        render :new
      end
    end

    def show
      @driver = @company.drivers.find(params[:id])
    end

    def edit
      @driver = @company.drivers.find(params[:id])
    end

    def update
      @driver = @company.drivers.find(params[:id])
      if @driver.update_attributes(params[:driver])
        flash[:notice] = "Driver saved successfully"
        redirect_to admin_company_drivers_path(@company)
      else
        render :new
      end
    end

    protected
    def load_company
      @company = Company.find(params[:company_id])
    end
  end
end
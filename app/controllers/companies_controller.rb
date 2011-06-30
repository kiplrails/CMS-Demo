class CompaniesController < ApplicationController
  def index
    @companies = current_site.companies.all
  end

  def show
    @company = current_site.companies.find(params[:id])
    @drivers = @company.drivers
  end
end

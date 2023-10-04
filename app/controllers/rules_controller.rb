class RulesController < ApplicationController
  before_action :authenticate_admin!, except: [:index]
  
  def new
    @rule = Rule.new
  end
  
  def create
    @rule = Rule.new(rule_params)
    @rule.save
    redirect_to rules_path
  end

  def index
    @rules = Rule.all
    @rule = Rule.new
  end

  def edit
    @rule = Rule.find(params[:id])
  end
  
  def update
    @rule = Rule.find(params[:id])
    @rule.update(rule_params)
    redirect_to rules_path
  end
  
  def destroy
    rule = Rule.find(params[:id])
    rule.destroy
    redirect_to rules_path
  end
  
  private
  def rule_params
    params.require(:rule).permit(:title, :body)
  end
  
end

# frozen_string_literal: true

# Counting value
class LabController < ApplicationController
  include LabHelper
  before_action :check_params, only: :show_xml

  def input; end

  def show_xml
    @res = if params[:numb] == ''
             0
           else
             LabHelper.palin([params[:numb]])
           end
    render xml: LabHelper.palin_to_h(@res)
  end

  def check_params
    # logic for check for digits
    msg = if params[:numb] == '' || params[:numb].nil?
            'Nil class'
          elsif params[:numb].match?(/\D/)
            'Были введены не только цифры'
          end
    redirect_to root_path, notice: msg if msg
  end
end

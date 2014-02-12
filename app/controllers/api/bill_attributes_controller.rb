module Api
  class BillAttributesController < ApplicationController
    include ActionController::MimeResponds
    def index
      @bill_attributes = BillAttribute.all

      respond_to do |format|
        format.csv { send_data @bill_attributes.as_csv }
      end
    end
  end
end
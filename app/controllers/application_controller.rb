class ApplicationController < ActionController::API
  def default_serializer_options
    {root: false}
  end

  def set_access_contol_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Request-Method'] = '*'
  end
end

# frozen_string_literal: true

require 'beanstream/transaction'
require 'beanstream/payments_api'
require 'beanstream/profiles_api'
require 'beanstream/reporting_api'
require 'beanstream/util'
require 'beanstream/exceptions'

module Beanstream
  @url_prefix = 'api.na'
  @url_base = 'bambora.com'
  @url_version = 'v1'
  @ssl_ca_cert = File.dirname(__FILE__) + '/resources/cacert.pem'
  @timeout = 80
  @open_timeout = 40

  class << self
    attr_accessor :url_prefix, :url_base, :url_suffix, :url_version
    attr_accessor :url_payments, :url_return, :url_void
    attr_accessor :ssl_ca_cert, :timeout, :open_timeout
  end

  def self.api_host_url
    "https://#{@url_prefix}.#{url_base}"
  end

  def self.api_base_url
    "/#{url_version}"
  end
end

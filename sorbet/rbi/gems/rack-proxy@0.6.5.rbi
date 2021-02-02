# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rack-proxy` gem.
# Please instead update this file by running `tapioca generate`.

# typed: true

module Rack
  class << self
    def release; end
    def version; end
  end
end

Rack::CACHE_CONTROL = T.let(T.unsafe(nil), String)

Rack::CONTENT_LENGTH = T.let(T.unsafe(nil), String)

Rack::CONTENT_TYPE = T.let(T.unsafe(nil), String)

Rack::DELETE = T.let(T.unsafe(nil), String)

Rack::ETAG = T.let(T.unsafe(nil), String)

Rack::EXPIRES = T.let(T.unsafe(nil), String)

Rack::File = Rack::Files

Rack::GET = T.let(T.unsafe(nil), String)

Rack::HEAD = T.let(T.unsafe(nil), String)

Rack::HTTPS = T.let(T.unsafe(nil), String)

Rack::HTTP_COOKIE = T.let(T.unsafe(nil), String)

Rack::HTTP_HOST = T.let(T.unsafe(nil), String)

Rack::HTTP_PORT = T.let(T.unsafe(nil), String)

Rack::HTTP_VERSION = T.let(T.unsafe(nil), String)

class Rack::HttpStreamingResponse
  def initialize(request, host, port = T.unsafe(nil)); end

  def body; end
  def code; end
  def each(&block); end
  def headers; end
  def read_timeout; end
  def read_timeout=(_); end
  def ssl_version; end
  def ssl_version=(_); end
  def status; end
  def to_s; end
  def use_ssl; end
  def use_ssl=(_); end
  def verify_mode; end
  def verify_mode=(_); end

  protected

  def response; end
  def session; end
end

Rack::LINK = T.let(T.unsafe(nil), String)

Rack::OPTIONS = T.let(T.unsafe(nil), String)

Rack::PATCH = T.let(T.unsafe(nil), String)

Rack::PATH_INFO = T.let(T.unsafe(nil), String)

Rack::POST = T.let(T.unsafe(nil), String)

Rack::PUT = T.let(T.unsafe(nil), String)

class Rack::Proxy
  def initialize(app = T.unsafe(nil), opts = T.unsafe(nil)); end

  def call(env); end
  def rewrite_env(env); end
  def rewrite_response(triplet); end

  protected

  def perform_request(env); end

  class << self
    def extract_http_request_headers(env); end
    def normalize_headers(headers); end

    protected

    def reconstruct_header_name(name); end
  end
end

Rack::Proxy::VERSION = T.let(T.unsafe(nil), String)

Rack::QUERY_STRING = T.let(T.unsafe(nil), String)

Rack::RACK_ERRORS = T.let(T.unsafe(nil), String)

Rack::RACK_HIJACK = T.let(T.unsafe(nil), String)

Rack::RACK_HIJACK_IO = T.let(T.unsafe(nil), String)

Rack::RACK_INPUT = T.let(T.unsafe(nil), String)

Rack::RACK_IS_HIJACK = T.let(T.unsafe(nil), String)

Rack::RACK_LOGGER = T.let(T.unsafe(nil), String)

Rack::RACK_METHODOVERRIDE_ORIGINAL_METHOD = T.let(T.unsafe(nil), String)

Rack::RACK_MULTIPART_BUFFER_SIZE = T.let(T.unsafe(nil), String)

Rack::RACK_MULTIPART_TEMPFILE_FACTORY = T.let(T.unsafe(nil), String)

Rack::RACK_MULTIPROCESS = T.let(T.unsafe(nil), String)

Rack::RACK_MULTITHREAD = T.let(T.unsafe(nil), String)

Rack::RACK_RECURSIVE_INCLUDE = T.let(T.unsafe(nil), String)

Rack::RACK_REQUEST_COOKIE_HASH = T.let(T.unsafe(nil), String)

Rack::RACK_REQUEST_COOKIE_STRING = T.let(T.unsafe(nil), String)

Rack::RACK_REQUEST_FORM_HASH = T.let(T.unsafe(nil), String)

Rack::RACK_REQUEST_FORM_INPUT = T.let(T.unsafe(nil), String)

Rack::RACK_REQUEST_FORM_VARS = T.let(T.unsafe(nil), String)

Rack::RACK_REQUEST_QUERY_HASH = T.let(T.unsafe(nil), String)

Rack::RACK_REQUEST_QUERY_STRING = T.let(T.unsafe(nil), String)

Rack::RACK_RUNONCE = T.let(T.unsafe(nil), String)

Rack::RACK_SESSION = T.let(T.unsafe(nil), String)

Rack::RACK_SESSION_OPTIONS = T.let(T.unsafe(nil), String)

Rack::RACK_SESSION_UNPACKED_COOKIE_DATA = T.let(T.unsafe(nil), String)

Rack::RACK_SHOWSTATUS_DETAIL = T.let(T.unsafe(nil), String)

Rack::RACK_TEMPFILES = T.let(T.unsafe(nil), String)

Rack::RACK_URL_SCHEME = T.let(T.unsafe(nil), String)

Rack::RACK_VERSION = T.let(T.unsafe(nil), String)

Rack::RELEASE = T.let(T.unsafe(nil), String)

Rack::REQUEST_METHOD = T.let(T.unsafe(nil), String)

Rack::REQUEST_PATH = T.let(T.unsafe(nil), String)

Rack::SCRIPT_NAME = T.let(T.unsafe(nil), String)

Rack::SERVER_NAME = T.let(T.unsafe(nil), String)

Rack::SERVER_PORT = T.let(T.unsafe(nil), String)

Rack::SERVER_PROTOCOL = T.let(T.unsafe(nil), String)

Rack::SET_COOKIE = T.let(T.unsafe(nil), String)

Rack::TRACE = T.let(T.unsafe(nil), String)

Rack::TRANSFER_ENCODING = T.let(T.unsafe(nil), String)

Rack::UNLINK = T.let(T.unsafe(nil), String)

Rack::VERSION = T.let(T.unsafe(nil), Array)

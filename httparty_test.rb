include 'rubygems'
include 'httparty'
include 'nokogiri'

class Wado
  include HTTParty
  base_uri 'http://localhost:8080/wado2'
  format :xml
  # basic_auth 'username', 'password'
  
  def self.login
    post('/study.xml?ModalitiesInStudy=CT')
  end
  
  def self.get_all_ct
    get('/study.xml?ModalitiesInStudy=CT')
  end
end


# httparty -f xml -a get "http://localhost:8080/wado2/study.xml?ModalitiesInStudy=CT"
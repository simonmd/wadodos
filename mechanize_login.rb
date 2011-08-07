require 'rubygems'
require 'mechanize'

agent = Mechanize.new
page = agent.get("http://localhost:8080/wado2/study.xml?ModalitiesInStudy=CT")
login_form = page.forms.first
login_form.j_username = 'admin'
login_form.j_password = 'admin'

puts login_form.j_username , login_form.j_password
page = agent.submit(login_form, login_form.buttons.first)

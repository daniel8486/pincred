namespace :dev do

  DEFAULT_PASSWORD = 123456

  desc "Configurando.............. Ambiente ........."
  task setup: :development do
    if Rails.env.development?
      show_spinner("Apagando Banco de Dados") { %x(rails db:drop) }
      show_spinner("Criando Banco de Dados") { %x(rails db:create) }
      show_spinner("Migrando Banco de Dados") { %x(rails db:migrate) }
    end

      show_spinner("Cadastrando o ADMIN....") { %x(rails dev:add_default_admin) }
      show_spinner("Cadastrando o USER....") { %x(rails dev:add_default_user) }
    #else
      #puts "Voce esta em Ambiente de Desenvolvimento"
    #end
  end
 
  desc "Adciona Admin"
  task add_default_admin: :environment do
    Admin.create!(
      
      email: 'admin@admin.com',
      password: DEFAULT_PASSWORD,
      password_confirmation: DEFAULT_PASSWORD
    )
  end
  
  desc "Adciona Usuario"
  task add_default_user: :environment do
    User.create!(
      
      email: 'user@admin.com',
      password: DEFAULT_PASSWORD,
      password_confirmation: DEFAULT_PASSWORD
    )
  end

  private

  def show_spinner(msg_start,msg_end = "Concluido! Success")
    spinner = TTY::Spinner.new("[:spinner] #{ msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end  

end

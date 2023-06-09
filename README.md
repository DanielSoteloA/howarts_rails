* Author
    * Daniel Sotelo A.

* ruby version
    * ruby 3.1.1p18 (2022-02-18 revision 53f5fc4236) [x86_64-linux]
	* Rails 7.0.4.3
	* psql (PostgreSQL) 12.14
    * Using faker 3.2.0
    * CDN bootstrap 5.3.0

* Instalación
	* rails new howarts_rails -d postgresql
    * cd howarts_rails
    * rails db:create
    * rails g model Character name:string location:string house:string
    * rails g controller pages index
    * rails db:migrate
    * gem 'faker', '~> 3.0'
    * bundle install
    * seeds.rb
        - harry_potter.md
        - Faker::Movies::HarryPotter
    * rails db:seed

* Modificaciones
	* routes.rb
		- get 'pages/index'
        - root "pages#index"
	* home_controller.rb
		- Metodo index
		- def index    
            - @characters = Character.order(:house)
            - [Listado ordenado por campo house]
        - end

* Despliegue en pagina http://localhost:3000/


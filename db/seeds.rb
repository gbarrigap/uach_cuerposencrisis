# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Crea registros de prueba ssi no existen.
unless !!Repositorio.first
  repositorio = Repositorio.create

    user = User.first || User.create(name: 'Administrador', email: 'cuerposencrisis@gmail.com', password: 'admin')

    dummy_text = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'

    Obra.create(titulo: 'Primera Obra', coreografia: 'Primero Coreógrafo', resumen: dummy_text, user: user)
    Obra.create(titulo: 'Segunda Obra', coreografia: 'Segundo Coreógrafo', resumen: dummy_text, user: user)
    Obra.create(titulo: 'Tercera Obra', coreografia: 'Tercer Coreógrafo', resumen: dummy_text, user: user)
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Crea registros de prueba ssi no existen.
dummy_text = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'

user = User.first || User.create(name: 'Administrador', email: 'cuerposencrisis@gmail.com', password: 'admin')

obra_magnificar = Obra.create(titulo: 'Magnificar', coreografia: 'Claudia Vicuña & Alejandro Cáceres', resumen: dummy_text, user: user)
obra_sin_respiro = Obra.create(titulo: 'Sin Respiro', coreografia: 'Elizabeth Rodríguez', resumen: dummy_text, user: user)
obra_asado = Obra.create(titulo: 'Asado', coreografia: 'Francisca Sazie', resumen: dummy_text, user: user)

Concepto.create(titulo: 'Violencia Nº1')
Concepto.create(titulo: 'Violencia Nº2')

concepto = Concepto.create(titulo: 'Violencia Nº3')
Capsula.create(obra: obra_magnificar, concepto: concepto)
Capsula.create(obra: obra_sin_respiro, concepto: concepto)
Capsula.create(obra: obra_asado, concepto: concepto)

Concepto.create(titulo: 'Estereotipo')
Concepto.create(titulo: 'Domesticidad')
Concepto.create(titulo: 'Espacio')
Concepto.create(titulo: 'Cualidad del movimiento')

Coreografo.create(nombre: 'Francisca Sazie')
Coreografo.create(nombre: 'Paulina Mellado')
Coreografo.create(nombre: 'Elizabeth Rodríguez')
Coreografo.create(nombre: 'xxx')
Coreografo.create(nombre: 'Lorena Hurtado')
Coreografo.create(nombre: 'xxx')
Coreografo.create(nombre: 'La Vitrina')

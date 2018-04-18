# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
	{email: "admin@gmail.com", password: "Passw0rd.", name: "admin", lastname: "admin"},
	{email: "luis@gmail.com", password: "Passw0rd.", name: "Luis", lastname: "Martinez"}
])

users.first.add_role(:admin)


PermitState.create([
	{name_state: "En revisión", abb_state: "ENR"},
	{name_state: "Activo", abb_state: "ACT"},
	{name_state: "Finalizado", abb_state: "FIN"},
	{name_state: "Cancelado", abb_state: "CAN"}
])

PermitType.create([
	{name_type: "Personal", abb_type: "PER"},
	{name_type: "Enfermedad", abb_type: "ENF"},
	{name_type: "Otro", abb_type: "OTR"}
])

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
	{name_state: "En revisión", abb_state: "ENR", state_label_html: "<span class='badge badge-info'>En revisión</span>"},
	{name_state: "Activo", abb_state: "ACT", state_label_html: "<span class='badge badge-success'>Activo</span>"},
	{name_state: "Finalizado", abb_state: "FIN", state_label_html: "<span class='badge badge-primary'>Finalizado</span>"},
	{name_state: "Cancelado", abb_state: "CAN", state_label_html: "<span class='badge badge-secondary'>Cancelado</span>"}
])

PermitType.create([
	{name_type: "Personal", abb_type: "PER", type_label_html: "<span class='badge badge-info'>Personal</span>"},
	{name_type: "Enfermedad", abb_type: "ENF", type_label_html: "<span class='badge badge-warning'>Enfermedad</span>"},
	{name_type: "Otro", abb_type: "OTR", type_label_html: "<span class='badge badge-primary'>Otro</span>"}
])

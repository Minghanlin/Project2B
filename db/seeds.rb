User.create!(name: "Admin",
email: "admin@admin.com",
password: "adminredmart",
password_confirmation: "adminredmart",
admin: true)

User.create!(name: "Son Goku",
email: "goku@goku.com",
password: "gokuredmart",
password_confirmation: "gokuredmart",
admin: false)

User.create!(name: "Vageta",
email: "vegeta@vegeta.com",
password: "vegetaredmart",
password_confirmation: "vegetaredmart",
admin: false)

User.create!(name: "Piccolo Latte",
email: "piccolo@piccolo.com",
password: "piccoloredmart",
password_confirmation: "piccoloredmart",
admin: false)

User.create!(name: "Chi Chi",
email: "chichi@chichi.com",
password: "chichiredmart",
password_confirmation: "chichiredmart",
admin: false)

User.create!(name: "Bulma",
email: "bulma@bulma.com",
password: "bulmaredmart",
password_confirmation: "bulmaredmart",
admin: false)

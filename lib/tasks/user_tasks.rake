desc 'Create AdminSuper'
task create_admin_super: :environment do
  if User.create(email: "superadmin@whichbook.com", is_admin: true, password: "123456")
    puts "Super Admin criado com sucesso!!"
    puts "email: superadmin@whichbook.com e senha: 123456"
  else
    puts "Algo deu errado!"
  end
end

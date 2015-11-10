include Rails.application.routes.url_helpers

begin
  namespace :user do
    task :add_role  => :environment do 
      puts "You will be prompted to enter an email address and password for the new admin"
      puts "Enter an email address:"
      email = STDIN.gets
      puts "Enter one of these roles: (#{User.roles.keys.join(', ')})"
      role = STDIN.gets
      unless email.strip!.blank? || role.strip!.blank?
        user = User.find_by_email(email)
        user.role = role
        if user.save
          puts "The user was updated successfully with role #{role}"
        else
          puts "Sorry, the user was not updated!"
        end
      end
    end
  end
end
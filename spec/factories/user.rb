
# Factory for user
FactoryBot.define do

  factory :user do

    nome { "Priscila Cardoso" }
    email { "capri@gmail.com" }
    instituto { "Instituto de oceanografia" }
    curso { "Oceanografia" }
    info { "Criadora e presidente do grupo MarArmigos, que promove a preservação do mar." }
    link_site { "http://maramigo.com" }
    link_fb { "http://fb.capri.com" }
    link_tt { "http://tt.capri.com" }
    password { "123456789" }

  end
end

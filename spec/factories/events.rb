FactoryBot.define do
  factory :event do
    nome { "Evento incrivel" }
    local { "Rua do matão, 1010" }
    date { "12/12/2019" }
    time { "12:12" }
  end
end

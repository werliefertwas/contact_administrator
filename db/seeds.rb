
contacts = [
  ['Smith', '+49152' + rand(1000..10000).to_s, 1],
  ['Johnson', '+49152' + rand(1000..10000).to_s, 1],
  ['Williams', '+49152' + rand(1000..10000).to_s, 0],
  ['Jones', '+49152' + rand(1000..10000).to_s, 0],
  ['Brown', '+49152' + rand(1000..10000).to_s, 1],
  ['Davis', '+49152' + rand(1000..10000).to_s, 0],
  ['Miller', '+49152' + rand(1000..10000).to_s, 1],
  ['Wilson', '+49152' + rand(1000..10000).to_s, 0],
  ['Bryant   ', '+49152' + rand(1000..10000).to_s, 1],
  ['Alexander  ', '+49152' + rand(1000..10000).to_s, 2],
  ['Russell  ', '+49152' + rand(1000..10000).to_s, 0],
  ['Griffin   ', '+49152' + rand(1000..10000).to_s, 1],
  ['Diaz  ', '+49152' + rand(1000..10000).to_s, 0],
  ['Hayes ', '+49152' + rand(1000..10000).to_s, 2]
]
 

contacts.each do |last_name, phone, status|
  Contact.create!(last_name: last_name, phone: phone, status: status, body: 'seeds', created_at: Time.now - rand(1000).minutes)
end

puts 'Seeds done.'
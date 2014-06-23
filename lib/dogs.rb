class Dogs
  POOR      = (0..5).to_a.sample
  AVERAGE   = (6..10).to_a.sample
  EXCELLENT = (11..15).to_a.sample

  def initialize
    joe   = {
      :name => {:first => "Joe", :last=> "Smith"},
      :owner_quality => EXCELLENT
    }
    sarah = {
      :name => {:first => "Sarah", :last => "Darnum"},
      :owner_quality => AVERAGE
    }
    andrew = {
      :name => {:first => "Andrew", :last => "Beter"},
      :owner_quality => AVERAGE
    }

    @dogs = [
      {name: "Fido",     size: :large,  owner: joe},
      {name: "Yapper",   size: :small,  owner: joe},
      {name: "Bruiser",  size: :large,  owner: joe},
      {name: "Tank",     size: :huge,   owner: sarah},
      {name: "Beast",    size: :large,  owner: sarah},
      {name: "Harleigh", size: :medium, owner: andrew},
      {name: "Trixie",   size: :small,  owner: andrew}
    ]
  end

  # only edit below this line

  def small_dogs

  sdogs = []
  @dogs.each do |dog|
      if dog[:size] == :small
        sdogs.push({name: dog[:name]})
      end
  end
  sdogs
  end

  def huge_dog

    hdogs = []
    @dogs.each do |dog|
      if dog[:size] == :huge
        hdogs.push({name: dog[:name]})
      end
    end
    hdogs
  end

  def large_dog_names
  ldogs = []
  @dogs.each do |dog|
    if dog[:size] == :large
      ldogs.push(dog[:name])
    end
  end
  ldogs
  end

  def joes_large_dogs
    jdogs = []
    @dogs.each do |dog|
      if dog[:size] == :large && dog[:owner][:name][:first] == "Joe"
      jdogs.push(dog[:name])
      end
    end
    jdogs
  end

  def sizes
    sizes = []
    @dogs.each do |dog|
      sizes.push(dog[:size])
    end
    sizes.uniq

  end

  def owners
    owners = []
    @dogs.each do |dogs|
      owners.push("#{dogs[:owner][:name][:first]} #{dogs[:owner][:name][:last]}")
    end
    owners.uniq
  end

  def average_owners
    owners = []
    @dogs.each do |dogs|
      if dogs[:owner][:owner_quality] == AVERAGE
      owners.push("#{dogs[:owner][:name][:first]} #{dogs[:owner][:name][:last]}")
      end
    end
    owners.uniq
  end
  def to_s

    jdogs = []
    sdogs = []
    adogs = []
    @dogs.each do |dog|
      if dog[:owner][:name][:first] == "Joe"
        jdogs.push(dog[:name])
      elsif dog[:owner][:name][:first] == "Sarah"
        sdogs.push(dog[:name])
      elsif dog[:owner][:name][:first] == "Andrew"
        adogs.push(dog[:name])
      end
    end

    "Joe owns: #{jdogs[0]}, #{jdogs[1]}, and #{jdogs[2]}\nSarah owns: #{sdogs[0]} and #{sdogs[1]}\nAndrew owns: #{adogs[0]} and #{adogs[1]}"

  end

  def find_by_owner(name)
  alldogs = []
  @dogs.each do |dog|

    if dog[:owner][:name][:first] == name || dog[:owner][:name][:last] == name
      alldogs.push(dog)
    elsif
    else
      nil
    end
  end
  alldogs
  end
end

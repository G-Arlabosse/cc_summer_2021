require './verification'

def getRubies
    allRubies = []
    ruby = ""
    File.readlines('rubies.txt').each do |line|
    if line.length == 1
        allRubies << ruby
        ruby = ""
    else
        ruby+=line
    end
    end
    return allRubies
end

rubies = getRubies

print verification(rubies[0])
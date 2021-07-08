require './fight.rb'

def getAllActions(chemin)
    allActions = []
    File.readlines(chemin).each do |line|
        allActions << line
    end
    return allActions
end

def getIdAction(action)
    position = action.index(";")
    id = action[0..position-1]
end

def searchActionById(actions,id)
    actions.each do |action|
        if getIdAction(action) == id
            return action
        end
    end
    return nil
end

hero_actions = getAllActions("action_hero.txt")
while true
    boss = randomActionSagittarius()
    id = getIdAction(boss)
    hero = searchActionById(hero_actions,id)
    fight(hero,boss)
end

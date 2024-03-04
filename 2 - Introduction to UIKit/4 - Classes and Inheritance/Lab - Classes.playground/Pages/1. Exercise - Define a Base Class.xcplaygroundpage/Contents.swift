/*:
## Exercise - Define a Base Class

 - Note: The exercises below are based on a game where a spaceship avoids obstacles in space. The ship is positioned at the bottom of a coordinate system and can only move left and right while obstacles "fall" from top to bottom. Throughout the exercises, you'll create classes to represent different types of spaceships that can be used in the game.

 Create a `Spaceship` class with three variable properties: `name`, `health`, and `position`. The default value of `name` should be an empty string and `health` should be 0. `position` will be represented by an `Int` where negative numbers place the ship further to the left and positive numbers place the ship further to the right. The default value of `position` should be 0.
 */
class Spaceship {
    var name: String = ""
    var health:Int = 0
    var position:Int = 0
    
    //    init(name: String, health:Int, position:Int) {
    //        self.name = name
    //        self.health = health
    //        self.position = position
    //    }
    
    func moveLeft(){
        position -= 1
    }
    func moveRight(){
        position += 1
    }
    
    func wasHit(){
        health -= 5
        if(health <= 0) {
            print("Sorry, your ship was hit one too many times. Do you want to play again?")
        }
    }
    //:  Create a `let` constant called `falcon` and assign it to an instance of `Spaceship`. After initialization, set `name` to "Falcon."
    let falcon = Spaceship()
    falcon.name = "Falcon"
    print(falcon.name)
    
    //:  Go back and add a method called `moveLeft()` to the definition of `Spaceship`. This method should adjust the position of the spaceship to the left by one. Add a similar method called `moveRight()` that moves the spaceship to the right. Once these methods exist, use them to move `falcon` to the left twice and to the right once. Print the new position of `falcon` after each change in position.
    falcon.moveLeft()
    print(falcon.position)
    falcon.moveLeft()
    print(falcon.position)
    falcon.moveRight()
    print(falcon.position)
    
    //:  The last thing `Spaceship` needs for this example is a method to handle what happens if the ship gets hit. Go back and add a method `wasHit()` to `Spaceship` that will decrement the ship's health by 5, then if `health` is less than or equal to 0 will print "Sorry, your ship was hit one too many times. Do you want to play again?" Once this method exists, call it on `falcon` and print out the value of `health`.
    falcon.wasHit()
    print(falcon.health)
    
    /*:
     page 1 of 4  |  [Next: Exercise - Create a Subclass](@next)
     */
//    class Spaceship {
//        var name: String
//        var x:Int = 0
//        var y:Int = 0
//
//        init(name: String, x:Int, y:Int) {
//            self.name = name
//            self.x = x
//            self.y = y
//        }
//    }
//    func doIntersect(ship1: Spaceship, ship2: Spaceship) -> Bool {
//            return ship1.x == ship2.x && ship1.y == ship2.y
//    }
//    let ship1 = Spaceship(name:"Ship1", x: 1, y: 3)
//    let ship2 = Spaceship(name:"Ship2", x: 3 ,y: 3)
//    let ship3 = Spaceship(name:"Ship3", x: 1, y: 3)
//
//    // if(ship1.x == ship2.x){
//    //     print("Ship1 and ship2 intersect")
//    // }
//    // else if(ship1.x == ship3.x){
//    //     print("Ship1 and ship2 intersect")
//    // }
//    // else{
//    //     print("They don't intersect")
//    // }
//    print(doIntersect(ship1: ship1, ship2: ship2))
//    print(doIntersect(ship1: ship1, ship2: ship3))

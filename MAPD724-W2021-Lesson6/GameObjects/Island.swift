import SpriteKit
import GameplayKit

class Island: GameObject
{
    
    // constructor
    init()
    {
        super.init(imageString: "island", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    
    override func CheckBounds()
    {
        if(position.x <= -730) //MARK:- MIDTERM EDIT Changed the y-axis to x-axis
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        position.x = 730   //MARK:- MIDTERM EDIT Changed the y position to x position
        // get a pseudo-random number from -313 to 313 =
        let randomX:Int = (randomSource?.nextInt(upperBound: 626))! - 313
        position.y = CGFloat(randomX)
        isColliding = false
    }
    
    // initialization
    override func Start()
    {
        zPosition = 1
        Reset()
        dx = 5.0  //MARK:- MIDTERM EDIT Changed the speed so that it moves with 5x speed in x axis
    }
    
    override func Update()
    {
        Move()
        CheckBounds()
    }
    
    func Move()
    {
        position.x -= dx!  //MARK:- MIDTERM EDIT Moves the island on x axis
    }
}

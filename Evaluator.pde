abstract class Evaluator {

  public abstract float evalFunction(PVector goal, PVector vel, PVector pos);
}

class LinearEval extends Evaluator {

  public float evalFunction(PVector goal, PVector vel, PVector pos) {
    
    float posX = pos.x;
    float posY = pos.y;
    
    return abs(goal.x - posX);
  }
}

class AbsDiffEval extends Evaluator {  //    | |dX| - |dY| |
  public float evalFunction(PVector goal, PVector vel, PVector pos) {
    float xterm = abs(goal.x - pos.x);
    float yterm = abs(goal.y - pos.y);
    return abs(xterm - yterm);
    
  }
}

class DistVelEval extends Evaluator {

  public float evalFunction(PVector goal, PVector vel, PVector pos) {
    return sqrt(pow(pos.dist(goal) + vel.mag() - 100, 2));
  }
}

class LogEval extends Evaluator {

  public float evalFunction(PVector goal, PVector vel, PVector pos) {
    return 5f;
  }
}

class EricEval extends Evaluator {
  public float evalFunction(PVector goal, PVector vel, PVector pos) {
    return (pos.sub(goal)).mag();
  }
}

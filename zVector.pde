/*

My own vector class so that I can see and control what is going on inside

*/

class Vector {
  float x;
  float y;
  
  Vector(float _x, float _y){
    this.x = _x;
    this.y = _y;
  }
  Vector(Vector v){
    this.x = v.x;
    this.y = v.y;
  }
  void set(float _x, float _y){
    this.x = _x;
    this.y = _y;
  }
  
  // Add a float or vector
  void add(Vector o){x += o.x; y += o.y;}
  void add(float _c){x += _c; y += _c;}
  void add(float _x, float _y){x += _x; y += _y;}
  
  // Subtract a float or vector
  void sub(Vector o){x -= o.x; y -= o.y;}
  void sub(float _c){x -= _c; y -= _c;}
  void sub(float _x, float _y){x -= _x; y -= _y;}
  
  // multiply by a float or vector
  void mul(Vector o){x *= o.x; y *= o.y;}
  void mul(float _c){x *= _c; y *= _c;}
  void mul(float _x, float _y){x *= _x; y *= _y;}
  
  // Divide by a float or vector
  void div(Vector o){x /= o.x; y /= o.y;}
  void div(float _c){x /= _c; y /= _c;}
  void div(float _x, float _y){x /= _x; y /= _y;}

  // Return absolute distance to any point
  float mag(Vector o){
    return sqrt(sq(o.x - this.x) + sq(o.y - this.y));
  }
}

/*
class Vector3D extends Vector {
  float z;
  
  Vector3D(float _x, float _y, float _z){
    super(_x,_y);
    z = _z;
  }
  void set(float _x, float _y, float _z){
    x = _x;
    y = _y;
    z = _z;
  }
  
  // Add a float or vector
  void add(Vector3D o){x += o.x; y += o.y; z += o.z;}
  void add(float _c){x += _c; y += _c; z += _c;}
  void add(float _x, float _y, float _z){x += _x; y += _y; z += _z;}
  
  // Subtract a float or vector
  void sub(Vector3D o){x -= o.x; y -= o.y; z -= o.z;}
  void sub(float _c){x -= _c; y -= _c; z -= _c;}
  void sub(float _x, float _y, float _z){x -= _x; y -= _y; z -= _z;}
  
  // multiply by a float or vector
  void mul(Vector3D o){x *= o.x; y *= o.y; z *= o.z;}
  void mul(float _c){x *= _c; y *= _c; z *= _c;}
  void mul(float _x, float _y, float _z){x *= _x; y *= _y; z *= _z;}
  
  // Divide by a float or vector
  void div(Vector3D o){x /= o.x; y /= o.y; z /= o.z;}
  void div(float _c){x /= _c; y /= _c; z /= _c;}
  void div(float _x, float _y, float _z){x /= _x; y /= _y; z /= _z;}
}
*/


// Create a new contract
pub contract PersonContract {

  pub var Id : [Int]
  pub var PeopleDict : { Int: Person }

  pub struct Person {
    pub let name: String
    pub let age: Int

    init(_name: String, _age: Int){
      self.name = _name
      self.age = _age
    }
  }

  pub fun addId(id: Int){
    self.Id.append(id)
  }
  
  // Function to add a new person to the array
  pub fun addPerson(id: Int, name: String, age: Int) {
      pre{
        self.Id.contains(id): "This Id is not Present"
      }

      self.PeopleDict[id] = Person(_name: name, _age: age)     
  }


  init() {
    self.Id = []
    self.PeopleDict = {}
  }
}
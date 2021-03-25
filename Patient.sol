pragma solidity ^0.4.18;

contract Patient {
  string name;
  uint age;
  
  struct Patient_Record{
   string name;
   uint age;
}

 Patient_Record[] public record_data;
 
  function setPatient(string _name, uint _age) public {
    name = _name;
    age = _age;
    Patient_Record memory newPatient = Patient_Record({name:_name, age:_age});
    record_data.push(newPatient);
  }

  function getPatient() public constant returns (string, uint) {
    return (name, age);
  }
}
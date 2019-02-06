'use strict'

let root = ["HP:0000001","HP:0000005","HP:0001427"]
const object = Object("../_data/hp.json")
console.log("HP:0000001" in object)
let bool = true;

while (bool){
  let childs = findChild(root,object);
  console.log(childs);
  if (childs.length == 0){
    bool = false;
  }
  root = childs
  childs = []
}

function findChild(array,object){
  let children = []
  for(let i = 0; i < array.length; i++){
    if (array[i] in object){
      console.log(`${array[i]} = ${object[array[i]].relations["can_be"]}`);
      if (object[array[i]].relations["can_be"]) {
        children.push(object[array[i]].relations["can_be"])
      }else if(object[array[i]].relations["can_be"] == undefined){
        children.push([])
      }
    }
  }
  return children;
}

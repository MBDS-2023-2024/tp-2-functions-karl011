// Question 1
print("***********fonction des x pairs ou impairs************")
func nbPairsImpairs(x: Int, pairs: Bool) {
  var nombre = 1
  var compteur = 0

  while compteur < x {
      if pairs {
          if nombre % 2 == 0 {
              print(nombre)
              compteur += 1
          }
      } else {
          if nombre % 2 != 0 {
              print(nombre)
              compteur += 1
          }
      }
      nombre += 1
  }
}


print("====Les x premiers pairs===")
nbPairsImpairs(x: 3, pairs: true)
print("====Les x premiers impairs===")
nbPairsImpairs(x: 3, pairs: false)

// Question 2
print("******************Fonction de fibonacci**************")
func afficherSuiteFibonacci(x: Int) {
  var a = 0, b = 1

  for _ in 1...x {
      print(a)
      let y = a + b
      a = b
      b = y
  }
}

afficherSuiteFibonacci(x: 8)


//Question 3
print("*****************Factoriel**************************")
func factoriel(_ x: Int = 10) -> Int {
  if x == 0 {
      return 1
  } else {
      return x * factoriel(x - 1)
  }
}

let resultat = factoriel(5)
print("Le factoriel de 5 est \(resultat)")


// Question 4
print("*********Les x premiers nombres premiers**********")
func estPremier(_ nombre: Int) -> Bool {
  if nombre <= 1 {
      return false
  }
  for i in 2..<nombre {
      if nombre % i == 0 {
          return false
      }
  }
  return true
}

func nombresPremiers(_ x: Int) {
  var compteur = 0
  var nombre = 2

  while compteur < x {
      if estPremier(nombre) {
          print(nombre)
          compteur += 1
      }
      nombre += 1
  }
} 
nombresPremiers(5)
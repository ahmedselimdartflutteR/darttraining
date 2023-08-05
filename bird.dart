class Bird {
  static int _numberOfWings = 0;

  Bird() {
    Bird._numberOfWings++;
  }

  static get getNumberOfBirds => Bird._numberOfWings;
}



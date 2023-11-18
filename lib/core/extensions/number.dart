extension NumberX on num {
  String get toLotteryFormat {
    if (toString().length == 3) {
      return toString().padLeft(4, "0");
    } else if (toString().length == 5) {
      return toString().padLeft(6, "0");
    }

    return toString().padLeft(2, "0");
  }
}

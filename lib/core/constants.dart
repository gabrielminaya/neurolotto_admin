import 'package:flutter/material.dart';

const appTitle = "NeuroLotto";
const supabaseEndpoint = String.fromEnvironment('SUPABASE_URL');
const supabaseKey = String.fromEnvironment('SUPABASE_ANNON_KEY');

const p2 = EdgeInsets.all(2);
const p4 = EdgeInsets.all(4);
const p8 = EdgeInsets.all(8);
const p12 = EdgeInsets.all(12);
const p16 = EdgeInsets.all(16);

const px2 = EdgeInsets.symmetric(horizontal: 2);
const px4 = EdgeInsets.symmetric(horizontal: 4);
const px8 = EdgeInsets.symmetric(horizontal: 8);
const px12 = EdgeInsets.symmetric(horizontal: 12);
const px16 = EdgeInsets.symmetric(horizontal: 16);

const py2 = EdgeInsets.symmetric(vertical: 2);
const py4 = EdgeInsets.symmetric(vertical: 4);
const py8 = EdgeInsets.symmetric(vertical: 8);
const py12 = EdgeInsets.symmetric(vertical: 12);
const py16 = EdgeInsets.symmetric(vertical: 16);

hgap(double size) => SizedBox(width: size);
vgap(double size) => SizedBox(height: size);

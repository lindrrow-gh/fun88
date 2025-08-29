import 'package:flutter/foundation.dart';

enum GamesStateStatus { initial, loading, success, failed }

enum GameCategoriesStateStatus { initial, loading, success, failed }

enum GameProvidersStateStatus { initial, loading, success, failed }

const List<String> navigationItems = [
  'Deportes',
  'Favoritos',
  'Jugar',
  'Casino',
  'Expandir',
];

const List<String> appBarList = [
  'DEPORTES 1',
  'DEPORTES 2',
  'CASINO',
  'PROMOCIONES',
  'BLOGS',
  'NOTICIAS',
];

const Map<String, List<String>> drawerItems = {
  "CASINO": [
    "POPULAR",
    "INCIO",
    "JACKPOT",
    "NUEVO",
    "CASUAL",
    "CRASH",
    "PRAGMATIC",
    "FAT PANDA",
    "PLAYTECH",
    "SLOTS",
    "BINGO",
    "EN VIVO",
  ],
  "APUESTAS DEPORTIVAS": ["Mejor cuota", "Apuesta y Gana", "Mas transmisiones"],
  "MI PERFIL": ["Informacion personal", "Cambiar Contrasena"],
  "VERIFICACION DE USUARIO": [],
  "CAJERO": [
    "Deposito",
    "Retiros",
    "Transacciones",
    "Transacciones financieras",
    "Historial de Bonos",
  ],
  "BONO GRATIS": [],
  "CODIGO PROMOCIONAL": [],
  "PROGRAMA DE REFERIDOS": [],
  "SUGERENCIAS": [],
  "PROMOCIONES": [],
  "PATROCINADORAS": [],
  "BLOGS": [],
  "NOTICIAS": [],
};

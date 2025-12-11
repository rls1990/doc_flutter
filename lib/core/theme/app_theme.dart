import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF4D03CC),
        brightness: Brightness.light,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF4D03CC),
        brightness: Brightness.dark,
      ),
    );
  }
}

/**
 // AppBar principal (más común)
backgroundColor: colors.primary
foregroundColor: colors.onPrimary // texto/iconos blancos

// AppBar secundario/sutil
backgroundColor: colors.surface
foregroundColor: colors.onSurface // texto/iconos oscuros/claros según tema

// Fondo principal de pantalla
backgroundColor: colors.background

// Fondo de secciones/tarjetas
backgroundColor: colors.surface

// Fondo de elementos elevados
backgroundColor: colors.surfaceVariant

// Texto principal
color: colors.onBackground

// Texto sobre elementos coloreados
color: colors.onPrimary // sobre primary
color: colors.onSecondary // sobre secondary
color: colors.onSurface // sobre surface

// Texto secundario/deshabilitado
color: colors.onSurfaceVariant
color: colors.onSurface.withOpacity(0.6)

// Sombra estándar
shadowColor: Colors.black.withOpacity(0.2)

// O usando el color del tema
shadowColor: colors.shadow

// Para dark mode con menos opacidad
shadowColor: Colors.black.withOpacity(0.3)
 */

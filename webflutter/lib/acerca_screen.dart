import 'package:flutter/material.dart';

class AcercaScreen extends StatelessWidget {
  const AcercaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Column(
            children: [
              // Barra de navegación superior
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.qr_code_2, size: 28),
                      SizedBox(width: 8),
                      Text(
                        "SAFE CHECK",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () => Navigator.pushNamed(context, '/'),
                        child: const Text(
                          "INICIO",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                      const SizedBox(width: 20),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "ACERCA DE",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      TextButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/contacto'),
                        child: const Text(
                          "CONTACTO",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () => Navigator.pushNamed(context, '/login'),
                    child: const Text("INGRESAR"),
                  ),
                ],
              ),
              const Expanded(child: SizedBox()),
              // Título central
              const Text(
                "¿QUÉ PUEDES HACER CON SAFE CHECK?",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              const SizedBox(height: 50),
              // Tarjetas de características
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  _FeatureItem(
                    icon: Icons.qr_code,
                    title: "Registro con QR",
                    desc:
                        "Escanea códigos QR para registrar entradas y salidas de forma rápida y segura.",
                  ),
                  _FeatureItem(
                    icon: Icons.access_time,
                    title: "Control de asistencia",
                    desc:
                        "Gestiona y controla la asistencia en tiempo real de usuarios o estudiantes.",
                  ),
                  _FeatureItem(
                    icon: Icons.bar_chart,
                    title: "Reportes y estadísticas",
                    desc:
                        "Visualiza reportes y estadísticas de asistencia de manera organizada.",
                  ),
                  _FeatureItem(
                    icon: Icons.security,
                    title: "Seguridad de datos",
                    desc:
                        "La información está protegida y solo es accesible para usuarios autorizados.",
                  ),
                  _FeatureItem(
                    icon: Icons.devices,
                    title: "Accessible en cualquier lugar",
                    desc:
                        "Plataforma web responsive accesible desde cualquier dispositivo con Internet.",
                  ),
                ],
              ),
              const Expanded(child: SizedBox()),
              // Pie de página
              const Text(
                "SENA 2026",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FeatureItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String desc;

  const _FeatureItem({
    required this.icon,
    required this.title,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Icon(icon, size: 32, color: Colors.black87),
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            desc,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.black54, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

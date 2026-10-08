import 'package:flutter/material.dart';

class ContactoScreen extends StatelessWidget {
  const ContactoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                        onPressed: () =>
                            Navigator.pushNamed(context, '/acerca'),
                        child: const Text(
                          "ACERCA DE",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                      const SizedBox(width: 20),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "CONTACTO",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
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
              const SizedBox(height: 40),
              // Título de la sección
              const Text(
                "CONTACTO",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "¿Tienes dudas, sugerencias o necesitas más información? Estamos aquí para ayudarte.",
                style: TextStyle(color: Colors.black54, fontSize: 14),
              ),
              const SizedBox(height: 40),
              // Contenido principal de contacto (Información y Formulario)
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Datos de contacto de la izquierda
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        ListTile(
                          leading: Icon(Icons.phone),
                          title: Text(
                            "Teléfono",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text("3003953567"),
                        ),
                        SizedBox(height: 10),
                        ListTile(
                          leading: Icon(Icons.email),
                          title: Text(
                            "Correo electrónico",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "samueldavidromerorodrigues@gmail.com",
                          ),
                        ),
                        SizedBox(height: 10),
                        ListTile(
                          leading: Icon(Icons.share),
                          title: Text(
                            "Redes sociales",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text("Samuel Romero"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 40),
                  // Formulario de la derecha
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          const TextField(
                            decoration: InputDecoration(
                              labelText: "Nombre completo",
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 16),
                          const TextField(
                            decoration: InputDecoration(
                              labelText: "Correo electrónico",
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 16),
                          const TextField(
                            decoration: InputDecoration(
                              labelText: "Asunto",
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 16),
                          const TextField(
                            maxLines: 3,
                            decoration: InputDecoration(
                              labelText: "Escribe tu mensaje aquí...",
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 24),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                              minimumSize: const Size.fromHeight(50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text("ENVIAR MENSAJE"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
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

class MovimientoModel{
  String usuarioOrigen;
  String usuarioDestino;
  double cantidadDinero;
  String fechaEnvio;
  String codigoReferencia;
  String codigoTarea;

  MovimientoModel({
    required this.usuarioOrigen,
    required this.usuarioDestino,
    required this.cantidadDinero,
    required this.fechaEnvio,
    required this.codigoReferencia,
    required this.codigoTarea,
  });
}
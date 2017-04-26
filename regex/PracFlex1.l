Variable [A-Za-z]+["_"A-Za-z0-9]*

Entero_positivo "+"?[0-9]+
Entero_negativo "-"[0-9]+

Decimal_positivo "+"?[0-9]+"."[0-9]+
Decimal_negativo "-"[0-9]+"."[0-9]+

Suma_entero_p {Entero_positivo}"+"{Entero_positivo}
Suma_entero_n {Entero_negativo}"+"{Entero_negativo}
Suma_entero_pn {Entero_positivo}"+"{Entero_negativo}
Suma_entero_np {Entero_negativo}"+"{Entero_positivo}

Resta_entero_p {Entero_positivo}"-"{Entero_positivo}
Resta_entero_n {Entero_negativo}"-"{Entero_negativo}
Resta_entero_pn {Entero_positivo}"-"{Entero_negativo}
Resta_entero_np {Entero_negativo}"-"{Entero_positivo}

Multiplicacion_entero_p {Entero_positivo}"*"{Entero_positivo}
Multiplicacion_entero_n {Entero_negativo}"*"{Entero_negativo}
Multiplicacion_entero_pn {Entero_positivo}"*"{Entero_negativo}
Multiplicacion_entero_np {Entero_negativo}"*"{Entero_positivo}

Division_entero_p {Entero_positivo}"/"{Entero_positivo}
Division_entero_n {Entero_negativo}"/"{Entero_negativo}
Division_entero_pn {Entero_positivo}"/"{Entero_negativo}
Division_entero_np {Entero_negativo}"/"{Entero_positivo}

Modulo_entero_p "MOD("{Entero_positivo}","{Entero_positivo}")"
Modulo_entero_n "MOD("{Entero_negativo}","{Entero_negativo}")"
Modulo_entero_pn "MOD("{Entero_positivo}","{Entero_negativo}")"
Modulo_entero_np "MOD("{Entero_negativo}","{Entero_positivo}")"

Potencia_entero_epp {Entero_positivo}"^"{Entero_positivo}
Potencia_entero_epn {Entero_positivo}"^"{Entero_negativo}
Potencia_entero_enp {Entero_negativo}"^"{Entero_positivo}
Potencia_entero_enn {Entero_negativo}"^"{Entero_negativo}

Potencia_entero_fpep {Entero_positivo}"^("{Entero_positivo}"/"{Entero_positivo}")"
Potencia_entero_fpen {Entero_positivo}"^("{Entero_positivo}"/"{Entero_negativo}")"
Potencia_entero_fnep {Entero_negativo}"^("{Entero_negativo}"/"{Entero_positivo}")"
Potencia_entero_fnen {Entero_negativo}"^("{Entero_negativo}"/"{Entero_negativo}")"



Suma_decimal_p {Decimal_positivo}"+"{Decimal_positivo}
Suma_decimal_n {Decimal_negativo}"+"{Decimal_negativo}
Suma_decimal_pn {Decimal_positivo}"+"{Decimal_negativo}
Suma_decimal_np {Decimal_negativo}"+"{Decimal_positivo}

Resta_decimal_p {Decimal_positivo}"-"{Decimal_positivo}
Resta_decimal_n {Decimal_negativo}"-"{Decimal_negativo}
Resta_decimal_pn {Decimal_positivo}"-"{Decimal_negativo}
Resta_decimal_np {Decimal_negativo}"-"{Decimal_positivo}

Multiplicacion_decimal_p {Decimal_positivo}"*"{Decimal_positivo}
Multiplicacion_decimal_n {Decimal_negativo}"*"{Decimal_negativo}
Multiplicacion_decimal_pn {Decimal_positivo}"*"{Decimal_negativo}
Multiplicacion_decimal_np {Decimal_negativo}"*"{Decimal_positivo}

Division_decimal_p {Decimal_positivo}"/"{Decimal_positivo}
Division_decimal_n {Decimal_negativo}"/"{Decimal_negativo}
Division_decimal_pn {Decimal_positivo}"/"{Decimal_negativo}
Division_decimal_np {Decimal_negativo}"/"{Decimal_positivo}

Modulo_decimal_p "MOD("{Decimal_positivo}","{Decimal_positivo}")"
Modulo_decimal_n "MOD("{Decimal_negativo}","{Decimal_negativo}")"
Modulo_decimal_pn "MOD("{Decimal_positivo}","{Decimal_negativo}")"
Modulo_decimal_np "MOD("{Decimal_negativo}","{Decimal_positivo}")"

Potencia_decimal_dpp {Decimal_positivo}"^"{Entero_positivo}
Potencia_decimal_dpn {Decimal_positivo}"^"{Entero_negativo}
Potencia_decimal_dnp {Decimal_negativo}"^"{Entero_positivo}
Potencia_decimal_dnn {Decimal_negativo}"^"{Entero_negativo}

Potencia_decimal_fpep {Decimal_positivo}"^("{Entero_positivo}"/"{Entero_positivo}")"
Potencia_decimal_fpen {Decimal_positivo}"^("{Entero_positivo}"/"{Entero_negativo}")"
Potencia_decimal_fnep {Decimal_negativo}"^("{Entero_negativo})"/"({Entero_positivo}")"
Potencia_decimal_fnen {Decimal_negativo}"^("{Entero_negativo}"/"{Entero_negativo}")"

%%

{Variable} {
			printf("\tVariable declarada");
		   }

{Entero_positivo} {
					printf ("\tEntero positivo");
				  }
{Entero_negativo} {
					printf ("\tEntero negativo");
				  }

{Suma_entero_p} {
					printf ("\tSuma de dos enteros positivos");
				}
{Suma_entero_n} {
					printf ("\tSuma de dos enteros negativos");
				}
{Suma_entero_pn} {
					printf ("\tSuma de un entero positivo y un entero negativo");
				}
{Suma_entero_np} {
					printf ("\tSuma de un entero negativo y un entero positivo");
				}

{Decimal_positivo} {
					printf("\tNumero decimal positivo");
				   }

{Decimal_negativo} {
					printf("\tNumero decimal negativo");
			       }

{Resta_entero_p} {
					printf ("\tResta de dos enteros positivos");
				}
{Resta_entero_n} {
					printf ("\tResta de dos enteros negativos");
				}
{Resta_entero_pn} {
					printf ("\tResta de un entero positivo y un entero negativo");
				}
{Resta_entero_np} {
					printf ("\tResta de un entero negativo y un entero positivo");
				}

{Multiplicacion_entero_p} {
					printf ("\tMultiplicacion de dos enteros positivos");
				}
{Multiplicacion_entero_n} {
					printf ("\tMultiplicacion de dos enteros negativos");
				}
{Multiplicacion_entero_pn} {
					printf ("\tMultiplicacion de un entero positivo y un entero negativo");
				}
{Multiplicacion_entero_np} {
					printf ("\tMultiplicacion de un entero negativo y un entero positivo");
				}

{Division_entero_p} {
					printf ("\tDivision de dos enteros positivos");
				}
{Division_entero_n} {
					printf ("\tDivision de dos enteros negativos");
				}
{Division_entero_pn} {
					printf ("\tDivision de un entero positivo y un entero negativo");
				}
{Division_entero_np} {
					printf ("\tDivision de un entero negativo y un entero positivo");
				}

{Modulo_entero_p} {
					printf ("\tModulo de dos numeros positivos");
				  }

{Modulo_entero_n} {
					printf ("\tModulo de dos numeros negativos");
				  }

{Modulo_entero_pn} {
					printf ("\tModulo de un numero positivo con uno negativo");
				  }

{Modulo_entero_np} {
					printf ("\tModulo de un numero negativo con uno positivo");
				  }

{Potencia_entero_epp} {
						printf ("\tEntero positivo elevado a una potencia entera positiva");
					  }

{Potencia_entero_enp} {
						printf ("\tEntero negativo elevado a una potencia entera positiva");
					  }

{Potencia_entero_epn} {
						printf ("\tEntero positivo elevado a una potencia entera negtiva");
					  }

{Potencia_entero_enn} {
						printf ("\tEntero negativo elevado a una potencia entera negativa");
					  }

{Potencia_entero_fpep} {
						printf ("\tEntero positivo elevado a una potencia fraccionaria positiva");
					  }

{Potencia_entero_fnep} {
						printf ("\tEntero negativo elevado a una potencia fraccionaria positiva");
					  }

{Potencia_entero_fpen} {
						printf ("\tEntero positivo elevado a una potencia fraccionaria negtiva");
					  }

{Potencia_entero_fnen} {
						printf ("\tEntero negativo elevado a una potencia fraccionaria positiva");
					  }


{Suma_decimal_p} {
					printf ("\tSuma de dos decimales positivos");
				}
{Suma_decimal_n} {
					printf ("\tSuma de dos decimales negativos");
				}
{Suma_decimal_pn} {
					printf ("\tSuma de un decimal positivo y un decimal negativo");
				}
{Suma_decimal_np} {
					printf ("\tSuma de un decimal negativo y un decimal positivo");
				}

{Resta_decimal_p} {
					printf ("\tResta de dos decimales positivos");
				}
{Resta_decimal_n} {
					printf ("\tResta de dos decimales negativos");
				}
{Resta_decimal_pn} {
					printf ("\tResta de un decimal positivo y un decimal negativo");
				}
{Resta_decimal_np} {
					printf ("\tResta de un decimal negativo y un decimal positivo");
				}

{Multiplicacion_decimal_p} {
					printf ("\tMultiplicacion de dos decimales positivos");
				}
{Multiplicacion_decimal_n} {
					printf ("\tMultiplicacion de dos decimales negativos");
				}
{Multiplicacion_decimal_pn} {
					printf ("\tMultiplicacion de un decimal positivo y un decimal negativo");
				}
{Multiplicacion_decimal_np} {
					printf ("\tMultiplicacion de un decimal negativo y un decimales positivo");
				}

{Division_decimal_p} {
					printf ("\tDivision de dos decimales positivos");
				}
{Division_decimal_n} {
					printf ("\tDivision de dos decimales negativos");
				}
{Division_decimal_pn} {
					printf ("\tDivision de un decimal positivo y un decimales negativo");
				}
{Division_decimal_np} {
					printf ("\tDivision de un decimal negativo y un decimales positivo");
				}

{Modulo_decimal_p} {
					printf ("\tModulo de dos numeros decimales positivos");
				  }

{Modulo_decimal_n} {
					printf ("\tModulo de dos numeros decimales negativos");
				  }

{Modulo_decimal_pn} {
					printf ("\tModulo de un numero decimal positivo con uno negativo decimal");
				  }

{Modulo_decimal_np} {
					printf ("\tModulo de un numero decimal negativo con uno positivo decimal");
				  }

{Potencia_decimal_dpp} {
						printf ("\tDecimal positivo elevado a una potencia entera positiva");
					  }

{Potencia_decimal_dnp} {
						printf ("\tDecimal negativo elevado a una potencia entera positiva");
					  }

{Potencia_decimal_dpn} {
						printf ("\tDecimal positivo elevado a una potencia entera negtiva");
					  }

{Potencia_decimal_dnn} {
						printf ("\tDecimal negativo elevado a una potencia entera negativa");
					  }

{Potencia_decimal_fpep} {
						printf ("\tDecimal positivo elevado a una potencia fraccionaria positiva");
					  }

{Potencia_decimal_fnep} {
						printf ("\tDecimal negativo elevado a una potencia fraccionaria negativa");
					  }

{Potencia_decimal_fpen} {
						printf ("\tDecimal positivo elevado a una potencia fraccionaria negtiva");
					  }

{Potencia_decimal_fnen} {
						printf ("\tDecimal negativo elevado a una potencia fraccionaria positiva");
					  }
. {}

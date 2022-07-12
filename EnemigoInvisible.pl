% Nuestro enemigo invisible
% PEC-2 Inteligencia Artificial
% Laura Lucia Saltaren Andrade
% Curso 2021-2021 - LAS TABLAS

% protagonista(nombre, edad, estado) virus(nombre, estado) reporte(recorrido)
:- dynamic protagonista/2, virus/2, reporte/1.
inicio :- limpiarPantalla,
       assert(virus("COVID", 2)),nl,
       write('---------------------- Nuestro enemigo invisible ---------------------'),nl,
       write('España, 31 de enero del 2020'),nl,
       write('Un nuevo virus ha llegado al pais, tras atravesar diversas fronteras, '),nl,
       write('conseguir cruzar Asia y llegar a España. Este 31 de enero se '),nl,
       write('reporta el primer caso del virus, al que le han llamado "COVID".'),nl,
       write('Desde esta fecha no dejan de aumentar los casos de COVID y tambien,'),nl,
       write('aunque tristemente, no deja de aumentar el numero de fallecidos.'),nl,
       write('Desde dicha fecha hasta el dia de hoy, 28 de marzo del 2021, hemos'),nl,
       write('pasado un confinamiento nacional que duro 99 dias,'),nl,
       write('un segundo estado de alarma con confinamiento regulado por cada Comunidad autonoma'),nl,
       write('numerosos toques de queda, cierre de comercios, huelgas catastroficas, la '),nl,
       write('la locura del papel higienico... y otras miles de situaciones, el pasado '),nl,
       write('27 de diciembre se ve la luz al final del tunel y llega la esperada vacuna'), nl,
       write('que terminara con todas las situaciones anteriores y nos devolvera a algo'),nl,
       write('que se acerca a nuestra antigua realidad,'),nl,
       write('Te llamas '), read(NOMBRE), assert(protagonista(NOMBRE,2)),nl,
       write('Desgraciadamente no hay vacunas para todos y las que quedan se estan agotando'),nl,
       write('Tu objetivo es conseguir vacunarte antes de que sea demasiado tarde y '),nl,
       write('las reservas se hayan agotado...'),nl,nl,
       write(NOMBRE), write(' estas en casa preocupado/a por la noticia que acabas de escuchar,'),nl,
       write(', en la Comunidad de Madrid solo quedan 500 dosis. Hay dos opciones para intentar '),nl,
       write('conseguir una de ellas, pero ninguna de ellas te asegura que la vayas a recibir'),nl,
       write('El tiempo en este objetivo no es tu aliado, en cuanto mas tardes en llegar a la '),nl,
       write('enfermeria mas posibilidades tienes de que las dosis se hayan agotado. '),nl,
       write('Es hora de tomar tu primera decision entre las dos opciones siguientes:'),nl,
       write(' '),nl,
       write('1. Llamar al telefono que ves en la pantalla del televisor para pedir cita'),nl,
       write('2. Ir a la enfermeria mas cerca de tu casa donde ponen vacunas sin cita previa'),nl,
       read(OPCION),
       comienzo(OPCION).

comienzo(OPCION) :- OPCION == 1,nl,nl,
                        write('Despues de una larga espera al telefono has conseguido una cita para vacunarte hoy.'),nl,
                        write('Preparate para salir, coge tus llaves del coche y que no se te olvide la mascarilla ;)'),nl,
                        assert(reporte("Tienes cita para Vacunarte")), primerPasoA;
                        OPCION == 2,nl,nl,
                        write('Tras una pequeña busqueda en internet decides a que enfermeria vas a ir, sin cita,'),nl,
                        write('a intentar que te vacunen. Coge tu desinfectante de manos y listo para la aventura'), nl,
                        assert(reporte("Sales Sin Cita previa")), primerPasoB.
primerPasoA :- X is random(2), primeraAccionA(X).
primerPasoB :- X is random(2), primeraAccionB(X).
primeraAccionA(X) :- X == 0, assert(reporte("Atasco en la Calle Principal")), atascoCallePrinciapl, nl, read(OPCION), segundoPasoA(OPCION);
                     X == 1, assert(reporte("Manifestacion en mitad del Camino")), manifestacion, nl, read(OPCION), segundoPasoA(OPCION).
primeraAccionB(X) :- X == 0, assert(reporte("Atasco en la Calle Principal")), atascoCallePrinciaplB, nl, read(OPCION), segundoPasoB(OPCION);
                     X == 1, assert(reporte("Manifestacion en mitad del Camino")), manifestacionB, nl, read(OPCION), segundoPasoB(OPCION).
segundoPasoA(OPCION)  :- OPCION == 1, nl,
                         protagonista(_,P), P == 0,
                         virus(_,V), V > 0,
                         assert(reporte("Decides seguir en Coche")),
                         nl,write('No puedes mas y decides salir a estirar las piernas'),nl,
                         write('Y de pronto ves a un amigo en el coche de al lado que no ves'),nl,
                         write('desde el primer confinamiento, emocionado le abrazas olvidandote'),nl,
                         write('del COVID y de todo, el te mira palido y asustado y te dice'), nl,
                         write('que acaba de recibir los resultados de su PCR y es positivo, estas contagiado.'),nl,
                         write('Lo que quiere decir que estas contagiado tu tambien ...'),nl,
                         write('Tu irresponsabilidad te ha costado fracasar en tu mision.'),nl,
                         write('Juego finalizado'),nl,
                         
                         borrarDatos;
                         OPCION == 1, nl,
                         assert(reporte("Decides seguir en Coche")),nl,
                         write('Cuando estabas apunto de desesperar en el atasco'),nl,
                         write('encuentras un atajo y consigues ahorrarte horas en el coche'),nl,
                         write('Parece que vas a llegar a tiempo a tu cita.'),nl,
                         tercerPasoA;
                         OPCION == 1, nl,
                         protagonista(_,P), P == 0,
                         virus(_,V), V > 0,
                         assert(reporte("Decides seguir en Coche")),
                         nl,write('Vas en el coche y al abrir la ventanilla se te vuela la mascariila.'),nl,
                         write('Resulta que no tienes ninguna de repuesto en el cohe, por lo que,'),nl,
                         write('no tienes de otra que bajarte a comprar una, y rapido antes de '),nl,
                         write('que la policia te vea.'),nl,
                         write('Bajas a la tienda, cuando estas pagando te enteras que el dependiente'),nl,
                         write('tiene corona, pero como piensa que no es un virus real a abierto su tienda...'),nl,
                         write('El virus ha llegado a ti, estas CONTAGIADO'),nl,
                         write('Juego finalizado'),nl,
                         
                         borrarDatos;
                         OPCION == 2, nl,
                         protagonista(_,P), P == 0,
                         virus(_,V), V > 0,
                         assert(reporte("Decides seguir andando")),
                         nl,write('Vas andando y de pronto ves a alguien saliendo del un portal se tropieza'),nl,
                         write('y se cae, corres a ayudarle cuando de pronto llega la ambulancia.'),nl,
                         write('Salen de ella dos paramedicos vestidos como astronautas, resulta que venian'),nl,
                         write('a por la persona que se acaba de caer para llevarlo al hospital, ya que es positivo'),nl,
                         write('en corona, sin sintomas, y cuando ven que le estas tocando te meten a ti '),nl,
                         write('tambien en la ambulancia. '),nl,
                         write('Esta vez el virus gana a la amabilidad, estas contagiado'),nl,
                         write('Juego finalizado'),nl,
                         
                         borrarDatos;
                         OPCION == 2, nl,
                         assert(reporte("Decides seguir andando")),nl,
                         write('Cuando llevas un rato caminando de pronto alguien te llama por tu nombre'),nl,
                         write('al darte la vuelta ves que es un viejo amigo que va en bici.'),nl,
                         write('Te ofrece llevarte en bici a la enfermeria'),nl,
                         tercerPasoA;
                         OPCION == 2, nl,
                         protagonista(_,P), P == 0,
                         virus(_,V), V > 0,
                         assert(reporte("Decides seguir andando")),nl,
                         write('Vas andando y se te vuela la mascarilla, y no has traido'),nl,
                         write('ninguna otra de casa, asi que no tienes que otra que parar'),nl,
                         write('a comprar otra y rapido antes de que la policia te vea.'),nl,
                         write('Entras a la tienda y cuando estas pagando te enteras que el dependiente'),nl,
                         write('tiene corona, pero como piensa que no es un virus real a abierto su tienda...'),nl,
                         write('El virus ha llegado a ti, estas CONTAGIADO'),nl,
                         write('Juego finalizado'),nl,
                         
                         borrarDatos.
segundoPasoB(OPCION) :- OPCION == 1, nl,
                         assert(reporte("Esperas a que la zona se despeje")),nl,
                         write('Has tomado una buena decision, la zona se esta despejando mas'),nl,
                         write('rapido de lo que pensabas y puedes continuar tu camino.'),nl,
                         tercerPasoB;
                         OPCION == 1, nl,
                         assert(reporte("Esperas a que la zona se despeje")),
                         nl, write('Llevas ya unas horas sentado/a esperando a que la manifestacion'),nl,
                         write('termine... Tantas horas que la policia llega y te pone una multa'),nl,
                         write('resulta que has pasado el toque de queda, te manda a casa, resulta que'),nl,
                         write('no hay vacuna hoy... no te habras contagiado pero el virus haganado'),nl,
                         write('Y tu has fracasado la mision...'),nl,
                         write('Juego finalizado'),nl,
                         
                         borrarDatos;
                         OPCION == 2,nl,
                         assert(reporte("Cambias de rumbo al hospital mas cercano")),
                         nl,write('Ya estas en camino al nuevo destino y recibes una '),nl,
                         write('llamada de la policia, resulta que has estado en contacto con un'),nl,
                         write('contagiado y estas obligado de ir ahora mismo a casa y ponerte en cuarentena.'),nl,
                         write('Te mandaran una ambulancia a hacerte una PCR y ver si tu tambien te has contagiado'),nl,
                         write('Cuadno pasen los 10 dias de cuarentena debes de hacerte una PCR'),nl,
                         write('que de negativa para poder salir a la calle...'),nl,
                         write('Esta vez el virus ha ganado y estas de camino a casa sin tu vacuna'),nl,
                         write('Mision fracasada'),nl,
                         write('Juego finalizado'),nl,
                         
                         borrarDatos;
                         OPCION == 2, nl,
                         assert(reporte("Cambias de rumbo al hospital mas cercano")),
                         nl,write('Buscas en internet el hospital mas cercano y parece que solo'),nl,
                         write('esta a 10 minutos de viaje de tu ubicacion actual'),nl,
                         write('Si no te topas con otro imprevisto en el camino vas '),nl,
                         write('vas a llegar muy rapido a tu destino, y en esta ssituacion'),nl,
                         write('el reloj corre en tu contra...'),nl,
                         tercerPasoB.

tercerPasoB :- X is random(2), pasoTresAccionB(X).
tercerPasoA :- X is random(2), pasoTresAccionA(X).

pasoTresAccionA(X) :- X == 0, assert(reporte("Encuentras un atajo")), encuentrasAtajo, nl, read(OPCION), cuartoPasoA(0, OPCION);
                      X == 1, assert(reporte("Te llevan en bicicleta")), bicicleta, nl, read(OPCION), cuartoPasoA(1, OPCION).
pasoTresAccionB(X) :- X == 0, assert(reporte("Consigues pasar la Zona detenida")), pasarZona;
                      X == 1, assert(reporte("Buscas nuevo hospital Destino")), nuevoDestino, nl, read(OPCION), cuartoPasoB(OPCION).

 % Z=0 Encuentras un atajo, Z = 1  Te llevan en bicicleta, X = 0 Consigues que te vacunen, X = 1 contagiados
cuartoPasoA(Z, OPCION)  :- X is random(2), cuartoPasoAccion(Z, OPCION, X).
cuartoPasoAccion(Z, OPCION, X)  :- Z == 0, OPCION == 1, X == 1,
                          assert(reporte("Llegas temprano y  paras a comer")),nl,
                          write('Estas pidiendo tu comida, despues del dia que has tenido'),nl,
                          write('y el camino recorrido. Te estas muriendo de hambre.'),nl,
                          write('Estas apunto de meterte el primer bocado de comida a la boca '),nl,
                          write('Y de pronto entra la policia y pone a todo el restaurante en cuarentena'),nl,
                          write('Resulta que el cocinero tiene corona y todo el que ha comido'),nl,
                          write('De su comida esta contagiado y tu eres uno de ellos'),nl,
                          write('Estabas apunto de cumplir tu objetivo, pero has terminado fracasando...'),nl,
                          write('Juego finalizado'),
                          
                          borrarDatos;
                          Z == 0, OPCION == 1, X = 0,
                          assert(reporte("Llegas temprano y  paras a comer")),nl,
                          write('Terminas de comer y justo es la hora de tu cita '),nl,
                          write('Te acercas a la ventanilla a avisarles de que estas aqui'),nl,
                          write('Comprueban tu nombre, que tienes cita, y tu DNI.'),nl,
                          vacunado;
                          Z == 0, OPCION == 2, X = 1,
                          assert(reporte("Le das tu cita a alguien mayor")),
                          write('Tras ceder tu cita te quedas sentado/a pensando que deberias'),nl,
                          write('de hacer acontinuacion... estabas apunto de conseguirlo pero'),nl,
                          write('tu sentido de la logica y el no ser egoista ha preferido cederle'),nl,
                          write('la cita a alguien mayor que tu.'),nl,
                          write('Estas por irte pero te pierdes y terminas entrando en la zona'),nl,
                          write('COVID de la enfermeria. Automaticamente te ponen en cuarentena.'),nl,
                          write('Estas contagiado, hoy no ser egoista te ha salido muy caro...'),nl,
                          write('Juego finalizado'),
                          
                          borrarDatos;
                          Z == 0, OPCION == 2, X = 0,
                          assert(reporte("Le das tu cita a alguien mayor")),nl,
                          write('El encargado de la administracion de las vacunas ve'),nl,
                          write('el gran gesto que acabas de hacer. Se siente conmovido'),nl,
                          write('ya que en estos tiempo dificiles no ser egoista es muy dificil'),nl,
                          write('y mas cuadno se trata de lo que podria ser la cura y mantenerte vivo'),nl,
                          write('durante esta pandemia. Se acerca a ti y te hace entrar a su despacho'),nl,
                          write('Te va a vacunar y tu no te lo puedes creer.'),
                          vacunado;
                          Z == 1, OPCION == 1, X = 1,
                          assert(reporte("Entras corriendo a la enfermeria")),
                          nl,write('Parece que has llegado a tiempo a tu cita'),nl,
                          write('y vas a conseguir que te vacunen, pero cuando llegan '),nl,
                          write('a la ultima pregunta "Has tenido alguna vez el COVID?"'),nl,
                          write('tu respuesta es positiva, y te avisan de que el que ha superado'),nl,
                          write('el virus todavia no puede ser vacunado, hay que darle prioridad '),nl,
                          write('al que todavia no tiene anticuerpos...'),nl,
                          write('Juego finalizado'),
                          
                          borrarDatos;
                          Z == 1, OPCION == 1, X = 0,
                          assert(reporte("Entras corriendo a la enfermeria")),nl,
                          write('Has llegado de milagro a tu cita, estas completamente acalorado'),nl,
                          write('de la carrera que has tenido que hacer, pero merecio la pena por que'),nl,
                          write('eres el siguiente en la cola.'),nl,
                          vacunado;
                          Z == 1, OPCION == 2, X = 1,
                          assert(reporte("Llegas tarde, pides un taxi")),
                          nl,write('El taxista se pierde y te hace perder mas tiempo'),nl,
                          write('cuando porfin llegas a la enfermeria es demasiado tarde'),nl,
                          write('has perdido tu cita y no te quieren dar otra para mañana.'),nl,
                          write('Has fracasado en tu mision y tienes que volver a casa sin la vacuna...'),nl,
                          write('Juego finalizado'),nl,
                          
                          borrarDatos;
                          Z == 1, OPCION == 2, X = 0,
                          assert(reporte("Llegas tarde, pides un taxi")),nl,
                          write('Pensabas que no ibas a conseguirlo pero has llegado a '),nl,
                          write('a tiempo a tu cita, incluso 5 minutos antes.'),nl,
                          vacunado.
cuartoPasoB(OPCION)  :-  OPCION == 1,nl,
                         protagonista(_,P), P == 0,
                         virus(_,V), V > 0,
                         assert(reporte("Haces cola para recibir la vacuna")),nl,
                         resultadosPcr;
                         OPCION == 1,nl,
                         assert(reporte("Haces cola para recibir la vacuna")),nl,
                         vacunado;
                         OPCION == 1,nl,
                         protagonista(_,P), P == 0,
                         virus(_,V), V > 0,
                         assert(reporte("Haces cola para recibir la vacuna")),
                         write('Tras una larga espera parece que ya va a ser'),nl,
                         write('tu turno. Pero faltando dos personas delante de ti'),nl,
                         write('anuncian que no quedan mas vacunas...Lo que mas temias '),nl,
                         write('ha ocurrido, debes volver a casa sin vacuna.'),nl,
                         write('Has fracasado en tu mision...'),nl,
                         write('Juego finalizado'),nl,
                         
                         borrarDatos;
                         OPCION == 2,nl,
                         protagonista(_,P),P == 0,
                         virus(_,V), V > 0,
                         assert(reporte("Te cuelas")),
                         resultadosPcr;
                         OPCION == 2,nl,
                         protagonista(_,P), P == 0,
                         virus(_,V), V > 0,
                         assert(reporte("Te cuelas")),
                         nl,write('El responsable del lugar te ha pillado colandote y no '),nl,
                         write('no le ha gustado nada tu comportamiento egoista.'),nl,
                         write('Tras pedir disculpas 50 veces el responsable no da su mano '),nl,
                         write('a torcer y te echa del lugar... Despues de todo el recorrido'),nl,
                         write('te has quedado sin vacunas por una mala decision...'),nl,
                         write('Has fracasado en tu mision...'),nl,
                         write('Juego finalizado'),nl,
                         
                         borrarDatos;
                         OPCION == 2,nl,
                         assert(reporte("Te cuelas")),
                         vacunado.

atascoCallePrinciapl :- nl, write('PIIIIIIIIII PIIIIIIII !!!' ),nl,
                        write('Moveros que llego tarde '),nl,
                        write('PIIIIIIIIII PIIIIIIII !!!' ),nl,
                        write('La calle esta completamente parada, el atasco es impresionante'),nl,
                        write('parece que no eres el unico que ha visto la noticia y ha salido corriendo'),nl,
                        write('a conseguir la vacuna.'),nl,
                        write('Que quieres hacer para continuar?'),nl,
                        write('1. Confias en que el atasco no es tan grande como parece y continuas en coche'),nl,
                        write('2. No te arriesgas, quieres llegar a tiempo asi que dejas el coche aparcado y continuas andando'),nl.
manifestacion    :- nl, write('PRESIDENTE DIMISION ! PRESIDENTE DIMISION !!!'),nl,
                    write('QUEREMOS MAS VACUNAS !!! '),nl,
                    write('Parece que te has metido en medio de una manifestacion.'),nl,
                    write('Y es que el que no tiene esperanza de recibir alguna de las'),nl,
                    write('ultimas dosis ha deciddio salir a hacerse escuchar '),nl,
                    write('Pero tu si que quieres intentarlo, como quieres continuar el camino?'),nl,
                    write('1. Confias en que el atasco no es tan grande como parece y continuas en coche'),nl,
                    write('2. No te arriesgas, quieres llegar a tiempo asi que dejas el coche aparcado y continuas andando'),nl.
atascoCallePrinciaplB :- nl, write('PIIIIIIIIII PIIIIIIII !!!' ),nl,
                        write('Moveros que llego tarde '),nl,
                        write('PIIIIIIIIII PIIIIIIII !!!' ),nl,
                        write('La calle esta completamente parada, el atasco es impresionante'),nl,
                        write('parece que no eres el unico que ha visto la noticia y ha salido corriendo'),nl,
                        write('a conseguir la vacuna.'),nl,
                        write('Que quieres hacer para continuar?'),nl,
                        write('1. No te parece muy prudente cruzar un lugar con tanta gente en plena,'),nl,
                        write('pandemia, asi que decides esperar a que se despeje un poco la zona'),nl,
                        write('2. No tienes tiempo que perder, cambias de destino y deicides ir directamente'),nl,
                        write('a un hospital a pedir la vacuna'),nl.
manifestacionB       :- nl, write('PRESIDENTE DIMISION ! PRESIDENTE DIMISION !!!'),nl,
                        write('QUEREMOS MAS VACUNAS !!! '),nl,
                        write('Parece que te has metido en medio de una manifestacion.'),nl,
                        write('Y es que el que no tiene esperanza de recibir alguna de las'),nl,
                        write('ultimas dosis ha deciddio salir a hacerse escuchar '),nl,
                        write('Pero tu si que quieres intentarlo, como quieres continuar el camino?'),nl,
                        write('1. No te parece muy prudente cruzar un lugar con tanta gente en plena,'),nl,
                        write('pandemia, asi que decides esperar a que se despeje un poco la zona'),nl,
                        write('2. No tienes tiempo que perder, cambias de destino y deicides ir directamente'),nl,
                        write('a un hospital a pedir la vacuna'),nl.

encuentrasAtajo :-     write('Despues del pequeño incidente de antes consigues salir de ello temprano'),nl,
                       write('y todavia te queda un rato para tu cita, no te dejan esperar dentro por'),nl,
                       write('miedo de contagio, asi que debes de llegar exactamente a tu hora para'),nl,
                       write('que te dejen entrar.'),nl,
                       write('Que quieres hacer en este tiempo ?'),nl,
                       write('1. Estas hambriento y te vas al restaurante de al lado a pedir algo'),nl,
                       write('de comida take away ...'),nl,
                       write('2. Ves otra cola para gente sin cita. En la cola hay una mujer de uno 80 años'),nl,
                       write('decides darle tu cita y tu esperar en la cola'),nl.
bicicleta       :-     write('Ir andando no ha sido del todo buena idea y el tiempo se te esta agotando'),nl,
                       write('a pesar de que tu amigo te esta ayudando estass un poco agobiado y preocupado'),nl,
                       write('de perder tu cita y tienes que decidir que hacer:'),nl,
                       write('1. Sigues con tu amigo y cuando llegas entras corriendo a la enfermeria'),nl,
                       write('2. Le das las gracias a tu amigo pero bajas de la bicicleta y pides un taxi'),nl.
pasarZona       :-     assert(reporte("Te vacunas")),
                       write('Estas apunto de llegar a la enfermeria despues de todo el agobio'),nl,
                       write('de gente y el pensar que no conseguias llegar a tiempo,'),nl,
                       write('tomas una gran respiracion y cruzas los dedos '),nl,
                       write('Llegas a la enfermeria y milagrosamente eres el priemro en llegar'),nl,
                       write('Todo parece ir como lo planeado, te acercas a la enfermera y '),nl,
                       write('efectivamente te confirma que eres el priemro/a en llegar.'),nl,
                       write('Te ponen la vacuna.'),nl,
                       write('Esta vez has ganado la battalla al COVID y has completado tu mision'),nl,
                       write('ENHORABUENA !!!'),nl,
                       write('JUEGO FINALIZADO'),nl,
                       write('------------------------------------------'),nl,
                       listarReporte,nl,nl,
                       write('------------------------------------------'),nl,
                       
                       borrarDatos.
nuevoDestino    :-  write('Has encontrado el hospital y efectivamente hacen vacunas'),nl,
                      write('pero como era de esperar hay cola, y parece ser larga...'),nl,
                      write('Que quieres hacer al respecto?'),nl,
                      write('1. Hacer la cola'),nl,
                      write('2. Colarte'),nl.
resultadosPcr :-         write('Llevas ya una hora y media en la cola y estas perdiendo'),nl,
                         write('las esperanza de poder vacunarte hoy... Te llega un mensaje'),nl,
                         write('Son los reultados de la PCR que te hiciste ayer, lo abres '),nl,
                         write('muy tranquilo/a, como si ya supieras la respuesta, pero te sorprende'),nl,
                         write('la prueba es positiva, estas contagiado...'),nl,
                         write('Has fracasado en tu mision'),nl,
                         write('Juego finalizado'),nl,
                         
                         borrarDatos.
vacunado       :-       assert(reporte("Te vacunas")),
                         write('Lo has conseguido !!!!!'),nl,
                         write('Estas vacunado y aunque te falta la segunda dosis ya '),nl,
                         write('estas un paso mas cerca de la normalidad, o por lo menos de'),nl,
                         write('sentirte mas seguro cada vez que sales, y lo mas importante '),nl,
                         write('ya vas a poder ir a ver a tus familiares mayores, que llevas sin verles'),nl,
                         write('desde el inicio de la pandemia...'),nl,
                         write('Esta vez has ganado la battalla al COVID y has completado tu mision'),nl,
                         write('ENHORABUENA !!!'),nl,
                         write('JUEGO FINALIZADO'),nl,
                         write('------------------------------------------'),nl,
                         listarReporte,nl,nl,
                         write('------------------------------------------'),nl,
                         
                         borrarDatos.
listarReporte :- findall(Acontecimiento, reporte(Acontecimiento), ReporteCompleto ), mostrarReporte(ReporteCompleto).

 %%El reporte se muestra solo si el protagonista ha conseguido vacunarse
mostrarReporte([]) :- !.
mostrarReporte([R|ReporteCompleto]) :- write(R),nl,mostrarReporte(ReporteCompleto), retractall(ReporteCompleto).

%%Cada vez que finaliza el juego se borran todos los datos del juego actual
% reporte(R),retract(reporte(R)),asserta(reporte([])).
borrarDatos :- retract(protagonista(_,_)), retract(virus("COVID",_)), retractall(reporte(_)).

limpiarPantalla :- write('\033[2J').

"Copérnico 86" by Xavier Carrascosa (in spanish)

[Copérnico 86: Una historia de supervivencia espacial - Escrita por Xavier Carrascosa entre abril y mayo de 2020.
Contacto: www.xaviercarrascosa.com - Vía Twitter/Instagram: @XCarrascosa 
Programado con Inform 7 de Graham Nelson, versión 7.9.3 (build 6M62) - Descarga: http://inform7.com/downloads/
Traducción al español por Sarganar & otros - Descarga: https://github.com/sarganar/I7-2014-Spanish/releases]

[Datos Bibligráficos]

The story title is "Copérnico 86".
The story author is "Xavier Carrascosa".
The story headline is "Una historia de supervivencia espacial".
The story genre is "Sci-fi".
The release number is 1.
The story creation year is 2020.
The story description is "La nave colonizadora Copérnico 86 se consume en llamas mientras navega hacia un ignoto sol. El viaje en estado de hibernación del Dr. Stanislav Odengar se verá interrumpido para intentar salvar a la tripulación del fatal desenlace al que se aproxima.".

Part 1 - Iniciando extensiones y reglas varias

Include Basic Help Menu SP by Emily Short. [Extensión de Ayuda básica]
Include Patrollers Sp by Michael Callaghan. [Extensión para los personajes que se mueven]
Include Quip-Based Conversation SP by Michael Martin. [Extensión para conversaciones por menús]

Include Exit Descriptions SP by Matthew Fletcher. [Extensión para describir salidas en cada localidad]

Include Rideable Vehicles by Graham Nelson. [Extensión para vehículos y animales para montarse]
[
OJO: Rideable Vehicles da fallo al compilar si no modificamos la siguiente sección en Spanish.i7x como comentario:
Section 2.2.5.2 - In Rideable Vehicles (for use with Rideable Vehicles by Graham Nelson)
[A rideable animal translates into Spanish as un animal montable.
A rideable vehicle translates into Spanish as un vehículo montable.]

Section 2.4.2.2 - In Rideable Vehicles (for use with Rideable Vehicles by Graham Nelson)

[In Spanish montar sobre is a verb meaning to mount.
In Spanish desmontar is a verb meaning to dismount.] [6m62: comentariado para hacerlo compilable. bug Mantis1817]
]


[Puntuación]
Use scoring. The maximum score is 150. [El juego tendrá puntuación.]
The announce the score rule response (D) is "[italic type]Has ganado [number understood in words] puntos[roman type]." [nueva regla para notificar los puntos ganados]

The carrying capacity of the player is 4. [El máximo número de objetos que puede llevar el jugador]

Section - 1.1 Iniciando el juego

When play begins: 
	now left hand status line is "Salidas visibles: [if a room is adjacent][the list of adjacent rooms][end if][if a room is adjacent and a door is visible] y [end if][if a door is visible][the list of visible doors][end if]. Puntos: [score]/[maximum score]";  [la barra de estado muestra las salidas visibles y la puntuación]
	now right hand status line is "";
	activate the robot;  [activamos el robot para que empiece a moverse aleatoriamente]
	deactivate Kim1; [desactivamos a Kim en Limbo para que no nos siga desde el principio]
	deactivate Kim2; [desactivamos a Kim en Gaia para que no nos siga desde el principio]
	deactivate marsupial; [desactivamos al marsupial en Gaia para que no nos siga desde el principio]
	choose row 1 in Table of Basic Help Options; [Menú de ayuda - Introducción al juego]
	 now description entry is "[line break]Bienvenido a [bold type]Copérnico 86[roman type], una aventura conversacional de temática [italic type]sci-fi[roman type] y supervivencia espacial escrita por Xavier Carrascosa entre abril y mayo de 2020.[paragraph break]En este juego tu misión será lograr [bold type]evacuar el sistema de cápsulas de hibernación[roman type] hacia algún destino habitable. ¿Lo conseguirás? ¿Y que harás para sobrevivir allá donde llegues?[paragraph break]Si eres nuevo en este tipo de juegos, te recomiendo teclear [bold type]AYUDA[roman type] durante la partida para ver tus opciones. Algunas posibles órdenes pueden ser [bold type]'EXAMINA CÁPSULA'[roman type], [bold type]'COGE CARGADOR'[roman type], [bold type]'ABRE COMPUERTA'[roman type] o [bold type]'CRUZA COMPUERTA'[roman type], entre muchas otras. [paragraph break]Para ver una descripción del lugar o un objeto teclea [bold type]MIRA[roman type] o (M); para una descripción de tu personaje teclea [bold type]MÍRATE[roman type]. Teclear [bold type]INVENTARIO[roman type] o (I) te mostrará tus posesiones. Para ver las posibles direcciones teclea [bold type]SALIDAS[roman type] o (X);muévete con [bold type]IR A[roman type] dirección [bold type]N, S, E, O[roman type]; o bien IR A lugar visible, por ejemplo [bold type]IR A SALA DE EMERGENCIA[roman type]. También puedes tratar de [bold type]ENTRAR[roman type] o [bold type]SALIR[roman type] de sitios cerrados.[paragraph break]";
	say "Bienvenido a [bold type]Copérnico 86[roman type], una aventura conversacional de temática [italic type]sci-fi[roman type] y supervivencia espacial escrita por Xavier Carrascosa entre abril y mayo de 2020. En este juego tu misión será lograr evacuar el sistema de cápsulas de hibernación hacia algún destino habitable. ¿Lo conseguirás? ¿Y que harás para sobrevivir allá donde llegues?[paragraph break][fixed letter spacing]Pulsa una tecla para continuar...[variable letter spacing][paragraph break]";
	wait for any key;
	say "Si eres nuevo en este tipo de juegos, te recomiendo teclear [bold type]AYUDA[roman type] durante la partida para ver tus opciones. Algunas posibles órdenes pueden ser [bold type]'EXAMINA CÁPSULA'[roman type], [bold type]'COGE CARGADOR'[roman type], [bold type]'ABRE COMPUERTA'[roman type] o [bold type]'CRUZA COMPUERTA'[roman type], entre muchas otras. [paragraph break][fixed letter spacing]Pulsa una tecla para continuar...[variable letter spacing][paragraph break]";
	wait for any key;
	say "Para ver una descripción del lugar o un objeto teclea [bold type]MIRA[roman type] o (M); para una descripción de tu personaje teclea [bold type]MÍRATE[roman type]. Teclear [bold type]INVENTARIO[roman type] o (I) te mostrará tus posesiones. Para ver las posibles direcciones teclea [bold type]SALIDAS[roman type] o (X);muévete con [bold type]IR A[roman type] dirección [bold type]N, S, E, O[roman type]; o bien IR A lugar visible, por ejemplo [bold type]IR A SALA DE EMERGENCIA[roman type]. También puedes tratar de [bold type]ENTRAR[roman type] o [bold type]SALIR[roman type] de sitios cerrados.[paragraph break][fixed letter spacing]Pulsa una tecla para continuar...[variable letter spacing][paragraph break]";
	wait for any key;
	say "Y ahora prepárate. Comienzas a despertar de la hibernación. La nave Copérnico 86 está en tus manos. [bold type]Empieza tu aventura...[roman type][paragraph break][fixed letter spacing]Pulsa una tecla para empezar la aventura...[variable letter spacing][paragraph break]";
	wait for any key;
	clear the screen;
	center "PRIMERA PARTE: COPÉRNICO 86[paragraph break][paragraph break]".
	
Rule for printing the name of an unvisited room (called the target) while constructing the status line: 
	let aim be the best route from the location to the target; 
	say "dirección [aim]".  [regla sobre como mostrar las localidades no visitadas en la barra de estado]
	
After printing the name of a visited room (called the target) while constructing the status line: 
	let aim be the best route from the location to the target; 
	say " ([aim])". [regla sobre como mostrar las localidades visitadas en la barra de estado]
	
Section - 1.2 Ampliando el vocabulario

[Arreglillos varios para Rideable vehicles]
Understand "monta [something]" as mounting.
Understand "monta a [something]" as mounting.
Understand "monta en [something]" as mounting.
Understand "monta sobre [something]" as mounting.
Understand "desmonta" as dismounting.

Instead of mounting something which is not a rideable animal, say "No te puedes montar en [the noun].".


[Interactuar con personajes mediante HABLA CON]
Instead of Waving hands, Saying yes, Sanying no, Saying sorry, Waking or Kissing, say "[italic type]Utiliza HABLA CON para interactuar con los personajes.[roman type][paragraph break]".

Before going: terminate the conversation.

[Ampliando sinónimos de verbos]
Understand "desata [something]" or "desata a [something]" or "libera [something]" or "libera a [something]" as cutting.
Understand "carga [something] en [container]" as inserting it into. 
Understand "cargar [something] en [container]" as inserting it into.
Understand "carga [something] con [container]" as inserting it into. 
Understand "cargar [something] con [container]" as inserting it into.

Understand "carga [someone]" as taking. 
Understand "cargar [someone]" as taking.

Understand "carga [something]" as inserting it into. 
Understand "cargar [something]" as inserting it into.

Understand "carga con [something]" as taking. 
Understand "cargar con [something]" as taking.

Rule for supplying a missing second noun while inserting a visible thing into:
	if the noun is Kim2:
		try taking Kim2;
		rule succeeds;
	if the noun is Kim1:
		try taking Kim1;
		rule succeeds;
	if the noun is a aparato and the cargador is visible, now the second noun is the cargador;
	if the noun is not a aparato and the cargador is visible, now the second noun is the cargador;
	otherwise: 
		if the cargador is not visible, say "Necesitas tener un cargador." instead.
	
Understand "ataca a [something]" or "pelea con [something]" as attacking.
Understand "dispara [something]" or "dispara a [something]" or "apunta [something]" or "apunta a [something]" as attacking. 
Understand "empuja [something] a [direction]" as pushing it to. [para que entienda "a dirección" y no solo "hacia dirección"]
Understand "levanta [something]" or "fuerza [something]" or "forza [something]" as pushing.
Understand "levanta [something] a [direction]" as pushing it to. 
Understand "recuerda" or "recorda" as thinking.

Instead of squeezing or rubbing something, try waving the noun.

Instead of waving something:
	if the noun is an animal, try attacking the noun;
	if the noun is a patroller, try touching the noun;
	otherwise:
		say "No veo que haciendo eso con [the noun] vayas a lograr gran cosa...".

[Salidas]
Salidaring is an action applying to nothing. Understand "salidas", "exits", "brujula", "x" as salidaring.
Check salidaring: 
	say "Salidas visibles: [if a room is adjacent][the list of adjacent rooms][end if][if a room is adjacent and a door is visible] y [end if][if a door is visible][the list of visible doors][end if]. [if a direction is visible][the list of visible directions][end if]"

Room-entering is an action applying to one thing.

Understand "visita [any room]" or "ir [any room]" or "ir a [any room]" or "ir a la [any room]" or "ir al [any room]" or "ir hacia [any room]" as room-entering.

Check room-entering:
	if the noun is the location, say "Ya estás en [the location]." instead;
	if the noun is not adjacent and the noun is unvisited, say "No veo ese lugar. Las posibles salidas son:[if a room is adjacent][the list of adjacent rooms][end if][if a room is adjacent and a door is visible] y [end if][if a door is visible][the list of visible doors][end if]. [if a direction is visible][the list of visible directions][end if]." instead.

Carry out room-entering:
	let aim be the best route from the location to the noun, using doors;
	if aim is not a direction, say "No veo ese lugar. Las posibles salidas son:[if a room is adjacent][the list of adjacent rooms][end if][if a room is adjacent and a door is visible] y [end if][if a door is visible][the list of visible doors][end if]. [if a direction is visible][the list of visible directions][end if]." instead;
	say "(te diriges al [aim])[command clarification break]";
	try going aim;
	if the location is not the noun, say "No puedo llegar tán rápido.".

[Consultar, seleccionar]
Consultaring is an action applying to one topic.  [sé que existe la acción Consulting, pero no me gusta cómo va y por tanto creo una nueva más fácil]	
Understand "consulta [text]", "selecciona [text]", "evacua [text]", "viaja [text]" as consultaring. 
Carry out consultaring: 
	say "'[topic understood]' ...". 
Instead of consulting something about, say "[italic type]Utiliza CONSULTA tema o SELECCIONA opción para interactuar con menús de opciones.[roman type]"

[Desbloquear, resetear, reiniciar, reparar, presionar]
Desbloquearing is an action applying to one thing. 
Understand "desbloquea [something]", "bloquea [something]", "resetea [something]", "reinicia [something]", "repara [something]", "presiona [something]", "escanea [something]", "decodifica [something]", "codifica [something]", "descodifica [something]", "usa [something]", "utiliza [something]" as desbloquearing. 
Check desbloquearing something:
say "No parece que eso vaya a funcionar con [the noun]." instead.

Before desbloquearing the tarjeta, say "[fixed letter spacing]Si quieres usar la tarjeta para abrir compuertas, pon 'ABRE COMPUERTA', si quieres usarla para activar el sistema operativo, pon 'METE TARJETA EN RANURA'.[paragraph break][variable letter spacing]" instead.

Before desbloquearing the cargador, say "[fixed letter spacing]Si quieres usar el cargador para cargar baterías, pon 'CARGA APARATO', donde aparato es un dispositivo sin batería, por ejemplo 'CARGA DECODIFICADOR'.[paragraph break][variable letter spacing]" instead.

Before desbloquearing the decodificador, say "[fixed letter spacing]Si quieres usar el decodificador para decodificar y reparar chips, pon 'REPARA CHIPS', donde chip es un aparato con circuitos, por ejemplo 'REPARA ROBOT'.[paragraph break][variable letter spacing]" instead.

Before desbloquearing the pistola, say "[fixed letter spacing]Si quieres usar la pistola blaster, pon 'DISPARA OBJETO' o 'DISPARA A PERSONAJE' según si atacas a un objeto o a un personaje, por ejemplo: 'DISPARA A ROBOT'.[paragraph break][variable letter spacing]" instead.

[Teclear, escribir, programar]
Teclearing is an action applying to one topic.
Understand "teclea [text]", "escribe [text]", "programa [text]" as teclearing. 
Check teclearing: say "'[topic understood]'".

[Nadar]
Nadaring is an action applying to one thing. 
Understand "nada [something]", "bucea [something]", "zambullete en [something]", "nada en [something]", "bucea en [something]", "nada hacia [something]", "bucea hacia [something]", " [something]", "chapotea [something]", "chapotea en [something]" as nadaring. 
Check nadaring something:
say "No creo que intentar hacer eso en [the noun] sea lo más apropiado." instead.

[Rezar]
Rezaring is an action applying to nothing. Understand "reza", "ora", "llora", "grita", "suplica" as rezaring.
Check rezaring: 
	say "Tus súplicas no sirven de nada, Stanislav. Tal vez necesites un poco de [bold type]ayuda[roman type]."

Part 2 - La nave Copérnico 86

Section - 2.1 Empieza la acción

The Copernico86 is a region. Sala de emergencia, Sala de automatismos, Sala de cambio, Sala de comunicaciones, Sistema de capsulas, Sala de abastecimiento, Sala de control, Gran jardín de especies are in the Copernico86. The techo is a backdrop in the Copernico86. "El techo y las paredes están débilmente iluminados por una intermitente luz roja. Fugaces destellos y chispas aparecen por entre la maraña de cables y tuberías que conectan las diferentes salas.". Understand "luz", "destellos", "chispas", "cables", "marana", "paredes", "pared", "suelo", and "tuberias" as the techo. [definimos que la nave es una misma región, así con backdrop podremos poner decorados comunes]

Instead of listening when the player is in Copernico86, say "Puedes escuchar un fuerte zumbido y numerosas explosiones que se suceden por toda la nave, ¡debes salir de aquí ya!".

Instead of smelling when the player is in Copernico86, say "Apenas puedes respirar con normalidad, el humo impide que puedas coger mucho aire...".

Instead of sleeping when the player is in Copernico86, say "¡No es momento de dormir, Stanislav! Tal vez necesites un poco de [bold type]ayuda[roman type].".

Instead of jumping when the player is in Copernico86:
	if the player is in capsula: 
		say "Deberías salir primero de la cápsula.";
	else if the player is in capsula2:
		say "Deberías salir primero de la cápsula.";
	otherwise:
		say "Saltas para desentumecer tus huesos y músculos tras la hipotermia inducida. ¡Te sientes un poco mejor, pero debes darte prisa en evacuar la nave!".

Instead of thinking when the player is in Copernico86, say "¡Eso es, piensa! ¡Piensa Stanislav! Tienes que evacuar la tripulación, el ordenador de control permite acceder a introducir coordenadas de evacuación, si tecleo unas nuevas coordenadas... ¡podría funcionar! Tal vez necesites un poco de [bold type]ayuda[roman type].".

Sala de emergencia is a room. "[if the player is in the capsula for the first time]Tu cuerpo se recupera de la hipotermia inducida y poco a poco tu metabolismo va saliendo del estado de letargo. [end if][if the player is in the capsula and the capsula is closed]Te encuentras en una cápsula de hibernación, a través de su [bold type]cristal[roman type] puedes ver el techo de la sala. [else if the player is in the capsula and the capsula is open]Te encuentras en tu cápsula de hibernación, el [bold type]cristal[roman type] está abierto y puedes salir. [else if the player is not in the capsula]Estás en la sala de emergencia, es una estancia débilmente iluminada con una luz roja parpadeante. Escuchas fuertes explosiones... ¡La nave Copérnico 86 se encuentra en peligro! Hacia el oeste de tu posición se encuentra la Sala de automatismos. Al este se encuentra la Sala de cambio.[end if]"

A capsula (f) is here. "Puedes ver aquí la cápsula en la que has estado hibernando." 
The description of capsula is "Es la cápsula de hibernación de emergencia de la nave. El cristal está [if open]abierto.[else if closed]cerrado.[end if]". The printed name of capsula is "cápsula". Understand "hibernacion", "capsula de hibernacion", "capsula de emergencia" as the capsula.
The capsula is a container, enterable, openable, transparent, closed and fixed in place. 
The cristal (m) is part of the capsula. 
Instead of opening or pushing the cristal, try opening the capsula. 
Instead of closing or pulling the cristal, try closing the capsula. 
The description of the cristal is "El cristal está [if capsula is open]abierto.[otherwise]cerrado.".

Instead of getting off the capsula, try exiting. [Por si el jugador pone "salir de la cápsula"]
Instead of waking up, try exiting. [Por si el jugador pone levantarse]

A nave (f) is here. The nave is scenery. The description is "La nave parece estar acercándose a un peligro inmediato, debes corregir el rumbo de la nave o evacuar a la tripulación que duerme en el sistema de cápsulas.". Understand "peligro", "copernico 86", "copernico", "explosiones" as the nave.

The player is in the capsula. [El jugador empieza dentro de la cápsula de emergencia]

The player wears a brazalete (m). The description of the player is "Apenas recuerdas quién eres, estás saliendo de la hipotermia inducida demasiado rápido, tratas de recordar qué se tiene que hacer en caso de emergencia, pero tu cabeza da vueltas y apenas puedes respirar."
The description of the brazalete is "Un sencillo brazalete de identificación que muestra tu nombre y tu número: Stanislav Odengar. R1198.". 
Instead of desbloquearing the brazalete, try pushing the brazalete.

The player wears the uniforme (m). The description of the uniforme is "Es el uniforme oficial de la tripulación científica de la nave Copérnico 86. Su tela está hecha de una fibra especial sintética que aísla del frío y del calor extremo, y por eso te mantiene con vida. Tiene un par de bolsillos amplios en los que [if the uniforme contains nothing]no hay nada ahora mismo. [otherwise]puedes ver [the list of things in the uniforme]."
The uniforme is a container. The carrying capacity of the uniforme is 2.
Understand "tela", "fibra", "bolsillos", "bolsillo" and "traje" as the uniforme.
Instead of inserting something which is a patroller into the uniforme, say "¡No puedo meter a [the noun] en el bolsillo!".
Instead of taking off the uniforme, say "¡Debo llevarlo puesto si quiero sobrevivir!".

Instead of desbloquearing or waking or pushing the capsula, try opening the capsula.

Before entering the capsula:
	instead move the player to the capsula;
	now the capsula is open.

Instead opening the capsula for the first time:
	say "Abres la cápsula y observas a tu alrededor el caos...[paragraph break]La luz de emergencia indica que hay numerosos fallos, escuchas explosiones a lo lejos y te invade una sofocante sensación de calor... ¡debes actuar rápido antes de que el sistema colapse!";
	now the capsula is open;
	increase the score by 10.

West of the Sala de emergencia is Sala de automatismos. East of the Sala de emergencia is Sala de cambio.

The description of Sala de automatismos is "En la sala de automatismos reina el caos absoluto, algunos de los [bold type]monitores[roman type] de control han explotado, otros están emitiendo datos a una velocidad ilegible. El panel de control está inservible. Un zumbido ensordecedor hace insoportable estar aquí. Será mejor darse prisa.".

Some monitores are in the Sala de automatismos. They are scenery. The description is "Todos los monitores están actualizando datos sobre los sistemas de la nave. Un vistazo rápido parece indicar que hay numerosos [bold type]fallos de sistema[roman type].".

Some fallos de sistema (m) are in the Sala de automatismos. They are scenery. The description is "Hay numerosos fallos de sistema. En un monitor aparece un mensaje algo más claro: [line break][fixed letter spacing]'APROXIMACIÓN PELIGROSA AL SOL DEL SISTEMA TRAPPIST. SE SUGIERE EVACUACIÓN INMEDIATA.'[variable letter spacing][paragraph break]". Understand "monitor/fallo/mensaje/error/datos" as the fallos de sistema.

A mesa de control (f) is in the Sala de automatismos. "Una amplia mesa semicircular repleta de controles de todo tipo preside la estancia.". The mesa de control is fixed in place and supporter.
The description of the mesa de control is "Demasiados controles y demasiadas luces, todo parece estar fallando. Un humo negro sale de la [bold type]ranura[roman type] de tarjetas del ordenador CPM2, totalmente chamuscado. No voy a poder acceder al sistema de control desde aquí." 
Understand "mesa", "controles", "humo", and "luces" as the mesa de control.

A ordenador CPM2 (m) is in the Sala de automatismos. The description is "Un humo negro sale de la [bold type]ranura[roman type] de tarjetas del ordenador CPM2, totalmente chamuscado. ¿Funcionará el ordenador si INSERTO la tarjeta en la RANURA?" It is scenery and container. Instead of inserting something which is not a tarjeta maestra into a ordenador CPM2, say "Solo se puede [bold type]insertar[roman type] una tarjeta maestra." 
Understand "ordenador", "pantalla", "cpm2", "ranura", "panel", "panel de control" and "ranura de tarjetas" as the ordenador CPM2.

Instead of inserting the tarjeta maestra into ordenador CPM2:
	say "Imposible insertar la tarjeta en el ordenador CPM2, está totalmente chamuscado. Debo encontrar una alternativa.".

A tarjeta maestra (f) is on the mesa de control. The description is "Con esta tarjeta de control puedo abrir todas las compuertas de la nave y acceder al sistema de control." Understand "llave" as the tarjeta maestra.

A aparato is a kind of thing. A aparato can be cargado or descargado. A aparato is usually descargado. [Solo pueden meterse en el cargador objetos que puedan cargarse]
A cargador (m) is on mesa de control. The cargador is a container. The carrying capacity of the cargador is 1. Instead of inserting something which is not a aparato into a cargador, say "No parece que [the noun] tenga que ir ahí.". Understand "bateria/pila/pilas/baterias" as the cargador. The printed name of cargador is "cargador de baterías".
The description of the cargador is "Un cargador de baterías universal.[paragraph break][fixed letter spacing]Para cargar un aparato descargado, pon 'CARGA aparato' o 'METE aparato EN cargador'.[variable letter spacing]".

Before taking the tarjeta maestra for the first time, increase the score by 10.

[Sala de cambio, donde hay la primera compuerta, que se tiene que abrir con la tarjeta maestra]
The description of Sala de cambio is "Te encuentras en la sala de cambio, que comunica el puente de la nave de oeste a este con el resto de estancias, aunque se hace muy complicado avanzar debido al intenso calor y la escasa luz, que te impide ver con claridad. "

Instead of going east in Sala de cambio:
	unless the compuerta del corredor is open, say "¡La puerta no se abre! Necesitas una tarjeta maestra...";
	otherwise:
		continue the action.
		

Instead of opening the compuerta del corredor:
	if the player carries the tarjeta maestra and the compuerta del corredor is closed:
		now the compuerta del corredor is unlocked;
		now the compuerta del corredor is open;
		say "Consigues desbloquear la compuerta y abrirla gracias a la tarjeta maestra. [paragraph break][if the Sala de comunicaciones is unvisited]¡Ah! De pronto recuerdas... algo ocurrió aquí. ¿Qué pasó? Por aquí debería haber un [bold type]robot[roman type] de mantenimiento, ¿dónde está? ¡Quizás tras esta compuerta![paragraph break][end if]";
	else if the tarjeta maestra is not handled: 
		say "¡La puerta no se abre! Necesitas una tarjeta maestra...";
	otherwise:
		say "[if the compuerta del corredor is closed]Deberías poder abrir la compuerta con la tarjeta maestra, ¿dónde la has puesto?[else if compuerta del corredor is open]Ya está abierta.[end if]".

The compuerta del corredor (f) is a door. "Puedes ver una compuerta [if open]abierta[else if closed]cerrada[end if]."
The compuerta del corredor is east of Sala de cambio and west of Sala de comunicaciones. 
The compuerta del corredor is lockable and locked. The matching key of the compuerta del corredor is the tarjeta maestra.  
The description of the compuerta del corredor is "La compuerta de seguridad impide el acceso al resto de la nave. Para abrirla necesitas una tarjeta maestra."
Understand "puerta" as the compuerta del corredor.

[Sala de comunicaciones, donde está el holograma]
The description of Sala de comunicaciones is "Esta larga sala da acceso a una amplia estancia circular con una gran mesa iluminada en el centro. El calor es aún más sofocante aquí. Al norte de tu posición se encuentra el enorme sistema de cápsulas, al sur se encuentra la sala de abastecimiento."
A mesa circular (f) is in Sala de comunicaciones. The description is "Una gran mesa retroiluminada, circular. Se supone que se deberían celebrar las reuniones de emergencia aquí, pero parece que solo has despertado tú de la hibernación." The mesa circular is scenery.
A sistema cartografico estelar (m) is on the mesa circular. "Sobre la mesa puedes ver el [bold type]holograma[roman type] parpadeante del sistema cartográfico estelar, con la descripción del sistema solar actual y tu posición." The description is "Es un holograma que muestra la [bold type]posición[roman type] de la nave en tiempo real en relación al sistema cartográfico estelar conocido." 
The sistema cartografico estelar is fixed in place. Understand "holograma" as the sistema cartografico estelar.
The TRAPPIST is in the Sala de comunicaciones. "La nave Copérnico 86 está peligrosamente cercana al sol del sistema TRAPPIST. Es por eso que hace tanto calor aquí, en cualquier momento la nave puede colapsar. Hay que cambiar el rumbo de la nave o bien hay que evacuar a alguno de los [bold type]planetas[roman type] que muestra el sistema." 
Understand "nave", "descripcion", "cartografia" and "posicion" as the TRAPPIST. The TRAPPIST is scenery.

Some planetas (m) are in the Sala de comunicaciones. "Los planetas que muestra el sistema TRAPPIST son tres: el gigante [bold type]Hades[roman type], el mediano [bold type]Limbo[roman type] y el pequeño [bold type]Gaia[roman type]. Estos nombres son asignados por el sistema según las especificaciones de cada planeta. Debería haber más datos de cada uno, pero no hay más información." They are scenery. 
Understand "nombres", "informacion", "datos", "planeta", "especificaciones" as the planetas.

A planetaHadesinfo is in the Sala de comunicaciones. The planetaHadesinfo is scenery. The printed name of planetaHadesinfo is "planeta Hades". The description of planetaHadesinfo is "El planeta HADES o TRAPPIST1A es un gigante volcánico, es el más grande de los tres planetas potencialmente habitables. No hay más datos disponibles aquí.". Understand "hades", "TRAPPIST1A", "gigante", "volcanico" as planetaHadesinfo.

A planetaLimboinfo is in the Sala de comunicaciones. The planetaLimboinfo is scenery. The printed name of planetaLimboinfo is "planeta Limbo". The description of planetaLimboinfo is "El planeta LIMBO o TRAPPIST2A es un mediano selvático, es un planeta templado potencialmente habitable. No hay más datos disponibles aquí.". Understand "limbo", "TRAPPIST2A", "mediano", "selvatico" as planetaLimboinfo.

A planetaGaiainfo is in the Sala de comunicaciones. The planetaGaiainfo is scenery. The printed name of planetaGaiainfo is "planeta Gaia". The description of planetaGaiainfo is "El planeta GAIA o TRAPPIST3A es un pequeño oceánico, es el más pequeño de los tres planetas potencialmente habitables. No hay más datos disponibles aquí.". Understand "gaia", "TRAPPIST3A", "pequeno", "oceanico" as planetaGaiainfo.


North of Sala de comunicaciones is Sistema de capsulas. South of Sala de comunicaciones is Sala de abastecimiento.

	
Section - 2.2 El robot en la nave

[Programar el robot y sus conversaciones]
A robot (m) is in Sala de abastecimiento. "[if the robot is Off Patrol]El robot se está reiniciando.[otherwise]Un [bold type]robot[roman type] de mantenimiento está intentando reparar los cables humeantes que cuelgan del techo y las paredes.".
The description of the robot is "[if the robot is Off Patrol]El robot se está reiniciando.[otherwise]Es un robot de mantenimiento de tipo humanoide, por su aspecto parece el modelo P23 de Asimo. Trata inútilmente de reparar la nave, no parece ser consciente de que sus esfuerzos son inútiles."
Understand "p23/asimo" as the robot.
	
Instead of desbloquearing the robot:
	if the robot is Off Patrol, say "[line break][fixed letter spacing]'POR FAVOR, ESPERE. REINICIANDO...'[variable letter spacing][line break]" instead;
	if the player carries the decodificador and the decodificador is descargado, say "[line break][fixed letter spacing]'DECODIFICADOR NO OPERATIVO...'[variable letter spacing][line break]" instead;
	if the player carries the decodificador and the decodificador is cargado:
		say "[fixed letter spacing]'DECODIFICANDO SISTEMA...'[line break]";
		wait for any key;
		say "'ERROR DE MEMORIA EN SISTEMA DE ASIMO P23...'[line break]";
		wait for any key;
		say "'DESACTIVANDO...'[line break]";
		wait for any key;
		say "'REINICIANDO...'[line break][variable letter spacing]";
		wait for any key;
		increase the score by 10;
		now the robot is Off Patrol;
		deactivate the robot;
		rule succeeds;
	otherwise:
		say "Para reparar o reiniciar el robot necesitarías un decodificador CV23.".
	
Instead of talking to the robot when the robot is Off Patrol, say "El robot no emite ningún sonido.".

Instead of touching or pulling or pushing or kissing or waking or taking the robot, try attacking the robot.

Instead of attacking the robot:
	if the robot is Off Patrol, say "El robot continúa reiniciándose...";
	otherwise:
		say "[italic type]El robot se gira bruscamente y caes al suelo...[roman type][paragraph break]'¡Vuelva a su cápsula, tripulante!'".

The robot is a patroller. The robot is aimless. The drive of the robot is 50. [con esto movemos al robot aleatoriamente por la nave]
The litany of the robot is the Table of robot Comments. [con esto indicamos el árbol de conversaciones que tiene el robot]

Table of Quip Texts (continued)
quip	quiptext
que-pasa	"[fixed letter spacing]'La nave presenta fallos de estructura debido a causas externas, mi tarea es reparar esos fallos.'[variable letter spacing]"
que-haces	"[fixed letter spacing]'Reparando fallos de estructura...'[variable letter spacing][paragraph break][italic type]El robot te observa detenidamente.[roman type][paragraph break][fixed letter spacing]'Bienvenido Doctor Odengar. No se preocupe, lo tengo todo bajo control.'[variable letter spacing]"
ayuda	"[fixed letter spacing]'En este momento estoy ocupado. Vuelva a su cápsula, tripulante.'[variable letter spacing]"
ayuda2	"[fixed letter spacing]'¡Vuelva a su cápsula, tripulante!'[variable letter spacing]"
hades	"[fixed letter spacing]'Accediendo a datos: Hades, planeta gigante volcánico. Anomalía detectada. ¿Necesita coordenadas?'[variable letter spacing]"
limbo	"[fixed letter spacing]'Accediendo a datos: Limbo, planeta mediano selvático. Anomalía detectada. ¿Necesita coordenadas?'[variable letter spacing]"
gaia	"[fixed letter spacing]'Accediendo a datos: Gaia, planeta pequeño oceánico. Anomalía detectada. ¿Necesita coordenadas?'[variable letter spacing]"
coordenadas	"[fixed letter spacing]'No tengo acceso a las coordenadas. Acuda a ordenador central para consultar más datos.'[variable letter spacing]"
asimo	"[fixed letter spacing]'Soy el robot de mantenimiento ASIMO P23, aunque me puede llama Asimo, o P23. Vuelva a su cápsula, por favor.'[variable letter spacing]"
cadaver	"[fixed letter spacing]'Era el comandante Nick Spofytus. Una lamentable pérdida, nunca pudo salir del Gran jardín, la capitana bloqueó todas las compuertas.'[variable letter spacing]"
capitana	"'La capitana Kim Kimberley cambió la ruta de navegación debzzzDATOS TRUNCADOS. Por favor tripulante, vuelva a su cápsula.'[variable letter spacing]"


Table of robot Comments
prompt	response	enabled
"¿Qué está pasando aquí?"	que-pasa	1
"¿Qué haces?"	que-haces	1
"¿Qué tipo de robot eres?"	asimo	0
"¡Deja eso ya! ¡Necesito ayuda!"	ayuda	0
"¡Ayúdame, por favor!"	ayuda2	0
"Dame datos del planeta Hades."	hades	0
"Dame datos del planeta Limbo."	limbo	0
"Dame datos del planeta Gaia."	gaia	0
"¡Dame las coordenadas para evacuarnos!"	coordenadas	0
"He visto un cadáver en el Gran jardín, ¿quién es?"	cadaver	0
"¿Por qué hizo eso la capitana?"	capitana	0

After examining the robot for the first time:
	enable the asimo quip for the robot;
	say "[italic type]Para interactuar con el robot, utiliza HABLA CON ROBOT.[roman type][paragraph break]";
	now the description of the robot is "[if robot is On Patrol]El robot Asimo P23 sigue intentando reparar la nave, no parece ser consciente de que sus esfuerzos son inútiles.[otherwise]El robot parece que está desactivado.";
	now the printed name of the robot is "robot Asimo P23".
	
After examining the huesos for the first time: enable the cadaver quip for the robot.
After quipping when the current quip is cadaver: enable the capitana quip.

After examining the planetas for the first time:
	enable the hades quip for the robot;
	enable the limbo quip for the robot;
	enable the gaia quip for the robot.
	
After quipping when the current quip is que-pasa: enable the ayuda quip.
After quipping when the current quip is hades: enable the coordenadas quip.
After quipping when the current quip is limbo: enable the coordenadas quip.
After quipping when the current quip is gaia: enable the coordenadas quip.

After quipping when the current quip is ayuda:
	enable the ayuda2 quip;
	terminate the conversation.
		
After quipping when the current quip is ayuda2:
	enable the ayuda quip;
	terminate the conversation.
	
Section - 2.3 La evacuación

[Cápsulas de hibernación y evacuación]
The description of Sistema de capsulas is "Esta parte de la nave alberga el inmenso sistema de [bold type]cápsulas[roman type] de hibernación, repartidas en decenas de pisos. [if the capsula2 is not in location]Albergan la vida en hipotermia inducida de cientos de miles de personas, llamados a ser los futuros colonos del planeta Gliese 667Cc, en la constelación del Escorpión. [end if]Cruzando la compuerta, al norte, accederás a la sala de control.[if the player is in capsula2][paragraph break]Te encuentras dentro de tu cápsula de hibernación. Una voz metálica surge de algún punto de la cápsula: [fixed letter spacing]'PRESIONE EL BRAZALETE PARA INICIAR EVACUACIÓN.'[variable letter spacing]". The printed name of Sistema de capsulas is "Sistema de cápsulas".

Some capsulas de hibernacion (f) are in Sistema de capsulas. They are scenery. "Innumerables cápsulas de hibernación. Todas están designadas a nombre de algún tripulante de la nave. Tu cápsula de evacuación también está aquí, ¡podrías entrar en ella y empezar la evacuación!" 
The printed name of the capsulas de hibernacion is "cápsulas de hibernación".
Understand "capsula/tripulante/tripulantes/personas/pisos/evacuacion" as the capsulas de hibernacion.

Instead of touching, entering, taking, waking or attacking the capsulas de hibernacion, try searching the capsulas de hibernacion.

Instead of examining the capsulas de hibernacion for the first time, try searching the capsulas de hibernacion.

The capsula2 (f) is nowhere. "Observas tu cápsula de hibernación entre la enormidad del sistema de cápsulas."
The description of capsula2 is "Es tu cápsula de hibernación, lleva tu número asignado: R1198. [if open]La cápsula está abierta.[otherwise]La cápsula está cerrada." 
The capsula2 is a container, openable, transparent, open and fixed in place.
Does the player mean examining the capsulas in the presence of capsula2: it is very unlikely. [solucion para desambiguación de capsulas y capsula2]
The printed name of capsula2 is "cápsula de hibernación".
Understand  "capsula", "hibernacion", "capsula de hibernacion", "numero" and "r1198" as the capsula2.

The cristal2 (m) is part of the capsula2. The printed name of the cristal2 is "cristal". Understand "cristal" as the cristal2.
The description of the cristal2 is "El cristal está [if capsula2 is open]abierto.[otherwise]cerrado.".

Instead of opening or pushing the cristal2, try opening the capsula2. 
Instead of closing or pulling the cristal2, try closing the capsula2. 

Instead of getting off the capsula2, try exiting. [Por si el jugador pone "salir de la cápsula"]


Before entering the capsula2:
	instead move the player to the capsula2;
	now the capsula2 is open.

Before searching the capsulas de hibernacion for the first time:
	now the capsula2 is in Sistema de capsulas;
	say "Te desesperas ante la enormidad del sistema de cápsulas, pero entonces te detienes ante una en especial... entre las innumerables cápsulas puedes ver una con tu número: R1198.[paragraph break]" instead.

Before searching the capsulas de hibernacion:
	say "Has encontrado tu cápsula de hibernación, tiene el número: R1198." instead.
	
[La evacuación mediante la cápsula y el brazalete]
Before pushing the brazalete when the player is in capsula2:
	if destino is alamierda:
		say "El brazalete no parece funcionar.[paragraph break]¡No hay ninguna coordenada válida a la cual evacuar el sistema de cápsulas![paragraph break]";
		rule succeeds;
	otherwise:
		say "Presionas el brazalete y en unos segundos el sistema de hibernación se pone en marcha. Poco a poco vas perdiendo la consciencia, mientras escuchas terribles explosiones que cada vez provienen de estancias más próximas...[paragraph break]";
		deactivate the robot; [Paramos el movimiento del robot para que no esté todo el rato dando vueltas.]
		if compuerta del sistema is open or compuerta del corredor is open:
			wait for any key;
			say "El calor no cesa. Algo falla, las explosiones se suceden y cada vez son más fuertes.[paragraph break]";
			wait for any key;
			say "¡El fuego alcanza al sistema de cápsulas! El último pensamiento que cruza tu cabeza es si te dejaste alguna compuerta abierta... ¡pero ahora ya es demasiado tarde![paragraph break]";
			wait for any key;
			say "Una silenciosa explosión final desintegra la nave colonizadora Copérnico 86 en el sistema solar de Trappist, mudo testigo del infortunado final de este viaje.";
			wait for any key;
			end the story saying "Has muerto.";
		else if capsula2 is open:
			wait for any key;
			say "De repente, te das cuenta de algo, un error aparentemente menor pero letal...[paragraph break]";
			wait for any key;
			say "El cristal de la cápsula no está cerrado, el sistema de hibernación no está funcionando...[paragraph break]";
			wait for any key;
			say "Aterrado, cierras la cápsula con un último esfuerzo... pero es demasiado tarde. La vida se te escapa entre estertores, y tu último pensamiento es para el resto de la tripulación, que esperas lleguen sanos y salvos a un futuro incierto.[paragraph break]";
			wait for any key;
			end the story saying "Has muerto.";
		else if capsula2 is closed:
			if destino is ahades:
				wait for any key;
				say "Violentas explosiones se suceden en la nave, pero el módulo de cápsulas consigue liberarse e iniciar el programa de evacuación. Te sumerges en un largo letargo inducido, mientras las cápsulas se dirigen inexorablemente hacia el planeta Hades...[paragraph break]";
				wait for any key;
				now the description of the player is "Eres un superviviente de la nave Copérnico 86, has conseguido evacuar el sistema de cápsulas y ahora estás en el planeta Hades.";
				clear the screen;
				center "SEGUNDA PARTE: PLANETA HADES[paragraph break][paragraph break]";
				wait for any key;
				now all of the things in the capsula2 are in the capsula_yermo;
				rule succeeds;
			if destino is alimbo:
				wait for any key;
				say "Violentas explosiones se suceden en la nave, pero el módulo de cápsulas consigue liberarse e iniciar el programa de evacuación. Te sumerges en un largo letargo inducido, mientras las cápsulas se dirigen inexorablemente hacia el planeta Limbo...[paragraph break]";
				wait for any key;
				now the description of the player is "Eres un superviviente de la nave Copérnico 86, has conseguido evacuar el sistema de cápsulas y ahora estás en el planeta Limbo.";
				clear the screen;
				center "SEGUNDA PARTE: PLANETA LIMBO[paragraph break][paragraph break]";
				wait for any key;
				now all of the things in the capsula2 are in capsula_hondonada;
				rule succeeds;
			if destino is agaia:
				wait for any key;
				say "Violentas explosiones se suceden en la nave, pero el módulo de cápsulas consigue liberarse e iniciar el programa de evacuación. Te sumerges en un largo letargo inducido, mientras las cápsulas se dirigen inexorablemente hacia el planeta Gaia...[paragraph break]";
				wait for any key;
				now the description of the player is "Eres un superviviente de la nave Copérnico 86, has conseguido evacuar el sistema de cápsulas y ahora estás en el planeta Gaia.";
				clear the screen;
				center "SEGUNDA PARTE: PLANETA GAIA[paragraph break][paragraph break]";
				wait for any key;
				now all of the things in the capsula2 are in capsula_pradera;
				rule succeeds.



Section - 2.4 El ordenador central

The compuerta del sistema (f) is a door. "Puedes ver una compuerta [if open]abierta[else if closed]cerrada[end if]."
The compuerta del sistema is north of Sistema de capsulas and south of Sala de control. 
The compuerta del sistema is lockable and locked. The matching key of the compuerta del sistema is the tarjeta maestra.  
The description of the compuerta del sistema is "La compuerta de seguridad separa el sistema de cápsulas de la sala de control. Para abrirla necesitas la tarjeta maestra."
Understand "puerta" as the compuerta del sistema.

Instead of going north in Sistema de capsulas:
	unless compuerta del sistema is open, say "Debes abrir la compuerta para cruzarla.";
	otherwise:
		continue the action.
	
Instead of opening the compuerta del sistema:
	if the player carries the tarjeta maestra and the compuerta del sistema is closed:
		now the compuerta del sistema is unlocked;
		now the compuerta del sistema is open;
		say "Consigues desbloquear la compuerta y abrirla gracias a la tarjeta maestra.";
	otherwise:
		say "Deberías poder abrir la compuerta con la tarjeta maestra, ¿dónde la has puesto?".
		

[Ordenador central]
The description of Sala de control is "Te encuentras en la sala de control de cápsulas, puedes ver el [bold type]ordenador[roman type] central echando humo pero todavía funcionando milagrosamente. Cruzando la compuerta, al sur de esta sala, se encuentra el Sistema de cápsulas.".

The ordenador central (m) is in Sala de control. It is scenery. "Un complejo ordenador vigila que las constantes vitales de las personas que duermen en las cápsulas se mantengan estables. Desde su [bold type]pantalla[roman type] puedes acceder al [italic type]MENÚ DE CONTROL[roman type]. También puedes ver un [bold type]teclado[roman type] y una [bold type]ranura[roman type] para tarjetas.".

A pantalla (f), a ranura de tarjetas (f), a teclado (m) are part of the ordenador central. The ranura de tarjetas is a container. Instead of inserting something which is not a tarjeta maestra into a ranura de tarjetas, say "Solo se puede insertar una tarjeta maestra.".

The teclado can be bloqueado or desbloqueado. The teclado is bloqueado. Understand "reset", "boton", "teclas", "tecla", "bloqueo", "amarillo" and "boton amarillo" as the teclado.
	
The description of pantalla is "La pantalla no muestra el menú de opciones. [paragraph break][italic type]Deberías INSERTAR TARJETA en RANURA.[roman type]".
Understand "opcion/seleccion/opciones" as the pantalla.

The menu de control (m) is in Sala de control. It is scenery. "Tratas de acceder al menú de control, pero en la pantalla del ordenador central aparece la orden [fixed letter spacing]'INSERTE TARJETA MAESTRA PARA ACCEDER AL MENÚ DE CONTROL.'[variable letter spacing]"

The opciones (f) is nowhere. It is scenery. The printed name of opciones is "menú de opciones". [opciones es el objeto que usaremos para poder habilitar el menú de opciones del ordenador]
Instead of examining the opciones, try examining the pantalla instead.

After inserting the tarjeta maestra into ranura de tarjetas:
	now the description of the menu de control is "En la pantalla aparece un menú de opciones. Puedes [bold type]SELECCIONAR AYUDA[roman type] o [bold type]CONSULTAR[roman type] un tema.";
	now the description of the pantalla is "El [italic type]MENÚ DE CONTROL[roman type] te permite seleccionar algunos ítems o bien realizar consultas. Puedes [bold type]SELECCIONAR AYUDA[roman type] o bien [bold type]CONSULTAR[roman type] un ítem que no aparezca en el menú pero del que creas que el sistema pueda tener algún dato.";
	now the opciones is in Sala de control; [habilitar el menú de opciones]
	say "[fixed letter spacing]'La tarjeta ha sido insertada. Cargando datos. Accediendo al menú de control.'[paragraph break]'EXAMINE PANTALLA PARA OPCIONES.'[variable letter spacing][paragraph break]".
	
Before inserting the tarjeta maestra into ranura for the first time, increase the score by 10.
	
Instead of consultaring a topic listed in the Table of Consultas in the presence of the opciones: 
	say "[consulta entry][paragraph break]". [solo podemos consultar el menú de opciones si el objeto opciones está presente]

Table of Consultas 
Topic	Consulta
"evacuacion/evacuar/destino"	"[fixed letter spacing]'Para la evacuación del sistema de cápsulas, SELECCIONE las coordenadas y para punto de destino. Luego, confirme TECLEANDO las coordenadas. El módulo de cápsulas se desprenderá de la Copérnico 86 y se dirigirá a las coordenadas designadas.'[variable letter spacing]"
"rumbo/nave" or "navegacion"	"[fixed letter spacing]'Para cambiar el rumbo de la nave, debe primero acceder al ordenador CPM2 de la sala de automatismos para deseleccionar el actual rumbo de destino.'[variable letter spacing]"
"gliese/667cc/escorpion"	"[fixed letter spacing]'El planeta Gliese 667Cc, en la constelación del Escorpión, era el exoplaneta designado para la colonización y terraformación. El protocolo fue cambiado manualmente por la capitana Kim Kimberley hace 43 años.'[variable letter spacing]"
"kim/kimberley/capitana"	"[fixed letter spacing]'La capitana Kim Kimberley es la máxima autoridad de la nave Copérnico 86 tras el fallecimiento del comandaDATOS TRUNCADOS. ERROR.'[variable letter spacing]"
"comandante/nick/spofytus"	"[fixed letter spacing]'El comandante Nick Spofytus era la máxima autoridad de la nave Copérnico 86. Falleció hace 43 años por mDATOS TRUNCADOS. ERROR.'[variable letter spacing]"
"trappist" or "sistema"	"[fixed letter spacing]'El sistema TRAPPIST es un sistema similar al sistema solar, dentro de la Vía Láctea. Es uno de los destinos descartados por el programa Copérnico 86 por su menor cantidad de exoplanetas potencialmente habitables, aunque es el sistema más cercano con características similares a la Vía Láctea.'[variable letter spacing]"
"planeta/planetas/coordenadas"	"[fixed letter spacing]'El sistema TRAPPIST presenta tres planetas potencialmente habitables. El sistema ha designado los siguientes nombres a cada planeta: HADES, LIMBO y GAIA. Seleccione el planeta a consultar para más datos.'[variable letter spacing]"
"hades/gigante/trappist1a"	"[fixed letter spacing]'El planeta HADES o TRAPPIST1A es un gigante volcánico, es el más grande de los tres planetas potencialmente habitables. Detectada anomalía térmica. Coordenadas heliocéntricas Q1A8Z3.'[variable letter spacing]"
"limbo/mediano/trappist2a"	"[fixed letter spacing]'El planeta LIMBO o TRAPPIST2A es un mediano selvático, es un planeta templado potencialmente habitable. Detectada anomalía gravitatoria. Coordenadas heliocéntricas R2A9Z2.'[variable letter spacing]"
"gaia/pequeno/trappist3a"	"[italic type]'El planeta GAIA o TRAPPIST3A es un pequeño oceánico, es el más pequeño de los tres planetas potencialmente habitables. Detectada anomalía orbital. Coordenadas heliocéntricas S1X4Z8.'[variable letter spacing]"
"q1a8z3"	"[fixed letter spacing]'Correcto. Destino HADES. Por favor, para confirmar la evacuación, teclee las coordenadas y acuda a su cápsula. Cierre compuertas.'[variable letter spacing]"
"r2a9z2"	"[fixed letter spacing]'Correcto. Destino LIMBO. Por favor, para confirmar la evacuación, teclee las coordenadas y acuda a su cápsula. Cierre compuertas.'[variable letter spacing]"
"s1x4z8"	"[fixed letter spacing]'Correcto. Destino GAIA. Por favor, para confirmar la evacuación, teclee las coordenadas y acuda a su cápsula. Cierre compuertas.'[variable letter spacing]"
"ayuda/opciones/tema"	"[fixed letter spacing]'Puede consultar sobre una posible EVACUACIÓN, sobre la NAVEGACIÓN para cambiar el rumbo de la nave, sobre el SISTEMA TRAPPIST o sobre sus PLANETAS, pruebe diferentes opciones.'[variable letter spacing]"

[Resetear el teclado]

The description of the teclado is "El teclado del ordenador central permite [bold type]TECLEAR coordenadas[roman type] manualmente. [if bloqueado]Sin embargo, ahora parece estar bloqueado y no funcionan las teclas. Necesitarás algún tipo de objeto punzante para poder presionar el diminuto [bold type]botón[roman type] amarillo de RESET el tiempo suficiente para reiniciar el teclado.[otherwise]El teclado está desbloqueado.[end if]"

Instead of pushing or taking or touching or pulling or attacking or waking the teclado, try desbloquearing the teclado instead. [por si el jugador "pulsa el boton" en lugar de desbloquear]

Before desbloquearing the teclado:
	if the teclado is desbloqueado:
		say "El teclado ya está desbloqueado." instead;
	if the player carries the cuchillo:
		now the teclado is desbloqueado;
		say "Con la ayuda del cuchillo logras presionar el botón de reset hasta que suena un débil pitido. Parece que el teclado se ha desbloqueado." instead;
	otherwise:
		say "Necesitas algún tipo de objeto punzante para resetear el teclado." instead.
		

[Programar un destino de evacuación en el teclado del ordenador]
Destino is a thing. Destino can be ahades or alimbo or agaia or alamierda. Destino is alamierda.
Carry out teclearing in the presence of the teclado:
	if the teclado is bloqueado, say "El teclado está bloqueado." instead; [si el teclado está bloqueado, no se puede teclear]
	if the topic understood matches "coordenadas": 
		say "Tecleas '[topic understood]' y observas la pantalla. [paragraph break][fixed letter spacing]'CORRECTO. TECLEE COORDENADAS VÁLIDAS PARA DESTINO DE EVACUACIÓN.'[variable letter spacing]";
	if the topic understood matches "q1a8z3": 
		now destino is ahades;
		say "Tecleas '[topic understood]' y observas la pantalla. [paragraph break][fixed letter spacing]'CORRECTO. DESTINO HADES. ENVIANDO DATOS A BRAZALETE PARA EVACUACIÓN 010101010001.'[variable letter spacing]" instead;
	if the topic understood matches "r2a9z2": 
		now destino is alimbo;
		say "Tecleas '[topic understood]' y observas la pantalla. [paragraph break][fixed letter spacing]'CORRECTO. DESTINO LIMBO. ENVIANDO DATOS A BRAZALETE PARA EVACUACIÓN 010101010001.'[variable letter spacing]" instead;
	if the topic understood matches "s1x4z8": 
		now destino is agaia;
		say "Tecleas '[topic understood]' y observas la pantalla. [paragraph break][fixed letter spacing]'CORRECTO. DESTINO GAIA. ENVIANDO DATOS A BRAZALETE PARA EVACUACIÓN 010101010001.'[variable letter spacing]" instead;
	otherwise:
		say "Tecleas '[topic understood]' y observas la pantalla. Nada sucede." instead.
		

Section - 2.5 El incendio

[Sala de abastecimiento]
The description of Sala de abastecimiento is "Aquí se encuentra la inmensa sala de abastecimiento, donde se guardan todos los depósitos y [bold type]utensilios[roman type] necesarios para la terraformación de planetas. Al norte de tu posición está la sala de reuniones. Al sur, cruzando la compuerta, debería estar el Gran Jardín de especies."

The compuerta del almacen (f) is a door. "Puedes ver una compuerta [if open]abierta[else if closed]cerrada[end if]."
The compuerta del almacen can be caliente or fria. The compuerta del almacen is fria.
The compuerta del almacen is south of Sala de abastecimiento and north of Gran jardín de especies. 
The compuerta del almacen is lockable and locked. The matching key of the compuerta del almacen is the tarjeta maestra.  
The description of the compuerta del almacen is "La compuerta de la sala de abastecimiento da acceso a diferentes compartimentos de la nave con numerosas herramientas para la terraformación, así como al gran jardín de especies."
Understand "puerta" as the compuerta del almacen.

Instead of touching the compuerta del almacen, say "¡Está muy caliente!".

Instead of opening the compuerta del almacen for the first time, say "¡Cuidado! Tras la compuerta parece haber un gran incendio... ¡deberás ser muy rápido una vez la abras para que no te alcancen las explosiones![paragraph break]".

Instead of going south in Sala de abastecimiento:
	unless compuerta del almacen is open, say "Debes abrir la compuerta para cruzarla.";
	otherwise:
		continue the action.
	
Instead of opening the compuerta del almacen:
	if the player is in Gran jardín de especies:
		say "¡Céntrate Stanislav! Deberías salir de aquí lo más rápido posible y cerrar la compuerta.";
	else if Gran jardín de especies is visited:
		say "La compuerta está demasiado caliente para manipularla.";
	else if the player carries the tarjeta maestra and the compuerta del almacen is closed and the compuerta del almacen is fria:
		now the compuerta del almacen is unlocked;
		now the compuerta del almacen is open;
		say "Consigues desbloquear la compuerta y abrirla gracias a la tarjeta maestra.";
	otherwise:
		say "Deberías poder abrir la compuerta con la tarjeta maestra, ¿dónde la has puesto?".

[Cerrar la compuerta de la Sala de abastecimiento para escapar del incendio]
Before closing the compuerta del almacen:
	if the player is in Gran jardín, say "No sería buena idea encerrarme aquí con el incendio, será mejor cerrar la compuerta por el otro lado." instead;
	if the cuchillo is nowhere, say "Antes de cerrar este compartimento debería investigar si hay algo útil aquí dentro..." instead;
	else if Gran jardín de especies is visited:
		now the compuerta del almacen is closed; 
		now the compuerta del almacen is caliente; [si la compuerta está caliente, termina la escena del incendio]
		say "Reúnes toda tu fuerza de voluntad para cerrar la compuerta, quemándote las manos." instead;
	otherwise:
		 say "La compuerta está demasiado caliente para manipularla." instead.


Some utensilios (m) are in Sala de abastecimiento. They are scenery. The description of the utensilios is "[if the decodificador is in Sala de abastecimiento]No tienes muy claro qué puedes necesitar para este preciso momento, pero los ingenieros siempre hablaban de la importancia del [bold type]decodificador CV23[roman type]. También veo por aquí una [bold type]pistola MK2[roman type]. [otherwise]Muchos utensilios y herramientas que no sabes usar ni para qué sirven. Probablemente para una futura terraformación, pero ahora no son demasiado útiles...".
Understand "herramientas/almacen/abastecimiento/abastecimientos/depositos/sistemas/compartimentos" as the utensilios.

[El decodificador CV23]
Before examining the utensilios for the first time:
	now the pistola is in Sala de abastecimiento;
	now the decodificador is in Sala de abastecimiento.
	
A decodificador (m) is nowhere. The decodificador is a aparato. The decodificador is descargado.
The description of the decodificador is "[if descargado]Vaya, parece que le falta batería, tendría que cargarlo para que funcione. [otherwise]El decodificador CV23 está cargado y emite una ligera vibración cuando lo manipulas.".
The printed name of the decodificador is "decodificador CV23". Understand "cv23/descodificador" as the decodificador.

After inserting the decodificador into cargador:
	now the decodificador is cargado;
	say "[fixed letter spacing]'El decodificador CV23 ha sido insertado. Cargando baterías. Espere unos segundos...'[variable letter spacing]";
	wait for any key;
	say "[paragraph break]'[fixed letter spacing]CARGA COMPLETA.'[variable letter spacing]";
	now the player carries the decodificador.

[La pistola MK2]
A pistola (f) is nowhere. The pistola is a aparato. The pistola is descargado.
The description of the pistola is "[if descargado]Vaya, parece al blaster le falta batería, tendría que cargarla para que funcione. [otherwise]La pistola bláster MK2 es un arma temible.".
The printed name of the pistola is "pistola blaster MK2". Understand "mk2/pistola/blaster" as the pistola.

After inserting the pistola into cargador:
	now the pistola is cargado;
	say "[fixed letter spacing]'La pistola CV23 ha sido insertada. Cargando baterías. Espere unos segundos...'[variable letter spacing]";
	wait for any key;
	say "[paragraph break]'[fixed letter spacing]CARGA COMPLETA.'[variable letter spacing]";
	now the player carries the pistola.
	
[El Gran jardín de especies]
The description of Gran jardín de especies is "Donde antes se levantaba un enorme jardín destinado a preservar las diferentes especies terrestres ahora solo puede verse un terrorífico incendio que amenaza con quemar toda la nave. Todas las demás estancias y compartimentos a partir de aquí se encuentran tras las llamas y su acceso se te antoja imposible. El intenso humo te dificulta enormemente la respiración. Cruzando la compuerta, al norte de tu posición, está la sala de abastecimiento."

The incendio (m) is in Gran jardín de especies. It is scenery. "El incendio ha deborado todo el jardín, tras años y años de experimentos... todo el trabajo es pasto de las llamas. Deberías salir pronto de aquí, apenas puedes respirar debido al intenso humo." Understand "llamas/humo/estancias/compartimentos/especies/jardin" as the incendio.

Some huesos (m) are in Gran jardín de especies.  "Te sorprende ver, junto a la compuerta, los huesos desgastados de un [bold type]cadáver[roman type]."
The huesos are fixed in place. Understand "cadaver/hueso" as the huesos.
The description of huesos is "Por su posición, parece que murió tras esta compuerta. Sin una tarjeta maestra pudo quedarse aquí atrapado durante muchos años..."

Before examining the huesos for the first time:
	now the cuchillo is in location;
	say "Los huesos forman lo que parece fue el cuerpo de un hombre. Junto al cadáver puedes ver un desvencijado [bold type]cuchillo[roman type].".

The cuchillo (m) is nowhere. The description is "Un desvencijado cuchillo."
Understand "arma/filo" as the cuchillo.

Before taking or touching or attacking the huesos:
	say "No te atreves a tocar el cadáver." instead.
 
[La explosión inicial]
Explosion is a scene. Explosion begins when the compuerta del almacen is open. Explosion ends fortunately when the compuerta del almacen is caliente. Explosion ends sadly when the time since Explosion began is 18 minutes.

The contador is a number that varies.
When Explosion begins:
	   now contador is 0.
	
When Explosion ends fortunately:
	increase the score by 10;
	say "Algo chamuscado pero vivo, respiras aliviado tras haber dejado atrás el infierno desatado en el Gran jardín de especies. Pero... ¡debes darte prisa en evacuar la nave!";
	wait for any key.

When Explosion ends sadly:
	   end the story saying "Y de repente, todo acaba... [paragraph break]Se desata un último infierno de fuego que te alcanza de lleno, inútilmente tratas de revolcarte en el suelo. Comienzas a arder entre gritos desgarradores. [paragraph break]Tal vez deberías haber cerrado la compuerta del Gran jardín de especies... ¡ahora ya es demasiado tarde! [paragraph break]Una silenciosa explosión final desintegra la nave colonizadora Copérnico 86 en el sistema solar de Trappist, mudo testigo del infortunado final de este viaje. ".

Every turn while Explosion is happening:
	   increase contador by 1;
	   if contador is 4, say "El humo empieza a ser muy molesto, apenas puedo ver...";
	   if contador is 7, say "¡El fuego te impide respirar, empiezas a tener problemas serios aquí...";
	   if contador is 10, say "El fuego llega hasta el techo, apenas puedes tenerte en pie, el humo impide ver con claridad...";
	   if contador is 13, say "El fuego alcanza ya tu piel, tus manos sufren quemaduras al tocar las paredes, tratando de mantenerte en pie...";
	   if contador is 16, say "Empiezas a perder la consciencia, el fuego te quema y gritas de dolor, ¡tienes que cerrar ya la compuerta de la sala de abastecimiento!".	

[La destrucción final]
Destruccion is a scene. Destruccion begins when Explosion ends fortunately.
Destruccion ends sadly when the time since Destruccion began is 106 minutes.
Destruccion ends fortunately when the player is not in Copernico86.

When Destruccion ends sadly:
	 end the story saying "Y de repente, todo acaba... [paragraph break]Se desata un último infierno de fuego que te alcanza de lleno, inútilmente tratas de revolcarte en el suelo. Comienzas a arder entre gritos desgarradores. [paragraph break]Una silenciosa explosión final desintegra la nave colonizadora Copérnico 86 en el sistema solar de Trappist, mudo testigo del infortunado final de este viaje.".
	
When Destruccion ends fortunately:
	increase the score by 20;
	 say "Tu cuerpo se recupera de la hipotermia inducida y poco a poco tu metabolismo va saliendo del estado de hibernación.".

When Destruccion begins:
	   now contador is 0.
	
Every turn while Destruccion is happening:
	   increase contador by 1;
	   if contador is 5, say "Escuchas explosiones en otros compartimentos de la nave...";
	   if contador is 10, say "De nuevo escuchas una fuerte explosión...";
	   if contador is 20, say "Las explosiones se suceden con mayor rapidez...";
	   if contador is 30, say "El calor es demasiado intenso, sientes que vas a desfallecer...";
	   if contador is 35, say "Escuchas fuertes explosiones en otros compartimentos de la nave...";
	   if contador is 40, say "Las explosiones y el calor intenso en la Copérnico 86 indican que cada vez estás más cerca del fin...";
	   if contador is 45, say "De nuevo escuchas una fuerte explosión...";
	   if contador is 55, say "Las explosiones se suceden con mayor rapidez...";
	   if contador is 60, say "El calor es demasiado intenso, sientes que vas a desfallecer...";
	   if contador is 75, say "El calor es letal. Las explosiones se suceden cada vez más cerca. Si no evacúas pronto... la nave va a explotar...";
	   if contador is 85, say "De nuevo escuchas una fuerte explosión...";
	   if contador is 95, say "El calor es demasiado intenso, sientes que vas a desfallecer...";
	   if contador is 100, say "¡Date prisa! Si no evacúas ya... ¡la nave puede explotar en cualquier momento!";
	   if contador is 104, say "El fuego irrumpe ya con fuerza en la sala, estás a punto de morir... ¡Escapa!".


Part 3 - Planeta Hades

Yermo volcánico is a room. "[if unvisited]¡Estás vivo! Conseguiste salir de la nave y evacuar las cápsulas de hibernación. A través del cristal de tu cápsula puedes ver que estás en mitad de un yermo seco, ennegrecido y veteado con extrañas formas de un color rojo pálido. Más allá, al norte, parece haber un gran volcán. A tu alrededor solo alcanzas a ver más terreno yermo. [otherwise]Estás en mitad de un yermo seco, ennegrecido y veteado con extrañas formas de un color rojo pálido. Más allá, al norte, observas la figura imponente del gran volcán. A tu alrededor solo alcanzas a ver más terreno yermo."

A capsula_yermo (f) is here. "Puedes ver tu cápsula de hibernación." 
The description of capsula_yermo is "Es tu cápsula de evacuación. [if open]El cristal está abierto.[otherwise]Ahora está cerrada."  
The capsula_yermo is a container, openable, transparent, closed and fixed in place.
The printed name of capsula_yermo is "cápsula".
Understand "hibernacion", "capsula", and "capsula de hibernacion" as the capsula_yermo.

The cristal3 (m) is part of the capsula_yermo. The printed name of the cristal3 is "cristal". Understand "cristal" as the cristal3.
The description of the cristal3 is "El cristal está [if capsula_yermo is open]abierto.[otherwise]cerrado.".

Instead of opening or pushing the cristal3, try opening the capsula_yermo. 
Instead of closing or pulling the cristal3, try closing the capsula_yermo. 

Instead of desbloquearing or pushing the capsula_yermo, try opening the capsula_yermo.
	
Before entering the capsula_yermo:
	say "Abres el cristal de tu cápsula y te introduces en el interior.";
	move the player to the capsula_yermo;
	now the capsula_yermo is open;
	rule succeeds.
	
Before exiting from the capsula_yermo during the Dia:
		say "No debería salir de la cápsula durante el día, ahí fuera parece el infierno..." instead.
		
Before exiting from the capsula_yermo during the Amanecer:
		say "No debería salir de la cápsula durante el día, ahí fuera parece que se va a desatar el infierno..." instead.
		
Before exiting from the capsula_yermo during the Atardecer:
		say "No debería salir de la cápsula aún, debería esperar a que sea totalmente de noche..." instead.
		
Before exiting from the capsula_yermo:
		say "Un aire denso te inunda los pulmones...".
		
[Decorados para el Planeta Hades]
The PlanetaHades is a region. Páramo desolado, Yermo volcánico, Ladera del volcán, Terreno baldío, Gran grieta, Páramo baldío, Terreno volcánico, Desfiladero are in the PlanetaHades.

Instead of listening when the player is in PlanetaHades, say "Puedes oir el crepitar de los fuegos y la agonía de la tierra de este mundo.".

Instead of smelling when the player is in PlanetaHades, say "Te cuesta mucho respirar, te falta el aire aquí... es como si estuvieras a gran altura y no hubiera suficiente oxígeno.".

Instead of tasting a planta, say "Le das un pequeño bocado... no está tan mal como parece por su aspecto.".

Instead of sleeping when the player is in PlanetaHades, say "¡No es momento de dormir, Stanislav! Tal vez necesites un poco de [bold type]ayuda[roman type].".

Instead of jumping when the player is in PlanetaHades:
	if the player is in Gran grieta:
		say "No hay necesidad de lanzarse a la muerte... además el sol acabará contigo en unos momentos. Tal vez podrías intentar trepar por el desfiladero, o tal vez...";
	else if the player is in Ladera del volcán:
		say "[if the roca is handled]En lugar de saltar deberías empujar alguna roca...[otherwise]Saltas sobre la ladera del volcán, ¡ten cuidado con las [bold type]rocas[roman type]!";
	else if the player is in capsula_yermo:
		say "Deberías salir primero de la cápsula.";
	otherwise:
		say "Saltas sobre la tierra yerma de Hades, ¿quizás te gustaría saltar al vacío y acabar con esto? Tienes una gran grieta disponible en algún lugar de este páramo...".

Instead of thinking when the player is in PlanetaHades:
	say "¡Eso es, piensa! ¡Piensa Stanislav! Tienes que encontrar la manera de mantenerte a salvo tanto de día como de noche. [if Gran Grieta is visited]Si consiguiera bajar por el desfiladero de la gran grieta tendría más opciones.[end if] Tal vez necesites un poco de [bold type]ayuda[roman type].".

The decoradoyermo is a backdrop in the PlanetaHades. "Allá donde diriges tu mirada solo observas el terreno ennegrecido y yermo del planeta Hades. Un erial sin vida, una roca inerte en mitad del espacio. Sin embargo aquí estás, respirando un aire que por el momento te mantiene con vida.". Understand "yermo/terreno/vetas/color/paramo/ladera/planeta/cielo/suelo/sol/humo/cenizas/viento" as the decoradoyermo. The printed name of decoradoyermo is "planeta Hades" 

The capsulas_yermo are a backdrop.
Some capsulas_yermo (f) are in the PlanetaHades. "Multitud de cápsulas de hibernación se encuentran esparcidas por este páramo.". They are not scenery. The printed name of capsulas_yermo is "cápsulas de hibernación". Understand "capsulas" as the capsulas_yermo.
The description of the capsulas_yermo is "Cientos de cápsulas de hibernación sobresalen entre el árido suelo del planeta, muchas de ellas semienterradas. Algunas de las cápsulas están abiertas, otras tantas cerradas, pero en todas ellas parece haber hecho mella el paso del tiempo.".
Instead of taking or pushing the capsulas_yermo, say "¡Son demasiadas! No puedes llevarte las cápsulas.".
Instead of opening or attacking or desbloquearing the capsulas_yermo, say "Tratas de manipular de alguna manera las cápsulas, pero tu esfuerzo es inútil.".

Before going north when the player is in Yermo volcánico for the first time:
	increase the score by 10.
	
[Las localidades yermas del Planeta Hades]
Páramo desolado is north of Yermo volcánico. The description of Páramo desolado is "Estás en mitad de un páramo seco, ennegrecido y veteado con extrañas formas de un color rojo pálido. El viento infernal transporta cenizas y humo denso. Hacia el norte se alza un enorme volcán."
Ladera del volcán is north of Páramo desolado.  The description of Ladera del volcán is "Estás en la ladera de un enorme volcán. Alzando la vista puedes ver el amenazador fuego y el denso humo que emite la boca del volcán. La lava ha formado caprichosas formas en la ladera pedregosa, por donde han caído numerosas [bold type]rocas[roman type] hasta descansar en la falda del volcán."
Páramo baldío is west of Yermo volcánico. The description of Páramo baldío is "Estás en mitad de un páramo seco, ennegrecido y veteado con extrañas formas de un color rojo pálido. Es sorprendente que pueda crecer algo aquí."
Terreno volcánico is east of Yermo volcánico. The description of Terreno volcánico is "Estás en mitad de un terreno seco, ennegrecido y veteado con extrañas formas de un color rojo pálido. Es sorprendente que pueda crecer algo aquí."
Terreno volcánico is south of Páramo baldío.
Páramo desolado is west of Terreno baldío. 
Terreno baldío is west of Páramo baldío. The description of Terreno baldío is "Estás en mitad de un terreno baldío, ennegrecido y veteado con extrañas formas de un color rojo pálido. El viento infernal transporta humo denso y cenizas."
Terreno baldío is south of Yermo volcánico. 
Páramo baldío is east of Terreno volcánico.
Gran grieta is east of Terreno baldío. The description of Gran grieta is "El páramo se ve interrumpido por una extraordinaria grieta que parte el terreno en dos mitades, separándolo en cientos de metros. Te asomas al borde de la grieta y puedes ver más cápsulas esparcidas por el fondo del desfiladero, aunque bajar ahí se te antoja imposible."


Section 3.1 - La noche y el día en el planeta Hades

Noche is a recurring scene. 
Amanecer is a recurring scene. 
Atardecer is a recurring scene. 
Dia is a recurring scene. 

Noche begins when play begins.
Noche begins when Atardecer ends. Noche ends when the time since Noche began is 30 minutes. 

When Noche begins: 
	if the player is in the PlanetaHades:
		say "[bold type]El sol se pone[roman type] tras el imponente volcán y todo el yermo se sumerge en las tinieblas."; 
		now the description of the decoradoyermo is "Es de noche y todo está sumergido en las tinieblas. Allá donde diriges tu mirada solo observas el terreno ennegrecido y yermo del planeta Hades. Un erial sin vida, una roca inerte en mitad del espacio. Sin embargo aquí estás, respirando un aire que por el momento te mantiene con vida." 

Amanecer begins when Noche ends. Amanecer ends when the time since Amanecer began is 10 minutes. 

When Amanecer begins: 
	if the player is in the PlanetaHades:
		say "[bold type]Comienza a amanecer[roman type], el sol tímidamente se asoma entre unas nubes rojizas. El ambiente se empieza a caldear y la tierra parece humear debido al calor."; 
		now the description of the decoradoyermo is "El sol empieza a calentar el ambiente y es tan poderosa su luz que apenas puedes fijar tu mirada en algún punto concreto sin dañar tu vista."  

Dia begins when Amanecer ends. Dia ends when the time since Dia began is 5 minutes. 

When Dia begins:
	if the player is in the PlanetaHades:
		say "[bold type]El sol luce en todo su esplendor[roman type], la tierra empieza a bullir, el humo surge de sus entrañas y las llamaradas emergen de entre sus grietas. El calor es tan asfixiante que es imposible respirar, es como el infierno en la tierra.";
		now the description of the decoradoyermo is "El sol inunda con su poderosa luz las tierras baldías de este mundo inerte. Allá donde diriges tu mirada solo observas el terreno ennegrecido y yermo del planeta Hades. Humaredas negras y llamaradas surgen de sus entrañas. La muerte te acecha.";
		wait for any key;
	if the player is in the PlanetaHades and the player is in capsula_yermo and the capsula_yermo is closed:
		say "[line break]Afortunadamente te has protegido en tu cápsula de hibernación, donde a pesar del calor el sistema trata de contrarrestar los efectos del exterior, manteniéndote a duras penas con vida...";
	if the player is in the PlanetaHades and the player is in capsula_yermo and the capsula_yermo is open:
		say "[paragraph break]El cristal de la cápsula de hibernación está abierto y el calor entra en el cubículo... ";
		wait for any key;
		say "[paragraph break]Contemplas como tu cuerpo empieza a quemarse por dentro, y cada respiración hace que el fuego te entre hasta los pulmones...";
		wait for any key;
		say "[paragraph break]Tu carne empieza a arder y gritas con todas tus fuerzas hasta que el fuego alcanza tus cuerdas vocales. Tu agonía es lo último que se escucha en este yermo... en este mundo infernal...";
		end the story saying "Has muerto.";
	if the player is in the PlanetaHades and the player is not in capsula_yermo:
		say "[paragraph break]El calor es demasiado intenso como para seguir, no puedes continuar... ";
		wait for any key;
		say "[paragraph break]Contemplas como tu cuerpo empieza a quemarse por dentro, y cada respiración hace que el fuego te entre hasta los pulmones...";
		wait for any key;
		say "[paragraph break]Tu carne empieza a arder y gritas con todas tus fuerzas hasta que el fuego alcanza tus cuerdas vocales. Tu agonía es lo último que se escucha en este yermo... en este mundo infernal...";
		end the story saying "Has muerto.".


Atardecer begins when Dia ends. Atardecer ends when the time since Atardecer began is 5 minutes. 

When Atardecer begins: 
	if the player is in the PlanetaHades:
		say "[bold type]El sol comienza a descender[roman type] lentamente hacia el norte, el humo que sale de la tierra quemada comienza a desaparecer, el cielo se tiñe de colores anaranjados, rojos y violetas... el atardecer es infinitamente bello y mortal a la vez." 

Section 3.2 - El robot en el planeta Hades

A lava (f) is scenery in Ladera del volcán. The description is "La lava ha formado extrañas formas en las rocas.".
A cima (f) is scenery in Ladera del volcán. The description is "El volcán es de enormes proporciones, tan solo estás en una ladera pedregosa. La boca del volcán está demasiado lejos allá arriba.". Understand "boca/volcan" as the cima.
Instead of going up in Ladera del volcán, say "Imposible subir la ladera sin que se me haga de día.".

[Creando robot estropeado para no confundirlo con el anterior robot]
The robot_estropeado (m) is a man in Ladera del volcán. The robot_estropeado can be estropeado or arreglado. The robot_estropeado is estropeado. "Bajo las rocas puedes un [bold type]robot[roman type] atrapado, o lo que queda de él."
The description of the robot_estropeado is "El robot Asimo P23 está atrapado bajo varias rocas. El intenso calor ha hecho que parte de su estructura se haya fundido entre las rocas y el suelo."
Understand "p23/asimo/robot" as the robot_estropeado. The printed name of the robot_estropeado is "robot".

Instead of touching or pushing or pulling or waking or taking the robot_estropeado, try attacking the robot_estropeado.
Instead of attacking the robot_estropeado, say "[italic type]'¡Clank!' [line break][roman type]Es imposible mover al robot, está atrapado bajo las rocas...[roman type]".

Instead of desbloquearing the robot_estropeado:
	if the robot_estropeado is arreglado, say "[fixed letter spacing]'SISTEMA PARCIALMENTE REPARADO...'[variable letter spacing][line break]" instead;
	if the player carries the decodificador and the decodificador is descargado, say "[fixed letter spacing]'DECODIFICADOR NO OPERATIVO...'[variable letter spacing][line break]" instead;
	if the player carries the decodificador and the decodificador is cargado:
		say "[fixed letter spacing]'DECODIFICANDO SISTEMA...'[line break]";
		wait for any key;
		say "[fixed letter spacing]'REPARANDO FRAGMENTOS DE MEMORIA...'[line break]";
		wait for any key;
		say "[fixed letter spacing]'SISTEMA DAÑADO AL 66%... REINICIANDO SISTEMA...'[line break]";
		wait for any key;
		say "[fixed letter spacing]'SISTEMA PARCIALMENTE REPARADO...'[line break][variable letter spacing]";
		increase the score by 10;
		now the robot_estropeado is arreglado;
		wait for any key;
		rule succeeds;
	otherwise:
		say "Para reparar o reiniciar el robot necesitarías un decodificador CV23.".
		
Instead of talking to the robot_estropeado when the robot_estropeado is estropeado, say "El robot no emite ningún sonido. Parece estropeado, tal vez reiniciándolo...".

[Creando nuevo árbol de diálogo para el robot estropeado]
The litany of the robot_estropeado is the Table of robot_estropeado Comments. [con esto indicamos el árbol de conversaciones que tiene el robot]

Table of Quip Texts (continued)
quip	quiptext
hola2	"[fixed letter spacing]'¿Quién está hablando?'[paragraph break][italic type]El robot te observa detenidamente.[roman type][paragraph break]'¡Bienvenido Doctor Odengar! Ha despertado también usted. Este es el planeta Hades. Accediendo a datos del sistema. Sí, usted fue quien nos trajo aquí, hace ya tanto tiempo de eso...'[variable letter spacing]"
que-pasa2	"[fixed letter spacing]'Hubo un fallo en las coordenadas, me temo. No fue su culpa, fue cosa de la capitana cuando puso rumbo al sistema Trappist. No calculó que nos enviaba a todos al centro del sistema, al sol. Usted fue despertado de emergencia de la hibernación y pudo enviarnos a uno de los planetas habitables.'[variable letter spacing]"
tiempo	"[fixed letter spacing]'Accediendo a datos del sistema. Sí, según mis cálculos han pasado el equivalente a doscientos años terrestres, aproximadamente. Esto es así porque nadie reprogramó los brazaletes para adecuarse al nuevo tiempo de viaje. Han permanecido en hibernación el tiempo suficiente como para llegar a Griesse, pero el sistema Trappist estaba mucho más cerca.'[variable letter spacing]"
tripulacion	"[fixed letter spacing]'Los hubo, sí. Aquellos que salen de la hibernación cuando llega la noche aún tienen posibilidades. Pero he visto a muy pocos sobrevivir, algunos lo intentan y finalmente desisten. La capitana Kim fue la primera en despertar...'[variable letter spacing]"
kim	"[fixed letter spacing]'Ella salió de hibernación mucho antes que los demás, vino hasta aquí e intentó liberarme empujando las rocas. Pero se le hizo de día, intenté advertirla... pero fue en vano. Murió aquí mismo y de ella ya no quedan ni los huesos. Una enorme pérdida...'[variable letter spacing]"
vida	"[fixed letter spacing]'Está usted aquí, así que técnicamente hay vida. También hay vidas en las cápsulas, aunque si salen durante el día... morirán. De hecho, Doctor Odengar, usted también morirá si se le hace de día y está fuera de su cápsula. El calor lo matará.'[variable letter spacing]"
ayuda3	"[fixed letter spacing]'¿Qué puedo hacer por usted, Doctor Odengar? ¡No puedo salir de debajo de estas rocas! Llevo fundiéndome lentamente en esta tierra durante doscientos años...'[variable letter spacing]"
ayuda4	"[fixed letter spacing]'Lo siento doctor, este es un planeta yermo. Lo único que puede hacer es sobrevivir saliendo de noche hasta que el hambre lo mate a usted. A no ser que haga como los otros tripulantes, los que salieron antes de sus cápsulas y sobrevivieron más allá de la gran grieta...'[variable letter spacing]"

Table of robot_estropeado Comments
prompt	response	enabled
"¿Hola?"	hola2	1
"¿Qué te ha pasado?"	que-pasa2	0
"¿Hay vida en este planeta?"	vida	0
"¿Cuánto tiempo ha pasado desde la evacuación?"	tiempo	0
"¿Hay supervivientes?"	tripulacion	0
"¿Qué le pasó a la capitana Kim?"	kim	0
"¡Ayúdame!"	ayuda3	0
"¡Estúpido robot! ¡Ayúdame te digo!"	ayuda4	0

	
[After examining the huesos for the first time: enable the cadaver quip for the robot.]

After quipping when the current quip is hola2: enable the que-pasa2 quip.
After quipping when the current quip is que-pasa2: enable the vida quip.
After quipping when the current quip is que-pasa2: enable the tiempo quip.
After quipping when the current quip is tiempo: enable the tripulacion quip.
After quipping when the current quip is tripulacion: enable the kim quip.
After quipping when the current quip is tiempo: enable the ayuda3 quip.
After quipping when the current quip is vida: enable the ayuda3 quip.

After quipping when the current quip is ayuda3:
	enable the ayuda4 quip;
	terminate the conversation.
		
After quipping when the current quip is ayuda4:
	enable the ayuda3 quip;
	terminate the conversation.

Section 3.3 - Rocas y plantas 

[La roca en la ladera del volcán]
Some rocas (f) are in Ladera del volcán. They are scenery. The description is "Multitud de rocas han caído por la ladera del volcán y se acumulan en este terreno. El robot Asimo está atrapado bajo varias de ellas."
Understand "roca/piedras/piedra" as rocas.

Does the player mean pushing the rocas in the presence of roca: it is very unlikely. [solucion para desambiguación de rocas y roca]

A roca (f) is nowhere. The roca is supporter. The roca is pushable between rooms. "Puedes ver una pesada [bold type]roca[roman type] de alrededor de un metro de altura." ["pushable between rooms" hace que un objeto sea empujable entre localidades]
The description of the roca is "Una gran roca, humeante y ennegrecida. Aunque parece ser muy pesada, parece que puedo moverla.".
The carrying capacity of the roca is 1.

Instead of taking or touching or pushing or pulling or taking or waking the rocas for the first time:
	now the roca is in Ladera del volcán;
	say "Son demasiado grandes... aunque quizás pueda mover una de ellas. ¡Podría empujar una [bold type]roca[roman type] hacia algún sitio!".
	
Instead of taking or touching or pushing or pulling or taking or waking the rocas:
		say "Son demasiado grandes, pesan mucho... ¡Es imposible moverlas!". 

Instead of touching or pushing or pulling or waking the roca:
		say "¿Hacia dónde quieres empujar la roca? [paragraph break][italic type]Para EMPUJAR la roca, teclea EMPUJAR ROCA HACIA una dirección (NORTE, SUR, ESTE, OESTE).[roman type]". 

Before pushing roca to direction for the first time:
	increase the score by 10;
	say "Empiezas a empujar la roca, ¡pesa muchísimo... pero comienza a ceder! Reúnes todas tus fuerzas y consigues moverla...";
	wait for any key.

Before pushing roca to direction:
	say "Mueves la pesada roca lentamente hasta llegar a tu destino...";
	wait for any key.

[Las plantas bulbosas]
A planta (f) is a kind of thing. A planta can be plantada or cortada. The planta is usually plantada. The description is "[if cortada]La planta bulbosa posee un gran tallo, flexible y fibroso, que se asemeja a una cuerda.[otherwise]Una extraña planta bulbosa de color púrpura, firmemente plantada en el suelo. La longitud del tallo, que se esparce y enrolla por todo el suelo, es de varios metros.". Understand "tallo/planta/tallos/extremo" as the planta. The plural of planta is plantas.  Rule for printing the plural name of planta: say "plantas bulbosas".

Before listing contents: group plantas together.
	
[One planta is in the Terreno volcánico. One planta is in the Páramo baldío.]
A bulbo (m) is in Terreno volcánico. The bulbo is a planta. The printed name of planta is "bulbo alargado". Understand "bulbo alargado" as the bulbo.

A bulbosa (f) is in Páramo baldío. The bulbosa is a planta. The printed name of bulbosa is "planta bulbosa". Understand "planta bulbosa" as the bulbosa.

A raiz (f) is in Terreno baldío. The raiz is a planta. The printed name of raiz is "raíz bulbosa". Understand "raiz bulbosa" as the raiz.

Instead of attacking a planta, say "Quizá podría hacer algo más útil que golpear plantas.".
Instead of turning or pushing or pulling or waking a planta, say "Quizá podría intentar cortar estas plantas con algún objeto afilado."
Instead of taking a plantada, say "Necesitarías algo afilado para poder cortar el tallo bulboso y llevarme la planta.";

Instead of cutting a planta:
	if the player carries the cuchillo and the noun is plantada:
		say "Trabajosamente empiezas a cortar el tallo con la ayuda del cuchillo hasta que finalmente logras separar el tallo del bulbo, que desaparece bajo la tierra.";
		now the noun is cortada;
		now the noun is carried by the player;
	else if the player carries the cuchillo and the noun is carried by the player:
		say "Cortas las plantas que están por el suelo.";
		now every planta in the location is cortada;
	else if the player carries the cuchillo and the noun is cortada:
		say "El tallo ya está cortado y separado del bulbo.";
	otherwise: 
		say "Necesitarías algo afilado para poder cortar el tallo bulboso.".

A cuerda (f) is nowhere. The cuerda can be desatada or atada. The cuerda is desatada. The description of the cuerda is "Un firme tallo bulboso unido a otro tallo que unidos forman una larga cuerda.". The printed name of the cuerda is "larga cuerda hecha de plantas". Understand "tallo/planta/raiz/bulbo" as the cuerda.

Understand "ata [something] con [something]" as tying it to.

Instead of tying a planta to something which is not a roca:
	if the player carries one planta and the second noun is not a planta:
		say "Debería atar [the noun] a otra cosa...";
	else if the player carries two plantas and the second noun is cortada:
		now every planta carried by the player is nowhere;
		now every planta in the location is nowhere;
		now the cuerda is carried by the player;
		say "Con cuidado, atas el extremo de un tallo con el otro extremo. ¡Ahora tienes una cuerda más larga!";
		wait for any key;
	otherwise:
		say "[italic type]'Mmmpf...'[roman type][line break]Un olor rancio surge de [the noun]...".
		
Before tying a planta to the roca:
	now the noun is on the roca;
	say "Atas el tallo a la roca...";
	rule succeeds.
	
Before tying a cuerda to the roca:
	now the noun is on the roca;
	now the cuerda is atada;
	say "Atas la cuerda a la roca...";
	increase the score by 10;
	rule succeeds.

Instead of taking or waking or pulling or pushing the cuerda when the cuerda is atada, say "La cuerda está bien sujeta, no hay necesidad de quitarla de ahí...";

Instead of tying the cuerda to something when the cuerda is atada, say "Ya está lo suficientemente firme.".

Instead of tying a planta to a something, say "No veo qué utilidad puede tener hacer eso...".
Instead of tying the cuerda to a something, say "No veo qué utilidad puede tener hacer eso...".

[Trepar por el desfiladero]
Instead of climbing when the player is in Gran grieta:
	if the roca is in the location and the cuerda is atada:
		say "Te agarras a la cuerda y comienzas a descender lentamente por ella...";
		wait for any key;
		say "El esfuerzo te lleva un buen rato y parece que estás a punto de desfallecer...";
		wait for any key;
		say "Pero tras unos tensos minutos descendiendo por la cuerda finalmente llegas al fondo del desfiladero...";
		wait for any key;
		now the player is in Desfiladero;
		rule succeeds;
	if the roca is in the location and a planta is on the roca:
		say "El tallo de la planta es demasiado corto todavía, no puedo llegar al fondo...";
	otherwise:
		say "No veo cómo puedo bajar por el desfiladero, necesitaría algún tipo de cuerda para bajar...".
		
Instead of going down when the player is in Gran grieta, say "Si quieres bajar, tendrás que trepar.".

Instead of pushing the roca to direction when the player is in Gran grieta, say "Quizás sea más útil que la roca se quede aquí... ¡podría tratar de hacerme con una cuerda y atarla a la roca!".
Instead of pushing or attacking the roca when the player is in Gran grieta, say "Quizás sea más útil que la roca se quede aquí... ¡podría tratar de hacerme con una cuerda y atarla a la roca!".

Instead of throwing something at Gran grieta, try throwing the noun at desfiladero2.
Instead of throwing something at desfiladero2:
	if the noun is not roca or the noun is not cuerda or the noun is not planta or the noun is not cuchillo:
		now the noun is in Desfiladero;
		say "Lanzas [the noun] al desfiladero.";
	otherwise:
		say "No debería tirar [the noun] al desfiladero... quizás se me ocurre algo mejor.".	
	
A desfiladero2 is scenery in Gran grieta. The description is "Desde aquí divisas el fondo del desfiladero, a unos sesenta metros de altura, más o menos. Puedes ver varias cápsulas de hibernación desperdigas por allí.". Understand "grieta/borde/desfiladero/fondo/metros/paredes" as the desfiladero2.

Desfiladero is a room. The description of Desfiladero is "Te encuentras en el fondo del desfiladero, a tu alrededor se alzan imponentes las paredes rocosas de la Gran grieta. En una de las paredes te parece ver la boca profunda de una lóbrega cueva."
A extremo (m) is in Desfiladero. "Puedes ver el extremo final de la cuerda que has usado para bajar aquí." It is fixed in place. Understand "tallo/planta/raiz/bulbo/cuerda" as the extremo.
Instead of taking the extremo, say "Si quieres subir, tendrás que trepar por la cuerda.".
Instead of going up when the player is in Desfiladero, say "Si quieres subir, tendrás que trepar la cuerda.".
Instead of climbing when the player is in Desfiladero:
	say "Te agarras a la cuerda y comienzas a subir lentamente por ella...";
	wait for any key;
	say "El esfuerzo te lleva un buen rato y parece que estás a punto de desfallecer...";
	wait for any key;
	say "Pero tu fuerza de voluntad te empuja hacia arriba, tus ganas de sobrevivir te impulsan y finalmente llegas al borde de la grieta...";
	wait for any key;
	now the player is in Gran grieta;
	rule succeeds.

A boca (f) is scenery in Desfiladero. The description of the boca is "Una oscura y profunda cueva se divisa en una de las paredes del desfiladero.". Understand "cueva/grieta/paredes" as the boca.
Instead of entering the boca when the player is in Desfiladero, try going inside.
Before going inside when the player is in Desfiladero for the first time:
	increase the score by 10.
	
The cueva is a room. "Te encuentras en el interior de una lóbrega cueva. La cavidad es más grande de lo que parecía en un principio... ¡aún puedes adentrarte más! Sientes una agradable humedad en el ambiente a medida que te introduces en la cueva.". The printed name of the cueva is "Entrada a la cueva".
Outside from the cueva is the Desfiladero.

A humedad (f) is scenery in cueva. The description of the humedad is "Una húmeda y oscura cueva que se ensancha cada vez más y más...". Understand "cueva/grieta/paredes" as the humedad. 
Instead of entering the humedad, try going inside.

The cueva2 is a room. "La cavidad se ensancha hasta dar paso a una cueva colosal repleta de galerías y recovecos que se pierden en la oscuridad. Aquí apenas llega ya la luz del sol, pero parece que podrías adentrarte aún más...". The printed name of the cueva2 is "La gran cueva colosal".
Outside from the cueva2 is the cueva.

A galerias (f) is scenery in cueva2. The description of the galerias is "Multitud de galerías y recovecos se adivinan entre la oscuridad de la cueva. El tamaño de esta cueva es verdaderamente colosal, y además aquí parece que no llega el calor del exterior.". Understand "cueva/grieta/paredes/recovecos" as the galerias. 

Section 3.4 - La chica en la cueva

A chica (f) is in cueva2. "[if prisionera]Tu mirada se detiene cuando ves, en un recoveco de la cueva, a una [bold type]chica[roman type] de la tripulación de la Copérnico 86, magullada y en posición fetal. Parece estar atada y amordazada con las plantas bulbosas que crecen en este planeta.[else if liberada]La chica está libre de ataduras e intenta incorporarse.[end if]".
The chica is a woman. The chica can be prisionera or liberada. The chica is prisionera.

The description of the chica is "[if prisionera]Es una chica de la tripulación de la Copérnico 86, a juzgar por el uniforme. Está atada y amordazada con las plantas bulbosas que crecen en este planeta.[else if liberada]La chica está libre de ataduras e intenta incorporarse.".
Understand "muchacha/ojos/uniforme/tripulante" as the chica. 

Instead of going inside when the player is in cueva2, try going outside.

Instead of going outside when the player is in cueva2:
	if the maton is in cueva2 and the maton is vivo:
		say "Tratas de esquivar al hombre pero es inútil, recibes el golpe de una piedra en la cabeza y caes al suelo. Antes de que puedas levantarte está encima tuyo con la piedra en alto entre sus manos y...[paragraph break]";
		wait for any key;
		end the story saying "¡Has muerto!";
	else if the matona is in cueva2 and the matona is viva:
		say "Tratas de esquivar a la mujer pero es inútil, recibes el golpe de una piedra en la cabeza y caes al suelo. Antes de que puedas levantarte está encima tuyo con la piedra en alto entre sus manos y...[paragraph break]";
		wait for any key;
		end the story saying "¡Has muerto!";
	else if the chica is in cueva2 and the chica is liberada and the maton is muerto and the matona is muerta:
		say "Os adentráis sin un rumbo fijo en las profundidades de la cueva colosal, huyendo de los fieros rayos del sol del exterior...[paragraph break]";
		wait for any key;
		say "En las noches siguientes intentáis despertar a la tripulación que aún sigue en sus cápsulas, intentando daros prisa en lograr salvar a la máxima cantidad de personas posibles...[paragraph break]";
		wait for any key;
		say "Poco a poco comenzáis a ser una pequeña colonia de supervivientes refugiada en el cavernoso subsuelo del planeta Hades, que trata a duras penas de evitar el canibalismo y sobrevivir a base de las bulbosas plantas que crecen en la superfície del planeta...[paragraph break]";
		wait for any key;
		clear the screen;
		center "[paragraph break][paragraph break][fixed letter spacing]EPÍLOGO[variable letter spacing][paragraph break][paragraph break]";
		say "Pasaron los años y la comunidad fue creciendo. Se lograron encontrar otros pedazos de la Copérnico 86 y con ellos partes del gran almacén, con sus semillas y fertilizantes, sus aparejos para la terraformación...[paragraph break]";
		wait for any key;
		say "Os tuvísteis que acostumbrar a la falta de luz, pero la humanidad pudo sobrevivir y adaptarse a la nueva realidad. Las semillas dieron sus frutos y se consiguió crear una incipiente agricultura subterránea. Se logró reparar el vetusto robot Asimo y gracias a sus conocimientos pudo preservarse el legado cultural de la Tierra y divulgarlo para las siguientes generaciones...[paragraph break]";
		wait for any key;
		say "Con grandes costes, con sacrificios pero con gran perseverancia, la humanidad prosperó.[paragraph break]Tendrían que pasar aún muchos años y aún muchos siglos para comenzar a dominar la temperatura del planeta Hades y poder sobrevivir bajo la luz de su fiero sol.[paragraph break]";
		wait for any key;
		say "Los descendientes de aquellos primeros colonos construyeron una gran estatua en honor del gran padre que los salvó a todos de la muerte: el Amado Líder Stanislav Odengar. [paragraph break][italic type]'El Que Nos Guió En Las Estrellas. El Que Sobrevivió Al Gran Volcán. El Que Bajó De La Gran Grieta. El Que Despertó a Las Primeras Familias.'[roman type][paragraph break]'Salve Stanislav, tu pueblo te honra y te glorifica con sus ofrendas. Los descendientes de las Primeras Familias te muestran sus respetos y se arrodillan ante tu efigie, brillante coloso que señala al cielo, donde tililan las lejanas estrellas, hogar primigenio de la humanidad.'[roman type][line break]";
		wait for any key;
		end the story finally;
	else if the maton is nowhere:
		now the maton is in cueva2;
		now the matona is in cueva2;
		say "De repente, de algún punto de la caverna aparece la figura de un [bold type]hombre[roman type] que se cruza enloquecido impidiéndote salir...[paragraph break]";
		wait for any key;
		say "A cierta distancia llega tras él una [bold type]mujer[roman type] harapienta, gritando y amenazándote con una piedra en la mano.[paragraph break]";
		wait for any key;
		say "¡Parecen peligrosos! ¡Tienes que hacer algo!";
	else if the chica is in cueva2 and the chica is atada:
		say "[italic type]'¡Mmmph!'[roman type][line break]La muchacha trata de gritar, pero la mordaza se lo impide...[line break]".
		
Instead of touching or pushing or pulling or taking or waking the chica when the chica is prisionera, say "[italic type]¡Debería liberarla de sus ataduras![roman type][line break]".

Instead of attacking the chica, say "[italic type]¿En qué estás pensando?[paragraph break][roman type]La chica te observa sin saber a qué atenerse...".

Instead of talking to the chica when the chica is prisionera, say "[italic type]¡La chica no puede hablar, está amordazada![roman type][line break]".

Some ataduras (f) are in cueva2. They are scenery. The description is "Alguien ha utilizado unas plantas bulbosas para atar y amordazar a la chica.". 
Understand "mordaza/plantas/nudo" as the ataduras.

Instead of cutting or pulling the chica, try cutting the ataduras.

Instead of cutting or pulling the ataduras:
	if the player carries the cuchillo and the chica is prisionera:
		say "Con rapidez, cortas las ataduras de la chica con el cuchillo hasta que finalmente queda liberada.";
		now the chica is liberada;
		increase the score by 10;
	else if the player carries the cuchillo and the chica is liberada:
		say "La chica ya está liberada.";
	otherwise: 
		say "Necesitarías algo afilado para poder cortar sus ataduras.".

Section 3.5 - El hombre y la mujer en la cueva

A maton (m) is nowhere. The maton is a man. The maton can be vivo or muerto. The maton is vivo. The printed name of the maton is "hombre".
The description of the maton is "[if vivo]Es un corpulento tripulante de la Copérnico86, ¡no sabes el tipo de locura que padece pero si no haces algo te va a matar![otherwise]El matón yace muerto en el suelo de la caverna.".
Understand "hombre/loco/uniforme/harapos" as the maton.

A matona (f) is nowhere. The matona is a woman. The matona can be viva or muerta. The matona is viva. The printed name of the matona is "mujer".
The description of the matona is "[if viva]Es una corpulenta tripulante de la Copérnico86, ¡no sabes el tipo de locura que padece pero si no haces algo te va a matar![otherwise]La mujer enloquecida yace muerta en el suelo de la caverna.".
Understand "mujer/loca/locura" as the matona.

Amenaza is a scene. Amenaza begins when the player is in cueva2 for the first time. Amenaza ends when the time since Amenaza began is 5 minutes.

When amenaza ends:
	if maton is nowhere:
		now the maton is in cueva2;
		now the matona is in cueva2;
		say "De repente, de algún punto de la caverna aparece la figura de un [bold type]hombre[roman type] que se cruza enloquecido impidiéndote salir...[paragraph break]";
		wait for any key;
		say "A cierta distancia llega tras él una [bold type]mujer[roman type] harapienta, gritando y amenazándote con una piedra en la mano.[paragraph break]";
		wait for any key;
	if maton is vivo:
		say "El hombre tropieza torpemente y cae al suelo, pero rápidamente se levanta para atacar...[paragraph break]";
	if matona is viva:
		say "La mujer lanza un alarido y trata de golpearte...[paragraph break]".

Pelea is a scene. Pelea begins when Amenaza ends. Pelea ends when the time since Pelea began is 4 minutes.

Every turn during Pelea:
	if maton is vivo:
		say "[one of][italic type]'¡Pumph!'[line break]El hombre te propina un puñetazo...[roman type][or][italic type]'¡Aaargh!'[line break]El hombre te empuja violentamente al suelo...[roman type][or][italic type]'¡Tumph!'[line break]El hombre te lanza una piedra...[roman type][at random][paragraph break]";
	if matona is viva:
		say "[one of][italic type]'¡Uuuh-uh!'[line break]La mujer duda unos segundos...[roman type][or][italic type]'¡Aaargh!'[line break]La mujer trata de agarrarte y morderte...[roman type][or][italic type]'¡Tumph!'[line break]La mujer te lanza una piedra...[roman type][at random][paragraph break]".

When pelea ends:
	if maton is vivo:
		say "Tratas de esquivar al hombre pero es inútil, recibes el golpe de una piedra en la cabeza y caes al suelo. Antes de que puedas levantarte está encima tuyo con la piedra en alto entre sus manos y...[paragraph break]";
		wait for any key;
		end the story saying "¡Has muerto!";
	else if the matona is viva:
		say "Tratas de esquivar a la mujer pero es inútil, recibes el golpe de una piedra en la cabeza y caes al suelo. Antes de que puedas levantarte está encima tuyo con la piedra en alto entre sus manos y...[paragraph break]";
		wait for any key;
		end the story saying "¡Has muerto!".
		
Instead of talking to a maton:
		say "Tratas de hablarle pero es inútil, recibes el golpe de una piedra en la cabeza y caes al suelo. Antes de que puedas levantarte está encima tuyo con la piedra en alto entre sus manos y...";
		wait for any key;
		end the story saying "¡Has muerto!".
		
Instead of talking to a matona:
		say "Tratas de hablarle pero es inútil, recibes el golpe de una piedra en la cabeza y caes al suelo. Antes de que puedas levantarte está encima tuyo con la piedra en alto entre sus manos y...";
		wait for any key;
		end the story saying "¡Has muerto!".
		
Instead of attacking the maton when the chica is liberada:
	if the player carries the pistola and the pistola is cargado:
		say "Alzas tu pistola y disparas...[paragraph break]";
		wait for any key;
		say "[italic type]'ZZZAAP!!!'[roman type] El hombre cae fulminado por el bláster...[paragraph break]";
		wait for any key;
		now the maton is muerto;
		increase the score by 10;
		say "Entonces te giras y  tienes detrás a la mujer armada con una piedra... ¡pero la chica recién liberada de sus ataduras la empuja violentamente y consigue repeler el ataque![paragraph break]";
		wait for any key;
		say "La mujer vuelve a levantarse de un salto y gruñe como un animal mientras se abalanza hacia vosotros.[paragraph break]";
	else if the player carries the pistola and the pistola is descargado:
		say "Alzas tu pistola para atacar pero te das cuenta demasiado tarde que está descargada...";
		wait for any key;
		end the story saying "¡Has muerto!";
	otherwise: 
		say "Te abalanzas sobre su cuerpo y comienzas a pelear, pero te clava una afilada punta de roca en el pecho y pierdes el conocimiento...";
		wait for any key;
		end the story saying "¡Has muerto!".
		
Instead of attacking the maton when the chica is prisionera:
	if the player carries the pistola and the pistola is cargado:
		say "Alzas tu pistola y disparas...[paragraph break]";
		wait for any key;
		say "[italic type]'¡ZZZAAP!'[roman type] El hombre cae fulminado por el bláster...[paragraph break]";
		wait for any key;
		now the maton is muerto;
		increase the score by 10;
		say "Entonces te giras y tienes detrás a la mujer armada con una piedra...[paragraph break]";
		wait for any key;
		say "La mujer gruñe y aunque alzas tu pistola para volver a disparar ella es más rápida... te clava una afilada punta de roca en el pecho y pierdes el conocimiento...";
		wait for any key;
		end the story saying "¡Has muerto!";
	else if the player carries the pistola and the pistola is descargado:
		say "Alzas tu pistola para atacar pero te das cuenta demasiado tarde que está descargada...";
		wait for any key;
		end the story saying "¡Has muerto!";
	otherwise: 
		say "Te abalanzas sobre su cuerpo y comienzas a pelear, pero te clava una afilada punta de roca en el pecho y pierdes el conocimiento...";
		wait for any key;
		end the story saying "¡Has muerto!".

Instead of attacking the matona when the maton is vivo:
	if the player carries the pistola and the pistola is cargado:
		say "Alzas tu pistola y disparas...[paragraph break]";
		wait for any key;
		say "[italic type]'¡ZZZAAP!'[roman type] La mujer cae fulminada por el bláster...[paragraph break]";
		wait for any key;
		now the matona is muerta;
		increase the score by 10;
		say "Pero el hombre te golpea violentamente y caes al suelo...[paragraph break]";
		wait for any key;
		say "Tratas de levantarte pero es inútil, es mucho más fuerte que tú, te agarra del cuello y lo último que ves es su puño teñido de sangre...";
		wait for any key;
		end the story saying "¡Has muerto!";
	else if the player carries the pistola and the pistola is descargado:
		say "Alzas tu pistola para atacar pero te das cuenta demasiado tarde que está descargada...";
		wait for any key;
		end the story saying "¡Has muerto!";
	otherwise: 
		say "Te abalanzas sobre su cuerpo y comienzas a pelear, pero te clava una afilada punta de roca en el pecho y pierdes el conocimiento...";
		wait for any key;
		end the story saying "¡Has muerto!".
		
Instead of attacking the matona when the maton is muerto:
	if the player carries the pistola and the pistola is cargado:
		say "Alzas de nuevo tu pistola y disparas...[paragraph break]";
		wait for any key;
		say "[italic type]'¡ZZZAAP!'[roman type] La mujer cae fulminada por el bláster...[paragraph break]";
		wait for any key;
		now the matona is muerta;
		increase the score by 10;
		enable the atacantes quip for the chica;
		say "Se hace el silencio en la caverna y la chica se abraza a tu cuerpo...[paragraph break]";
		wait for any key;
		say "[italic type]'Gracias... gracias... ha sido terrible. Se habían vuelto locos, se estaban comiendo a la gente que lograba salir de hibernación...'[roman type][paragraph break]";
		wait for any key;
	else if the player carries the pistola and the pistola is descargado:
		say "Alzas tu pistola para atacar pero te das cuenta demasiado tarde que está descargada...";
		wait for any key;
		end the story saying "¡Has muerto!";
	otherwise: 
		say "Te abalanzas sobre su cuerpo y comienzas a pelear, pero te clava una afilada punta de roca en el pecho y pierdes el conocimiento...";
		wait for any key;
		end the story saying "¡Has muerto!".

Instead of attacking or touching or pushing the maton when the maton is muerto, say "Está muerto.".
Instead of attacking or touching or pushing the matona when the matona is muerta, say "Está muerta.".
	
[Creando árbol de diálogo para la chica]
The litany of the chica is the Table of chica Comments. [con esto indicamos el árbol de conversaciones que tiene la chica]

Table of Quip Texts (continued)
quip	quiptext
hola3	"'¡Gracias... gracias! ¡Sí! ¡Pero tenemos que irnos de aquí!'"
que-pasa3	"'Ellos me cogieron...'"
ayuda5	"'¡Sí, pero aún tenemos que salir de aquí!'"
ayuda6	"'¡Estaremos mejor si salimos de aquí!'"
atacantes	"'No lo sé, algunos de los tripulantes salieron antes de la hibernación... algunos de ellos se refugiaron aquí, porque ahí fuera el calor te puede matar. El hambre ha hecho que algunos se dediquen a cazar a los que sobreviven. Aunque yo descubrí que sí que hay alimento, tanto en los bulbos que crecen en la superfície como en algunas especies dentro de la cueva.'"
layna	"'Me llamo Layna. Ha sido una suerte que llegaras, pero ahora tenemos que seguir, ¡vamos!'"

Table of chica Comments
prompt	response	enabled
"¿Puedes hablar?"	hola3	1
"¿Qué te ha pasado?"	que-pasa3	0
"¿Estás bien?"	ayuda5	0
"Tranquila, estamos vivos, aún hay esperanza..."	ayuda6	0
"¿Quiénes eran esos?"	atacantes	0
"¿Cómo te llamas?"	layna	0

	
[After examining the huesos for the first time: enable the atacantes quip for the chica.]

After quipping when the current quip is hola3: enable the que-pasa3 quip.
After quipping when the current quip is que-pasa3: enable the ayuda5 quip.
After quipping when the current quip is atacantes: enable the layna quip.

After quipping when the current quip is ayuda5:
	enable the ayuda6 quip;
	terminate the conversation.
		
After quipping when the current quip is ayuda6:
	enable the ayuda5 quip;
	terminate the conversation.


Part 4 - Planeta Limbo

The PlanetaLimbo is a region. Hondonada selvatica, Selva tupida, Selva en tinieblas, Cienaga, Pantano, Bosque, Precipicio are in the PlanetaLimbo. The cielo is a backdrop in the PlanetaLimbo. "El cielo que observas cuando la densa vegetación te lo permite es de color anaranjado teñido de púrpura. Un ligero viento transporta la fragancia de los verdes frutos que crecen en los árboles.". Understand "luz", "dia", "rosa", "purpura", "fragancia", "sol", "viento" as the cielo. The printed name of cielo is "planeta Limbo". 

Instead of listening when the player is in PlanetaLimbo, say "Escuchas el suave rumor del viento meciendo los árboles.".

Instead of smelling when the player is in PlanetaLimbo, say "Parece que estás a gran altura y te cuesta un poco respirar, pero los olores son embriagadores, tanto de los árboles como de sus frutos...".

Instead of sleeping when the player is in PlanetaLimbo, say "¡No es momento de dormir, Stanislav! Tal vez necesites un poco de [bold type]ayuda[roman type].".

Instead of tasting a fruto, say "Le das un pequeño bocado... ¡es ligeramente ácido, muy refrescante!".

Instead of jumping when the player is in PlanetaLimbo:
	if the player is in Precipicio:
		say "No hay necesidad de lanzarse a la muerte... ¿has probado a tirar algo al precipicio para adivinar dónde está el fondo?";
	else if the player is in Selva en tinieblas:
		say "[if the negra is handled]No sabía que te gustara tanto saltar.[otherwise]Intentas alcanzar la piedra saltando, pero te hace falta un poco más para llegar a ella.";
	else if the player is in capsula_hondonada:
		say "Deberías salir primero de la cápsula.";
	otherwise:
		say "El planeta es verdaderamente hermoso, ¿quizás estás saltando por la felicidad que te produce... o por la pura desesperación?".

Instead of thinking when the player is in PlanetaLimbo, say "¡Eso es, piensa! ¡Piensa Stanislav! Tienes que encontrar la manera de poner a salvo a la tripulación que está en las cápsulas bajo el manto de nubes y más allá. [if Pantano is visited]La única opción es conseguir entrar en los restos de la Copérnico 86.[end if] Tal vez necesites un poco de [bold type]ayuda[roman type].".

Hondonada selvatica is a room. "[if unvisited]¡Estás vivo! Conseguiste salir de la nave y evacuar las cápsulas de hibernación. A través del cristal de tu cápsula puedes ver el denso follaje de un tupido bosque, bajo un cielo de color rosa pálido. Los árboles se te antojan como unos retorcidos aloes gigantes, muchos de ellos coronados con extraños frutos verdes. [otherwise]Te encuentras en una hondonada rodeada por inmensos árboles que parecen aloes gigantes, coronados con extraños frutos verdes. La maleza es abundante y espesa, húmeda y tupida. Un serpenteante [bold type]sendero[roman type] discurre de norte a sur.". The printed name of Hondonada selvatica is "Hondonada selvática".

A capsula_hondonada (f) is here. "Puedes ver tu cápsula de hibernación." 
The description of capsula_hondonada is "Es tu cápsula de evacuación. [if open]El cristal está abierto.[otherwise]Ahora está cerrada."   
The capsula_hondonada is a container, openable, transparent, closed and fixed in place.
The printed name of capsula_hondonada is "cápsula".
Understand "hibernacion", "capsula", "capsula de hibernacion" and "r1198" as the capsula_hondonada.

The cristal4 (m) is part of the capsula_hondonada. The printed name of the cristal4 is "cristal". Understand "cristal" as the cristal4.
The description of the cristal4 is "El cristal está [if capsula_hondonada is open]abierto.[otherwise]cerrado.".

Instead of opening or pushing the cristal4, try opening the capsula_hondonada. 
Instead of closing or pulling the cristal4, try closing the capsula_hondonada. 

Instead of getting off the capsula_hondonada, try exiting.

Instead of desbloquearing or pushing the capsula_hondonada, try opening the capsula_hondonada.
	
Before entering the capsula_hondonada:
	say "Abres el cristal de tu cápsula y te introduces en el interior.";
	move the player to the capsula_hondonada;
	now the capsula_hondonada is open;
	rule succeeds. [esto es un ejemplo de mala programación pq el objeto tendría que ser "enterable" y listo, pero ya me da pereza cambiar]

The arboles (m) is a backdrop in PlanetaLimbo. The description is "Los árboles se te antojan como unos retorcidos aloes gigantes, muchos de ellos coronados con extraños frutos. La belleza agreste de esta vegetación te cautiva poderosamente.". Understand "aloes/gigantes/belleza/frutos" as arboles.

A sendero (m) is here. The sendero is scenery. The description of the sendero is "Un serpenteante sendero cruza la hondonada de norte a sur, apenas visible entre tanta [bold type]maleza[roman type].".
A maleza (f) is here. The maleza is scenery. The description of the maleza is "Hierbas altas y de colores que oscilan entre el verde pálido al púrpura intenso. [if bicho is in location]Te parece ver corretear algo entre la maleza, como si fuera un pequeño [bold type]animal[roman type] o alguna especie de bicho, no lo tienes claro.". Understand "hierbas/hierba" as maleza.

A bicho (m) is here. The bicho is scenery. The description of the bicho is "Un pequeño bicho o animal, similar a una ardilla pero con patas como de tarántula, se esconde entre la maleza.". Understand "animal/algo/alimana" as the bicho.

North of Hondonada selvatica is Bosque. The description of Bosque is "[if unvisited]Siguiendo el tortuoso sendero subes hasta llegar a una parte del bosque en la que puedes ver numerosas cápsulas de hibernación desperdigadas. El sendero se desvía aquí hacia un abrupto precipicio, al este, donde te parece ver la figura de una [bold type]mujer[roman type]. [end if]Los árboles de esta parte del bosque son más pequeños y algunos parecen estar muy dañados debido al impacto de las cápsulas. El sinuoso sendero discurre del sur al este.".

A figura (f) is in Bosque. The figura is scenery. The description is "[if Precipicio is unvisited]Una solitaria figura de una mujer de pie cerca del desfiladero, está de espaldas y no logras ver más que su silueta recortada en el espectacular firmamento nuboso. Deberías dirigirte al este para acercarte a ella.[otherwise]Hacia el este puedes ver que el bosque da paso a un formidable precipicio, y más allá puedes vislumbrar el discurrir de las nubes mecidas por el suave viento.". Understand "mujer/silueta/firmamento/precipicio/nubes" as the figura.

Some capsulas_hondonada (f) are in Bosque. They are scenery. The printed name of capsulas_hondonada is "cápsulas de hibernación". The description is "Varias cápsulas de hibernación han aterrizado en esta parte del bosque, dañando algunos de los árboles. Es tan solo una pequeña parte de la tripulación, pero todas las cápsulas parecen estar en buen estado, aún en proceso de hibernación.". Understand "capsulas" and "capsula" as the capsulas_hondonada.

Instead of opening or pulling or pushing the capsulas_hondonada, say "Ya habrá tiempo para eso, ahora no es el momento.".

A sendero2 (m) is in Bosque. The sendero2 is scenery. The description of the sendero2 is "El sendero discurre serpenteante del sur al este.". Understand "sendero", "camino" as the sendero2.

A arbol (m) is in Bosque. The arbol is a container, transparent and fixed in place. "Al lado del sendero puedes ver un [bold type]árbol[roman type] caído.". Understand "aloe" as arbol.
The description of the arbol is "Al lado del sendero puedes ver uno de los árboles parcialmente caído. Parece que el impacto de alguna cápsula cercana lo ha derribado."

A fruto (m) is a kind of thing. The fruto is edible and lit. The plural of fruto is frutos. 
Four frutos are in the arbol. The description of fruto is "Un fruto de color verde fluorescente. Emite una débil luz.".

One fruto is in Bosque. One fruto is in Cienaga. One fruto is in Selva tupida.

A manzana (f) is a fruto. The manzana is nowhere. The description of the manzana is "Una brillante fruta de color púrpura, similar a una manzana." Understand "fruta", "purpura", "brillante manzana purpura" as the manzana. The printed name of manzana is "brillante manzana púrpura".

Instead of throwing something at nubes, try throwing the noun at desfiladero3.
Instead of throwing something at desfiladero3:
	now the noun is in location;
	now the manzana is in location;
	say "Lanzas [the noun] al precipicio...";
	wait for any key;
	say "¡Y el precipicio te devuelve [the noun]![paragraph break]";
	wait for any key;
	say "De repente emerge de entre las nubes una formidable serpiente alada, que se alza imponente sobre el precipicio, batiendo sus alas mientras serpentea en el aire. La impresionante criatura porta algo brillante de color púrpura entre sus fauces.[paragraph break]";
	wait for any key;
	say "Te quedas inmóvil contemplando la irreal bestia alada. La serpiente abre sus fauces y deja caer a tus pies el objeto púrpura que portaba.[paragraph break]";
	wait for any key;
	say "[italic type]'¡Wreeeeek... wraaaah!'[roman type][paragraph break]La serpiente alada vuelve a sumergirse bajo el manto de nubes.[line break]";
	wait for any key.

South of Hondonada selvatica is Selva tupida. The description of Selva tupida is "[if unvisited]Apenas puedes pasar por entre la maleza, subiendo a través del sendero por una selva cada vez más tupida. [end if]Multitud de árboles se retuercen buscando la escasa luz del sol, tapada casi por completo por los aloes gigantes. Hacia el sur, la vegetación se hace aún más densa y oscura. Al este se abre un claro a un terreno más húmedo. Al norte divisas la hondonada.".

A sendero3 (m) is in Selva tupida. The sendero3 is scenery. The description of the sendero3 is "El sendero discurre serpenteante de norte a sur.". Understand "sendero", "camino" as the sendero3.

East of Selva tupida is a Cienaga. The printed name of Cienaga is "Ciénaga". The description of Cienaga is "[if unvisited]Alejándote de los altos árboles de la tupida selva, te adentras en un terreno cada vez más fangoso. [end if]Has llegado a lo que parece ser una ciénaga, que se extiende hacia el este formando un lóbrego pantano. Al otro lado del pantano, hacia el este, puedes divisar una parte de la [bold type]nave Copérnico[roman type] parcialmente sumergida en sus fangosas aguas.".

A coperniconave (f) is in Cienaga. The coperniconave is scenery. The description of the coperniconave is "Desde aquí solo puedes ver una parte de la nave, parece que el resto está bajo las aguas del pantano. Podrías ir hacia el este, cruzando el pantano, para llegar a su altura y ver en qué estado se encuentra la nave.". Understand "nave", "nave copernico", "copernico 86" as the coperniconave.

A cienagadeco (f) is in Cienaga. The cienagadeco is scenery. The description of cienagadeco is "Estas aguas pantanosas se hacen más profundas a medida que se adentran en la ciénaga. No parece que puedas llegar a nado hasta la Copérnico 86.".
Understand "agua", "cienaga", "pantano", "cenagal", "aguas", "fango" as the cienagadeco. The printed name of the cienagadeco is "ciénaga".

Instead of drinking or tasting the cienagadeco, say "El agua del pantano es ligeramente dulce, pero tiene un sabor nauseabundo al final.".

Instead of nadaring the cienagadeco, say "Te zambulles en las aguas del pantano pero pronto debes recular... hay demasiado fango... estas aguas son demasiado cenagosas y es muy difícil nadar en ellas. ¡Tienes que encontrar otra alternativa para llegar a la Copérnico!".

South of Selva tupida is Selva en tinieblas. The Selva en tinieblas is a dark room. "[if unvisited]Te abres paso entre la maleza y bajas por un recoveco hasta llegar casi a oscuras hasta una barrera vegetal, imposible de franquear. [end if]Los árboles y la densa vegetación te impiden avanzar y el único camino posible parece ser volver al norte.".

A sendero4 (m) is in Selva en tinieblas. The sendero4 is scenery. The description of the sendero4 is "El sendero se termina aquí, puedes volver yendo al norte.". Understand "sendero", "camino" as the sendero4.

Instead of climbing when the player is in Selva en tinieblas, say "[if the negra is handled]No hay necesidad de trepar por aquí.[paragraph break][otherwise]Tratas de trepar por los árboles, pero no logras alcanzar la piedra.[paragraph break]";

	
[El Precipicio del fin del mundo]
East of Bosque is Precipicio. The description of Precipicio is "[if unvisited]Te alejas del bosque hasta llegar a un terreno pedregoso que conduce hacia un abrupto precipicio, donde una mujer parece estar observando el increíble [bold type]paisaje[roman type] que ofrece este mundo. [end if]Enfrente tuyo se abre un desfiladero, cuyo fondo está oculto por un manto de nubes que lentamente se mueve debido al viento. Al oeste de tu posición se encuentra el bosque.".

A desfiladero3 (m) is in Precipicio. The desfiladero3 is scenery. The description is "El terreno se recorta abruptamente para dar paso a un precipicio, del que no se divisa el fondo, oculto tras un manto de nubes.". The printed name of desfiladero3 is "desfiladero". Understand "precipicio", "terreno", "rocas", "fondo" and "desfiladero" as the desfiladero3.

Some nubes (f) are in Precipicio. They are scenery. The description is "Las nubes son de un llamativo color rosa pálido, el cielo parece estar dibujado en tonos anaranjados y púrpuras. Más allá, a lo lejos, te sorprende ver lo que parecen ser islas flotantes, colosales rocas que no parecen estar sujetas a la gravedad, donde te parece ver una vegetación comparable a donde te encuentras ahora.". Understand "paisaje", "rocas", "islas", "isla", "vegetacion", "manto" as the nubes.

Some capsulas_precipicio (f) are in Precipicio. They are scenery. The printed name of capsulas_precipicio is "cápsulas de hibernación". The description is "Puedes ver algunas cápsulas de hibernación flotando ingrávidamente por el mar de nubes.". Understand "capsulas" and "capsula" as the capsulas_precipicio.

Section 4.1 - Bichos y bestias

The ardilla (m) is nowhere. The ardilla is a patroller. The ardilla is aimless. The drive of the ardilla is 50. The ardilla can be empachada or hambrienta. The ardilla is hambrienta. "[if the player carries a fruto and the ardilla is hambrienta]El [bold type]animal[roman type] observa con interés el [bold type]fruto[roman type] que cargas, pero cuando te acercas se esconde con miedo.[else if the ardilla is empachada]El [bold type]animal[roman type] descansa apaciblemente.[otherwise]El [bold type]animal[roman type] trata de escabullirse pero puedes verlo corretear por la vegetación.".
The description of the ardilla is "Un pequeño bicho o animal, similar a una ardilla pero con patas como de tarántula, se esconde entre la maleza.". Understand "animal/bicho/tarantula" as the ardilla. The printed name of the ardilla is "pequeño bicho".

The comidas is a number that varies. The comidas is 0.

After examining the bicho:
	now the bicho is nowhere;
	now the ardilla is in Selva en tinieblas;
	activate the ardilla;
	wait for any key;
	say "De repente el animal, al sentirse observado, rápidamente se escabulle hacia el sur. ¿Dónde se habrá metido?".
	
Every turn when the player can see the ardilla:
	if a fruto is in location and the ardilla is hambrienta:
		now all of the frutos in location are nowhere;
		increase the comidas by 1;
		enable the animalitos quip for Kim1;
		say "Con un furtivo salto el animal consigue llevarse algunos frutos entre sus patas. ¡Los devora con avidez!";
	if comidas is 4 and ardilla is hambrienta:
		deactivate the ardilla;
		now the ardilla is empachada;
		increase the score by 10;
		wait for any key;
		say "[line break]El pequeño animal se queda quieto tras roer el último fruto, como digiriéndolo pesadamente. El animal te mira satisfecho y emite un sonido húmedo, que dirías que es un eructo.";
		now the description of the ardilla is "Parece que el bicho está empachado y apenas se puede mover del atracón de frutos.".

Instead of showing a fruto to the ardilla:
	if the ardilla is empachada:
		say "El animal te mira satisfecho, te parece ver una ligera sonrisa de felicidad, pero rechaza el fruto graciosamente.";
	otherwise:
		say "El animal se acerca cauteloso, no se fia de que tengas el fruto en la mano.".
		
Instead of giving a fruto to the ardilla:
	if the ardilla is empachada:
		say "El animal mira el fruto pero lo rechaza, satisfecho. Te parece que se va a quedar dormido.";
	otherwise:
		say "El animal observa ansioso el fruto, pero desde una prudente distancia.".
		 
Instead of pushing or pulling or touching the ardilla, try taking the ardilla.

Instead of attacking the ardilla, say "La verdad es que es un bicho bastante adorable, no parece una amenaza.".

Instead of taking the ardilla:
	if the ardilla is empachada:
		say "Aunque el animal trata de resistirse, apenas puede moverse. Lo coges con cuidado.";
		now the player carries the ardilla;
	otherwise:
		say "Imposible cogerlo... ¡se mueve con demasiada rapidez!".

[La bestia peluda]
A bestia (f) is in Cienaga. The bestia is a rideable animal. The bestia can be salvaje or domado. The bestia is salvaje. "[if bestia is in Cienaga]Una formidable [bold type]bestia[roman type] peluda, de vivos colores verdes y púrpuras, se está solazando en la orilla de la ciénaga. [else if bestia is not in Cienaga]La [bold type]bestia[roman type] peluda está aquí. [end if][if bestia carries Kim1]Sobre la bestia está montada Kim.[end if]". The description of the bestia is "[if salvaje]Un majestuoso y colorido animal, que parece muy fuerte. Cuando lo miras más de cerca te parece un cruce entre rinoceronte y caballo, pero con mucho más pelaje. [else if bestia is not in Cienaga]La bestia te observa con curiosidad. [italic type]'¡Grooough!' [roman type][line break][end if][if bestia carries Kim1]Sobre la bestia está montada Kim.[end if]".  Understand "rinoceronte/caballo/pelaje" and "bestia peluda" as the bestia.

Instead of touching or taking the bestia, say "[if salvaje]Si toca a esta bestia estoy seguro de que me comerá la mano... mejor no tentar a la suerte.[otherwise]Acaricias a la bestia y esta te lo agradece...[line break][italic type]'Graaaoouh...'[roman type]".

Instead of pushing or pulling the bestia, say "No parece que sea muy buena idea molestarle...".

Instead of attacking the bestia for the first time, say "¿Estás seguro? La bestia parece muy fuerte...".
Instead of attacking the bestia:
	if the bestia is salvaje:
		say "Sin pensártelo dos veces atacas a la bestia, que apenas se inmuta ante tu amenaza.";
		wait for any key;
		say "Pero de repente se gira hacia ti y comienza a correr hacia tu posición para embestirte...";
		wait for any key;
		say "Intentas escapar por entre la maleza y llegar al sendero pero es inútil, el animal te embiste por detrás y pasa por encima tuyo aplastándote en su carrera...";
		wait for any key;
		end the story saying "Has muerto.";
	otherwise:
		say "¿Cómo vas a hacerle daño a esta adorable bestia peluda? ¡No podrías!".
	
Instead of showing or giving something which is not the ardilla to the bestia, say "La bestia olisquea [the noun] pero no parece que le interese...".

Instead of showing the ardilla to the bestia, say "La bestia parece que sí muestra interés en el pequeño animal...".

Instead of giving the ardilla to the bestia:
	now the ardilla is nowhere;
	say "La bestia se lleva el pequeño animal a la boca y se lo come de tu mano...[paragraph break]";
	wait for any key;
	say "[italic type]'¡Buuurp! Grooouh...'[roman type][paragraph break]";
	wait for any key;
	say "La bestia parece complacida y se acerca amistosa a tu lado.";
	wait for any key;
	increase the score by 10;
	now the bestia is domado. [a partir de aquí podremos montar a la bestia]

Instead of going up in the presence of the bestia, try mounting the bestia.
Instead of going down when the player is carried by the bestia, try dismounting.

Instead of mounting the bestia:
	if the bestia is salvaje:
		say "La bestia gruñe cuando te acercas.";
	otherwise:
		continue the action.
	
After mounting the bestia for the first time:
	say "Acaricias a la bestia y te montas en ella...[line break]";
	wait for any key;
	say "[italic type]'Graoouw... groorgh...'[roman type][line break]";
	wait for any key;
	say "¡Parece que está conforme!";
	wait for any key;
	now the bestia carries the player;
	increase the score by 10.

After mounting the bestia:
	say "[italic type]'¡Hop!'[roman type][line break]De un salto te montas en la bestia.";
	wait for any key;
	if Kim1 is in location and Kim1 is montada:
		now the bestia carries Kim1;
		say "[line break]Kim también se monta en la bestia.[line break][italic type]'¡Vamos!'[roman type][line break]";
		wait for any key.

After going somewhere by bestia:
	say "Te diriges hacia allí montado en la bestia, que se desplaza perezosamente...[line break][one of][italic type]'Groough...'[roman type][line break][or][italic type]'Graaooouh'[line break][roman type][or][italic type]'Graaaouh... graaouh'[line break][roman type][or][italic type]'¡Gruuugh!'[line break][roman type][at random][paragraph break]";
	wait for any key;
	continue the action.

Every turn when Kim1 can see the bestia:
	if Kim1 is ausente and Precipicio is visited for the first time:
		say "[one of][italic type]'Groough...'[roman type][line break]La bestia parece ronronear.[or][italic type]'Graaooouh'[line break]La bestia emite un gutural sonido...[roman type][or][italic type]'Graoouw... groorgh...'[roman type][italic type]'Graaaouh... graaouh'[line break]La bestia ronronea...[roman type][or][italic type]'¡Gruuugh!'[line break]La bestia gruñe impaciente...[roman type][at random][paragraph break]";
	if the bestia is domado and Kim1 is not carried by the bestia and the player is not carried by the bestia and Kim1 is amiga:
		now Kim1 is carried by the bestia;
		now Kim1 is montada;
		say "Kim sube de un salto a lomos de la bestia.[line break][italic type]'Esta bestia es lo bastante fuerte como para llevarnos a los dos. ¡Vamos, sube Stanis!'[roman type][line break]";
	if the bestia is domado and Kim1 is not carried by the bestia and the player is carried by the bestia and Kim1 is amiga:
		now Kim1 is carried by the bestia;
		now Kim1 is montada;
		say "Kim sube de un salto a lomos de la bestia.[line break][italic type]'¡Vamos!'[roman type][line break]";
	else if the bestia is salvaje:
		say "Kim acaricia a la bestia.[line break][italic type]'Deja de gruñir a Stanis, no te va a hacer daño...'[roman type][line break]".

Instead of dismounting in the presence of the bestia:
	say "De un salto te bajas de la bestia.";
	now the player is in location;
	if Kim1 is carried by the bestia:
		now Kim1 is in location;
		say "Kim baja también de la bestia.".
		
Section 4.2 - La capitana Kim Kimberley en Limbo

Kim1 (f) is a Patroller. Kim1 is following. Kim1 is in Precipicio. "[if ausente]La [bold type]mujer[roman type] está absorta mirando el paisaje[else if amiga]La capitana [bold type]Kim Kimberley[roman type] está aquí[else if bestia is in location]Kim acaricia el pelaje de la bestia[otherwise]Kim está aquí[end if].[if the bestia carries Kim1][line break]Ella monta a lomos de la bestia.[end if]". 
Kim1 can be amiga or ausente or montada. Kim1 is ausente. 
The description of Kim1 is "[if ausente]La mujer observa el manto de nubes que cubre el firmamento, donde a lo lejos se pueden ver unas rocas flotantes de extraña vegetación, en un paisaje irreal que parece burlar la gravedad.[else if amiga]La capitana Kim te devuelve la mirada.[line break][italic type]'Pongámonos en marcha, ¡vamos!'[roman type][else if bestia is in location]Kim acaricia el pelaje de la bestia.[otherwise][italic type]'No te quedes ahí mirando, ¡vamos!'[roman type][end if][if the bestia carries Kim1][line break]Ella está montada a lomos de la bestia.[end if]". 
The printed name of Kim1 is "[if ausente]mujer[otherwise]Kim". 
Understand "mujer", "kim", "capitana", "ojos", "kim kimberley" and "mirada" as Kim1. 

Instead of pushing or pulling or touching or taking or attacking Kim1, say "Eso no estaría bien.".

[Creando árbol de diálogo para la capitana Kim en Limbo]
The litany of Kim1 is the Table of Kim1 Comments. 
[The greeting of Kim1 is hola4.] [Esto lo usaríamos para empezar hablando con la opción hola4, pero jaja LOL XD]

Table of Quip Texts (continued)
quip	quiptext
hola4	"La mujer se gira tranquila y te mira a los ojos.[paragraph break][italic type]'Por fin has despertado.'[roman type][paragraph break]Esta mujer la conoces, es una tripulante de la nave Copérnico 86: la capitana Kim Kimberley.[paragraph break][italic type]'He tenido que reprogramar tu cápsula para que despertaras antes que el resto.'[roman type]"
saludo1	"La mujer esboza una ligera sonrisa.[paragraph break][italic type]'Sí, me alegra que te acuerdes de mí, han pasado muchas cosas desde que entramos en hibernación.'[roman type][paragraph break]Kim se gira y señala hacia las nubes.[paragraph break][italic type]'Pero ahora debemos poner a salvo al resto de la tripulación, las cápsulas están desperdigadas por el manto de nubes y debemos reprogramarlas y dirigirlas a tierra firme.'[roman type]"
preguntas	"[italic type]'Quizás yo también tenga preguntas para tí, Stanis. No pensé que elegirías este planeta.'[roman type][paragraph break]Kim te mira a los ojos.[paragraph break][italic type]'Me sorprendes, chico. Hay aquí un problema gravitacional, las leyes de la gravedad funcionan aquí de manera caprichosa...'[roman type]"
silence	"Kim asiente y te sigue."
animalitos	"[italic type]'Sí, los he visto comer hasta cuatro veces de esos frutos... ¡luego se quedan tan llenos que no se pueden ni mover!'[roman type]"
vistas	"La capitana mira de nuevo al horizonte y asiente.[paragraph break][italic type]'Es un paisaje imposible. Estamos sobre enormes porciones de tierra, como las de allá, a lo lejos... inmensas rocas que flotan entre nubes rosadas, bajo un cielo púrpura y naranja. Imposible.'[roman type]"
preguntalimbo1	"[italic type]'Hubo un error en los cálculos, nunca hubiéramos llegado a Gliese 667Cc ni mucho menos a la constelación del Escorpión. Había que corregirlo y eso es lo que hicimos... estuvimos trabajando duro para encontrar exoplanetas en las constelaciones cercanas a las que podíamos llegar.'[roman type][paragraph break]Kim duda antes de continuar. Se cruza de brazos y mira al suelo.[paragraph break][italic type]'No pudiste acabar el rastreo a tiempo y tuve que escoger un sistema. Yo no soy científica, apunté al sistema, no a un planeta, es decir: apunté al sol, que es el centro del sistema. Lo lamento mucho, pero ya no podía corregirlo, no tenía total acceso al sistema sin una tarjeta maestra.'[roman type]"
preguntalimbo2	"[italic type]'El comandante quiso que un científico ocupara la cápsula de emergencia por si hubiera algún fallo, pues solo alguien como tú escogería bien un sustituto habitable si finalmente no llegábamos a Gliese 667Cc... claro que eso fue antes del incidente... todo cambió después de eso.'[roman type]"
preguntalimbo3	"[italic type]'Stanis, ¿no te acuerdas de nada, verdad? Se volvió loco, algo le ocurrió... lo cambió. Dijo que tuvo una visión y que una voz le habló en su cápsula.'[roman type][paragraph break]Kim te mira fijamente...[paragraph break][italic type]'Intentó cortarte el cuello. Tuve que meterte yo en la cápsula de emergencia y cerrar tras de mí... Nick no tendría acceso a ninguna sala, ni yo tampoco, la única opción que tenía era dejarlo encerrado en el jardín. No le faltaría de nada allí, pero no tendría ya acceso a la sala de control de la Copérnico 86.'[roman type]"
preguntalimbo4	"[italic type]'Ahora tenemos que terminar el proceso de colonización poniendo a salvo a toda la tripulación. ¿Ves todas esas cápsulas flotando sobre el mar de nubes, ahí desperdigadas?'[roman type][paragraph break]Kim señala hacia el horizonte. Puedes ver algunas cápsulas parcialmente ocultas por el manto de nubes, flotando suavemente.[paragraph break][italic type]'Se pueden reprogramar para dirigirlas a tierra firme y para anticipar la deshibernación y su despertar... porque si no van a estar dormidos más de doscientos años, que es el tiempo estimado para llegar a Gliesse 667Cc. Llegar a este planeta no estaba preparado ni programado. ¡Vamos!'[roman type]"

Table of Kim1 Comments
prompt	response	enabled
"¿Hola?"	hola4	1
"¡Capitana Kim Kimberley!"	saludo1	0
"¡Tengo muchas preguntas para usted, capitana!"	preguntas	0
"¡Vamos!"	silence	0
"Parece que a los bichos de este planeta les gusta comer esos frutos..."	animalitos	0
"Es un paisaje espectacular, ¿verdad?..."	vistas	0
"Me debes una explicación, ¿qué pasó en la Copérnico 86?"	preguntalimbo1	0
"¿Porqué yo estaba en la cápsula de emergencia y no tú?"	preguntalimbo2	0
"¿Qué hiciste con el comandante Nick Spotifus?"	preguntalimbo3	0
"¿Qué podemos hacer ahora?"	preguntalimbo4	0


After quipping when the current quip is preguntas: 
	enable the preguntalimbo1 quip;
	enable the preguntalimbo2 quip.
	
After quipping when the current quip is preguntalimbo2: 
	enable the preguntalimbo3 quip;
	enable the preguntalimbo4 quip.
	
After quipping when the current quip is hola4: enable the saludo1 quip.
After quipping when the current quip is hola4: enable the vistas quip.
After quipping when the current quip is animalitos: enable the silence quip.
After quipping when the current quip is silence: enable the silence quip.



After quipping when the current quip is saludo1: 
	now Kim1 is amiga;
	activate Kim1;
	enable the preguntas quip.

After quipping when the current quip is vistas: 
	now Kim1 is amiga;
	activate Kim1;
	enable the silence quip.

Section 4.3 - La nave en el pantano

[La piedra negra flotante en la Selva en tinieblas]
A negra (f) is in Selva en tinieblas. "Te sorprende ver una piedra negra suspendida en el aire.". The description of the negra is "Una curiosa piedra negra que parece flotar en el aire, como si la gravedad no tuviera poder sobre ella.". Understand "piedra", "piedra negra", "flotante", "piedra flotante" and "piedra flotante negra" as the negra. The printed name of the negra is "piedra flotante negra".

Instead of pulling or touching or pushing or attacking the negra, try taking the negra.

Instead of taking the negra when the negra is not handled:
	if the player is carried by the bestia:
		now the player carries the negra;
		say "Te pones de pie encima de la bestia y consigues alcanzar la piedra.[paragraph break]";
		wait for any key;
		increase the score by 10;
		say "[italic type]'Graaaoough...'[roman type]";
	otherwise:
		say "No la alcanzas, la piedra está suspendida a unos tres metros de altura.".
		
East of Cienaga is Pantano. The description of Pantano is "[if unvisited]Tras dejar atrás lo más profundo de la ciénaga llegas lentamente hasta la otra orilla. [end if]Te encuentras en aguas pantanosas poco profundas, en la otra parte del bosque. Ante ti se alzan los [bold type]restos[roman type] de lo que queda del sistema de cápsulas de la nave Copérnico 86."
	
Some restos (m) are in Pantano. They are scenery. The description of the restos is "Examinas los restos que tienes delante y compruebas que se tratan de partes del sistema de cápsulas. Te parece adivinar la sala de control tras una [bold type]compuerta[roman type], que se encuentra [if the compuerta sumergida is bajoagua]bajo las aguas del pantano.[otherwise] sobre las aguas del pantano.". Understand "nave", "copernico" as the restos.

The agua (f) is in Pantano. The agua is scenery. The description of the agua is "El agua cubre parcialmente la nave, aunque esta parte es poco profunda, más allá el pantano sí que es profundo y cenagoso y resulta imposible movese sin la ayuda de la bestia.". Understand "cienaga", "pantano", "cenagal", "aguas", "fango", "orilla", "bosque" as the agua.

Instead of drinking or tasting the agua, say "El agua del pantano es ligeramente dulce, pero tiene un sabor nauseabundo al final.".

Instead of nadaring the agua, say "Te zambulles en las aguas del pantano... tu cuerpo es demasiado grande como para empujar la nave desde abajo.".

A compuerta sumergida (f) is in Pantano. The compuerta sumergida is scenery. The compuerta sumergida can be bajoagua or sobreagua or destrozada. The compuerta sumergida is bajoagua. The description of the compuerta sumergida is "[if bajoagua]La compuerta está bajo las aguas. [line break][italic type]'Quizás si conseguimos levantar esta parte de los restos de la nave podríamos abrir la compuerta.'[roman type] [end if][if destrozada]El bláster ha abierto un boquete por el cual entrar.[else if sobreagua]La compuerta está sobre el nivel del agua, pero el mecanismo de apertura está destrozado y no se puede abrir.[end if]". Understand "boquete", "mecanismo", "apertura", "puerta" as the compuerta sumergida.

A salacontrol (f) is in Pantano. The salacontrol is scenery. The description of the salacontrol is "Apenas puedes ver por entre los restos sumergidos, pero te parece que es parte del sistema de cápsulas y la sala de control.". Understand "sistema", "capsulas", "sala", "sala de control", "ordenador" as the salacontrol.

Instead of pushing the restos, try pushing the compuerta sumergida.
Instead of attacking the restos, try attacking the compuerta sumergida.
Instead of pushing the salacontrol, try pushing the compuerta sumergida.

Instead of opening the compuerta sumergida:
	if the bestia carries the player:
		say "Para poder hacerlo tendrás que bajarte de la bestia.";
	else if the compuerta sumergida is bajoagua:
		say "Imposible mientras esté sumergida. [italic type]'Quizás si conseguimos levantar esta parte de los restos de la nave podríamos abrir la compuerta...'[roman type][line break]";
	else if the compuerta sumergida is sobreagua:
		say "[italic type]'Imposible... el mecanismo de apertura está destrozado y no se puede abrir.'[roman type]";
	else if the compuerta sumergida is destrozada:
		say "El bláster ha abierto un boquete en la compuerta por el cual podrías [bold type]entrar[roman type]...".
		
Instead of pulling or pushing or taking the compuerta sumergida, try attacking the compuerta sumergida.

Instead of attacking the compuerta sumergida:
	if the bestia carries the player:
		say "Será mejor que baje primero de la bestia, no vaya a ser que la violencia la asuste...";
	else if the compuerta sumergida is bajoagua:
		say "Imposible mientras esté sumergida. [italic type]'Quizás si conseguimos levantar esta parte de los restos de la nave podría tratar de forzarla...'[roman type][line break]";
	else if the compuerta sumergida is sobreagua and the player carries the pistola and the pistola is cargado:
		now the compuerta sumergida is destrozada;
		now pistola is nowhere;
		say "Apuntas al mecanismo de la compuerta con la pistola bláster...[line break][italic type]'¡Zzzap! ¡Zzzaaap! ¡Zzzzzzzaaaap!'[paragraph break]";
		wait for any key;
		say "'¡Zzzzzzzaap! ¡Zzzzzzzzzaaaaaap!... ¡¡¡Badaboooum!!!' [roman type]¡Parte de la compuerta salta por los aires...[paragraph break]";
		wait for any key;
		increase the score by 10;
		say "Pero la pistola se recalienta demasiado y te quema en las manos... [line break][italic type]'¡Paf paf tcheek tcheeek!'[roman type][paragraph break]";
		wait for any key;
		say "Sueltas la pistola rápidamente antes de que te explote en las manos... la ves sumergirse en las aguas pantanosas.";
		wait for any key;
	else if the compuerta sumergida is destrozada:
		say "El bláster ha abierto un boquete en la compuerta por el cual podrías [bold type]entrar[roman type]...";
	otherwise:
		say "[italic type]'¡Clonk!' [roman type]No parece que solo con tu fuerza vayas a lograr gran cosa.".

Instead of going inside in Pantano:
	if the compuerta sumergida is destrozada:
		if the Copernico is unvisited, increase the score by 10;
		say "Con cuidado, te introduces por el boquete abierto...[paragraph break]";
		wait for any key;
		now the player is in Copernico;
	otherwise:
		say "No puedo entrar en la nave hasta que no consiga abrir la compuerta de alguna manera.".

After examining or opening or searching or looking under the compuerta sumergida:
	if Kim1 is in location and the player carries the negra:
		say "Kim dice: [italic type]'¡Dame esa piedra flotante!'[roman type][line break]";
		move Kim1 to location;
	if Kim1 is in location and the compuerta sumergida is sobreagua and the pistola is not carried by the player:
		say "Kim dice: [italic type]'Es una lástima que no tengamos una pistola bláster aquí para reventar el mecanismo de la puerta...'[roman type][line break]";
	if Kim1 is in location and the compuerta sumergida is sobreagua and the player carries the pistola:
		say "Kim dice: [italic type]'¡A mí me parece que esta compuerta solo puede abrirse de un disparo!'[roman type][line break]".

After doing something when Kim1 can see the negra:
	if the location is Pantano and the player is not carried by the bestia:
		say "Kim dice: [italic type]'Se me ocurre una idea para hacer subir la nave y liberar la compuerta... ¡dame esa piedra flotante!'[roman type][line break]".

After doing something when bestia carries Kim1:
	if the location is Pantano:
		now Kim1 is in Pantano;
		deactivate Kim1;
		say "Kim desmonta para acercarse a mirar los restos de la nave.";
	continue the action.
		
Every turn when Kim1 is in Pantano and the player can see Kim1:
	if compuerta sumergida is sobreagua:
		say "Kim golpea el mecanismo de apertura de la compuerta... [line break][italic type]'¡Clonk!'[roman type][line break]";
	else if compuerta sumergida is bajoagua and Kim1 carries the negra:
		now the negra is nowhere;
		now compuerta sumergida is sobreagua;
		increase the score by 10;
		say "Sin más dilación, Kim se sumerge bajo las aguas pantanosas con la piedra entre sus manos...[paragraph break]";
		wait for any key;
		say "Al cabo de un momento emerge de nuevo de entre las aguas, sin la piedra...[paragraph break]";
		wait for any key;
		say "¡Y observas detrás de ella como la nave se levanta como por arte de magia![paragraph break]";
		wait for any key;
		say "[italic type]'¿Has visto, Stanis? Como la gravedad en este planeta funciona de manera caprichosa, he colocado la piedra bajo el fondo del pantano, sobre la nave... ¡y al elevarse la piedra ha levantado también la nave!'[roman type][paragraph break]";
		wait for any key;
		say "Kim empieza a examinar el mecanismo de la puerta. La observas y piensas: [italic type]'¡Por eso es la capitana!'[roman type][line break]";
		wait for any key;
	else if compuerta sumergida is destrozada:
		say "Kim dice: [italic type]¡Ya podemos entrar! ¡Vamos!'[roman type][line break]";
		wait for any key;
		now Kim1 is in Copernico;
		deactivate Kim1;
		now the description of Kim1 is "Kim está ante los controles de la nave intentando reajustar el sistema de cápsulas.";
	otherwise:
		say "Kim dice: [italic type]'¡Tenemos que levantar esa nave!'[roman type][line break]".
	
[Moviéndose por el pantano con la bestia]
Instead of going east in Cienaga:
	if the bestia carries the player:
		say "Subido a lomos de la bestia, comienzas a avanzar por entre las aguas pantanosas de esta ciénaga...";
		wait for any key;
		say "[line break]Cruzas lentamente al otro lado del pantano, rodeado de tupida vegetación. La bestia se detiene al lado de los restos de la Copérnico. Aquí el agua ya no es tan profunda y ya podrías [bold type]desmontar[roman type].";
		now the bestia is in the Pantano;
		continue the action;
	otherwise:
		say "No parece muy prudente adentrarse en estas aguas cenagosas sin un buen medio para cruzarlas...".
		
Instead of going west in Pantano:
	if the bestia carries the player:
		say "Subido a lomos de la bestia, comienzas a avanzar por entre las aguas cenagosas de este pantano...";
		wait for any key;
		say "[line break]Cruzas lentamente al otro lado del pantano, hasta llegar a la ciénaga. Aquí el agua ya no es tan profunda y ya podrías [bold type]desmontar[roman type].";
		now the bestia is in the Cienaga;
		continue the action;
	otherwise:
		say "No parece muy prudente adentrarse en estas aguas pantanosas sin estar montado en una buena bestia...".


[Copérnico 86 en Limbo]
Copernico is a room. The description of Copernico is "Te encuentras en la sala de control de cápsulas, puedes ver el [bold type]ordenador[roman type] central echando humo y no parece estar funcionando. Afuera está el pantano.". The printed name of Copernico is "Restos de la Copérnico 86"

Instead of going outside in Copernico:
	if the compuerta sumergida is destrozada:
		say "Con cuidado, sales por el boquete abierto...[paragraph break]";
		wait for any key;
		now the player is in Pantano.

The ordenador_roto (m) is in Copernico. It is scenery. "Un complejo ordenador vigila que las constantes vitales de las personas que duermen en las cápsulas se mantengan estables. Su [bold type]pantalla[roman type] está a oscuras. También puedes ver un [bold type]teclado[roman type] y una [bold type]ranura[roman type] para tarjetas.". Understand "ordenador", "constantes" as the ordenador_roto.

A pantalla_rota (f), a ranura_rota (f), a teclado_roto (m) are part of the ordenador_roto. The ranura_rota is a container. Instead of inserting something which is not a tarjeta maestra into a ranura_rota, say "Solo se puede insertar una tarjeta maestra.". Understand "pantalla", "monitor" as the pantalla_rota. Understand "ranura" as the ranura_rota. Understand "teclado" as the teclado_roto.

The printed name of ranura_rota is "ranura". The printed name of teclado_roto is "teclado". The printed name of pantalla_rota is "pantalla". The printed name of ordenador_roto is "ordenador roto".  

The description of teclado_roto is "Estás seguro que el teclado está desbloqueado porque Kim está intentado acceder al menú de control, pero la pantalla está en negro". Understand "reset", "boton", "teclas", "tecla", "bloqueo", "amarillo" and "boton amarillo" as the teclado_roto.
	
The description of pantalla_rota is "La pantalla está en negro. [paragraph break]Kim dice:[italic type]'¡Todo está estropeado! ¡Esto solo se puede reparar con un decodificador CV23!'[roman type]".

Instead of desbloquearing the teclado_roto, try desbloquearing the pantalla_rota.
Instead of desbloquearing the ranura_rota, try desbloquearing the pantalla_rota.
Instead of desbloquearing the ordenador_roto, try desbloquearing the pantalla_rota.

Instead of desbloquearing the pantalla_rota:
	if the player carries the decodificador and the decodificador is cargado:
		say "[fixed letter spacing]'DECODIFICANDO SISTEMA...'[line break][variable letter spacing]";
		wait for any key;
		say "[fixed letter spacing]'FALLO GENERAL DEL SISTEMA. REPARACIÓN MANUAL REQUERIDA EN NDR45S BAJO XXNEK21...'[paragraph break][variable letter spacing]"; 
		wait for any key;
		say "[roman type]Kim dice: [italic type]'Vale, creo que sé como arreglar eso, ¡además de capitana soy ingeniera aeroespacial! Dame el decodificador...'[roman type][paragraph break]";
	if the player carries the decodificador and the decodificador is cargado:
		say "¡Maldición! El decodificador está descargado...[paragraph break]";
	otherwise:
		say "No sabes ni por dónde empezar...[line break]Kim dice: [italic type]'Este estropicio solo lo arregla un decodificador CV23...'[roman type][paragraph break]".

[Dar cosas a la capitana]
Instead of giving something to Kim1:
	if Kim1 is ausente:
		say "Quizás tendrías que hablar con ella antes de darle [the noun].";
	else if the noun is the negra:
		now the negra is carried by Kim1;
		say "'[italic type]Quizás esta piedra pueda ser útil...'[roman type][line break]Kim coge [the noun].[line break]";
	else if the noun is a fruto:
		say "'[italic type]Gracias, pero no tengo hambre, Stanis.'[roman type][line break]";
	else if the noun is a ardilla:
		say "'[italic type]No es el tipo de regalo que esperaba de tí, Stanis.'[roman type][line break]";
	else if the noun is a pistola:
		say "'[italic type]¿No te atreves a disparar tú mismo, Stanis?'[roman type][line break]";
	else if the noun is the decodificador:
		now the decodificador is carried by Kim1;
		say "'[italic type]¡Esto será muy útil, Stanis!'[roman type][line break]Kim coge [the noun].[line break]";
	otherwise:
		say "'[italic type]No necesito [the noun] ahora mismo, Stanis.'[roman type][line break]";

[Romper la nave es mala idea, Stanis]
Instead of pushing or pulling the teclado_roto, try pushing the pantalla_rota.
Instead of pushing or pulling the ranura_rota, try pushing the pantalla_rota.
Instead of pushing or pulling the ordenador_roto, try pushing the pantalla_rota.
Instead of pushing or pulling the pantalla_rota, say "'[italic type]¡Mmmmpfh!...[roman type][line break]Kim dice: [italic type]'¿Pero qué estás haciendo? ¡Cuidado, el sistema está muy inestable y puede explotar!'[roman type]".

Instead of attacking the teclado_roto, try attacking the pantalla_rota.
Instead of attacking the ranura_rota, try attacking the pantalla_rota.
Instead of attacking the ordenador_roto, try attacking the pantalla_rota.
Instead of attacking the pantalla_rota for the first time, say "Kim grita: [italic type]'¡No hagas eso Stanislav! ¡Cuidado! ¡El sistema podría explotar!'[roman type]".
Instead of attacking the pantalla_rota:
		say "¡Crash! Fzzzzzz...";
		wait for any key;
		say "Kim dice: [italic type]'¡Te he dicho que tuvieras cuidado! ¡Oh! ¡Oh no!'[roman type]";
		wait for any key;
		say "Una fuerte explosión resuena en el apacible pantano... voláis por los aires y lo último que ves es el cielo anaranjado del planeta Limbo, tan bello y extraño, antes de caer a plomo sobre las aguas cenagosas...";
		wait for any key;
		end the story saying "Has muerto.".

Every turn when Kim1 is in Copernico and the player can see Kim1:
	if the player carries the decodificador:
		say "Kim dice: [line break][italic type]'¡Dame eso que llevas!'[roman type][line break]";
	else if Kim1 carries the decodificador:
		increase the score by 10;
		say "Sin más dilación, Kim coge el decodificador y le propina varios golpes hasta que consigue activar un módulo de reparación que desconocías.[paragraph break]Rápidamente empieza a reparar los sistemas de la nave...[paragraph break]";
		wait for any key;
		say "Al cabo de lo que te parece una eternidad de tiempo, los sistemas se vuelven a poner en funcionamiento y Kim grita de júbilo...[paragraph break]";
		wait for any key;
		say "[italic type]'¡Vamos a conseguirlo, Stanis! ¡Vamos a salvar a toda la tripulación! ¡Vamos a colonizar el planeta!'[roman type][paragraph break]";
		wait for any key;
		clear the screen;
		center "[paragraph break][paragraph break][fixed letter spacing]EPÍLOGO[variable letter spacing][paragraph break][paragraph break]";
		say "Kim finalmente reprogramó todo el sistema de cápsulas para que se adecuara a la extraña gravedad del planeta y las pudo poner a salvo sobre esta y las demás rocas voladoras del planeta Limbo.[paragraph break]";
		wait for any key;
		say "Cuando todas estuvieron a salvo, procedió a cancelar la hipotermia inducida y liberar a la tripulación de la hibernación, y les envió un mensaje a todos...[paragraph break]";
		wait for any key;
		say "[italic type]'¡Tripulación de la Copérnico 86, estamos a salvo![paragraph break]Gracias a la pericia del doctor Stanislav Odengar hemos podido corregir el rumbo de la nave, que nos enviaba a la muerte, y desviarnos hasta uno de los planetas del sistema Trappist: Limbo, que será nuestro nuevo hogar.'[paragraph break]'¡Bienvenidos a casa!'[roman type][line break]";
		wait for any key;
		end the story finally;
	otherwise:
		say "Kim dice: [italic type]'¡Tenemos que repararlo todo!'[roman type][line break]".
		

Part 5 - Planeta Gaia

Pradera is a room. "[if unvisited]¡Estás vivo! Conseguiste salir de la nave y evacuar las cápsulas de hibernación. A través del cristal de tu cápsula puedes ver un cielo despejado, de un intenso color azul. Te parece observar una bandada de pájaros allá a lo lejos y el rumor de las olas del mar. ¡Parecería que estás en el mismísmo planeta Tierra! [otherwise]Estás en una apacible pradera, puedes ver el cielo despejado, de un intenso color azul. Te parece observar una bandada de pájaros allá a lo lejos. La pradera continúa hacia el norte, hasta un prado algo más elevado, hacia el sur escuchas el rumor de las olas del mar."

A capsula_pradera (f) is here. "Puedes ver tu cápsula de hibernación." 
The description of capsula_pradera is "Es tu cápsula de evacuación. [if open]El cristal está abierto.[otherwise]Ahora está cerrada."  
The capsula_pradera is a container, openable, transparent, closed and fixed in place.
The printed name of capsula_pradera is "cápsula".
Understand "hibernacion", "capsula", "capsula de hibernacion" and "r1198" as the capsula_pradera.

The cristal5 (m) is part of the capsula_pradera. The printed name of the cristal5 is "cristal". Understand "cristal" as the cristal5.
The description of the cristal5 is "El cristal está [if capsula_pradera is open]abierto.[otherwise]cerrado.".

Instead of opening or pushing the cristal5, try opening the capsula_pradera. 
Instead of closing or pulling the cristal5, try closing the capsula_pradera. 

Instead of getting off the capsula_pradera, try exiting.

Instead of desbloquearing or pushing the capsula_pradera, try opening the capsula_pradera.

Before entering the capsula_pradera:
	say "Abres el cristal de tu cápsula y te introduces en el interior.";
	move the player to the capsula_pradera;
	now the capsula_pradera is open;
	rule succeeds. [esto es un ejemplo de mala programación pq el objeto tendría que ser "enterable" y listo, pero ya me da pereza cambiar]
	

[Decorados para el Planeta Gaia]
The PlanetaGaia is a region. Pradera, Playa, Prado, Costa, Dunas, Oasis, Arenal, Monticulo, Montana, Rio, Cascada, Riachuelo, Cumbre are in PlanetaGaia.

Instead of listening when the player is in PlanetaGaia, say "Puedes escuchar el rumor de las olas del mar y el gutural canto de los párajos en el cielo.".

Instead of smelling when the player is in PlanetaGaia, say "El aire es fresco y desprende los aromas del mar.".

[Instead of tasting the coco, try eating the coco.]

Instead of sleeping when the player is in PlanetaGaia, say "¡No es momento de dormir, Stanislav! Tal vez necesites un poco de [bold type]ayuda[roman type].".

Instead of jumping when the player is in PlanetaGaia:
	if the player is in Cascada:
		say "Saltas por el borde de la cascada y captas la atención de las criaturas acuáticas que en sus aguas moran. [if the marsupial is in location]Pero cuando ven al marsupial que te sigue huyen atemorizadas.[end if]";
	else if the player is in Riachuelo:
		say "No llegas a alcanzar la pared y caes torpemente en el río. Sales de ahí un tanto avergonzado.";
	else if the player is in capsula_pradera:
		say "Deberías salir primero de la cápsula.";
	else if the player is in capsula_kim:
		say "Deberías salir primero de la cápsula.";
	otherwise:
		say "El planeta es verdaderamente hermoso, ¿quizás estás saltando por la felicidad que te produce... o por la pura desesperación?".

Instead of thinking when the player is in PlanetaGaia, say "¡Eso es, piensa! ¡Piensa Stanislav! Tienes que encontrar la manera de poner a salvo a la tripulación que está en las cápsulas de este inmenso océano que es el planeta Gaia. [if Monticulo is visited]La única opción es conseguir entrar en los restos de la Copérnico 86.[end if] Tal vez necesites un poco de [bold type]ayuda[roman type].".

The decoradogaia is a backdrop in the PlanetaGaia. "El planeta Gaia es como un paraíso en la tierra, playas interminables de aguas cristalinas, praderas verdes... el rumor de las olas del mar, pájaros de vivos colores sobrevolando el cielo azul...". Understand "terreno/bosques/planeta", "suelo/sol/viento/arena/palmeras/dunas", "vegetacion/pradera/prado/cuesta" as the decoradogaia. The printed name of decoradogaia is "planeta Gaia".

The pajaros (m) is a backdrop in the PlanetaGaia. "Te parece ver unos pájaros sobrevolando el cielo... pero si tus sentidos no te engañan esas aves deben ser muy grandes, o acaso tú eres muy pequeño para las medidas del planeta.". Understand "pajaro/aves//animales/sonidos/ave/cielo" as the pajaros. The printed name of pajaros is "pájaros".

[Some aguas is a backdrop in the PlanetaGaia. "Las aguas de este hermoso planeta pueden no ser tan bucólicas como podría parecer en un primer momento.". Understand "playas/costa" as the aguas.]

The capsulas_gaia are a backdrop.
Some capsulas_gaia (f) are in the PlanetaGaia. The printed name of capsulas_gaia is "cápsulas de hibernación". Understand "capsulas" as the capsulas_gaia.
The description of the capsulas_gaia is "Sobre las aguas del mar puedes ver multitud de cápsulas de hibernación desperdigadas. Parece que lentamente las olas las van empujando hacia la playa.".
Instead of taking or pushing the capsulas_gaia, say "¡Son demasiadas! No puedes llevarte las cápsulas.".
Instead of opening or attacking or desbloquearing the capsulas_gaia, say "Tratas de manipular de alguna manera las cápsulas, pero tu esfuerzo es inútil.".

Playa is south of Pradera. The description of Playa is "[if unvisited]Caminas por la pradera hasta que empiezas a pisar la arena blanca de una espléndida playa, bajo un agradable cielo soleado. Sobre las aguas puedes ver multitud de cápsulas, cosa que te alegra sobremanera: ¡la evacuación ha sido un éxito![paragraph break]Te fijas en que hay una figura en la orilla de la playa y te acercas hasta llegar a su altura. Se trata de una mujer vestida con el uniforme de la tripulación de la Copérnico 86, que al notar tu presencia se gira hacia ti y esboza una amplia sonrisa. La reconoces en el acto, es la capitana Kim Kimberley.[paragraph break][italic type]'Doctor Stanislav Odengar, por fin ha despertado. ¡Bienvenido!'[roman type][else if visited]Te encuentras en una interminable playa de aguas cristalinas, sobre las que puedes ver flotando numerosas cápsulas de hibernación. El sol brilla cálidamente en un cielo de intenso color azul. Una ligera brisa marina te reconforta tu cuerpo entumecido por la larga hibernación. Al norte de tu posición se encuentra la pradera por donde está tu cápsula.[end if]"

The orilla (f) is scenery. The orilla is in Playa. The description of orilla is "La orilla de la playa discurre infinita hasta donde alcanza tu vista. Sobre las aguas de la playa puedes ver numerosas cápsulas de hibernación.". Understand "playa/mar/aguas/costa/agua" as the orilla. The printed name of orilla is "orilla de la playa".

Instead of nadaring the orilla, try climbing the orilla.
Instead of climbing the orilla, say "Te zambulles en el agua, pero aquí no te sientes muy seguro...".

Instead of tasting the orilla, try drinking the orilla.
Instead of drinking the orilla, say "El agua está salada.".

Instead of going somewhere when the player is in Playa:
	if Kim2 is sana:
		enable the dondevas quip for Kim2;
		say "Kim dice: [italic type]'¡Espera! Tengo algo que contarte...'[roman type]";
		wait for any key;
		try talking to Kim2;
	 otherwise:
		continue the action.

Section 5.1 - La capitana Kim Kimberley en Gaia

Kim2 (f) is a Patroller. Kim2 is following. Kim2 is in Playa. "[if sana]La capitana [bold type]Kim Kimberley[roman type] está aquí.[otherwise][bold type]Kim[roman type] se apoya en tu hombro y trata de mantenerse en pie.". 
Kim2 can be sana or herida. Kim2 is sana. 
The description of Kim2 is "[if sana]La capitana Kim Kimberley sonríe de buena gana.[line break][italic type]'Siempre tan observador, Stanis...'[roman type][otherwise]La capitana Kim está visiblemente malherida. El Kraken se ha cebado con su pierna y parece que se le ha roto algún hueso. Se tiene que apoyar en tu hombro para poder mantenerse en pie.". 
Understand "mujer", "kim", "capitana", "ojos", "kim kimberley" and "mirada" as Kim2. 
The printed name of Kim2 is "Kim".
Instead of pushing or pulling or touching or taking or attacking Kim2, say "Eso no estaría bien.".

[Creando árbol de diálogo para la capitana Kim en Gaia]
The litany of Kim2 is the Table of Kim2 Comments. 
[The greeting of Kim1 is hola4.] [Esto lo usaríamos para empezar hablando con la opción hola4, pero jaja LOL XD]

Table of Quip Texts (continued)
quip	quiptext
hola5	"La mujer se gira tranquila y te mira a los ojos.[paragraph break][italic type]'Por fin has despertado.'[roman type][paragraph break]Esta mujer la conoces, es una tripulante de la nave Copérnico 86: la capitana Kim Kimberley.[paragraph break][italic type]'He tenido que reprogramar tu cápsula para que despertaras antes que el resto.'[roman type]"
saludo2	"La mujer esboza una ligera sonrisa.[paragraph break][italic type]'Sí, me alegra que te acuerdes de mí, han pasado muchas cosas desde que entramos en hibernación.'[roman type][paragraph break]Kim se gira y señala hacia el mar.[paragraph break][italic type]'Pero ahora debemos poner a salvo al resto de la tripulación, las cápsulas están desperdigadas por este vasto océano, debemos reprogramarlas y dirigirlas a tierra firme.'"
pregunta2	"[italic type]'Cierto, te debo más de una explicación. ¿Por dónde empezar?'[roman type]"
silence2	"Kim asiente y te sigue."
animalitos2	"[italic type]'Por lo que he visto, aquí los animales son muy grandes, esperemos que sean amistosos...'[roman type]"
vistas2	"La capitana observa el infinito océano y asiente.[paragraph break][italic type]'Este es el mundo que yo hubiera escogido, sin duda. Donde hay agua, hay vida.'[roman type]"
dondevas	"[italic type]'Creo que te debo una explicación...'[roman type]"
pulpillo	"No hay respuesta. La capitana Kim parece haber perdido el conocimiento."
comoestas	"[italic type]'Sí, creo que puedo ponerme en pie, pero necesitaré tu ayuda para caminar, creo que tengo algún hueso roto...'[roman type]"
vamosvenga	"[italic type]'Hago lo que puedo... [if Kim2 is in capsula_kim and capsula_kim is in Cascada]ayúdame a salir de aquí, sola no puedo, aún me duele la pierna...'[else if Kim2 is not in capsula_kim and the location is Cascada]¡pero gracias por haberme ayudado a escapar de esa bestia!'[else if Kim2 is in Playa] ayúdame a llegar hasta mi cápsula, quizás pueda ayudarme a regenerar... ¡Tendrás que cargar conmigo!'[else if Kim2 is not in capsula and the location is not Cascada]¡podrías tener un poco de consideración hacia una lisiada!'[end if][roman type]"
comoestas2	"[italic type]'¿Quieres hacer el favor de cerrar la cápsula y dejarme descansar? ¡Ya habrá tiempo luego para hablar!'[roman type]"
ayudaalevantar	"[italic type]'Sí, algo mejor. ¡Ayúdame a caminar, Stanis!'[roman type]"
preguntagaia1	"[italic type]'Hubo un error en los cálculos, nunca hubiéramos llegado a Gliese 667Cc ni mucho menos a la constelación del Escorpión. Había que corregirlo y eso es lo que hicimos... estuvimos trabajando duro para encontrar exoplanetas en las constelaciones cercanas a las que podíamos llegar.'[roman type][paragraph break]Kim duda antes de continuar.[paragraph break][italic type]'No pudiste acabar el rastreo a tiempo y tuve que escoger un sistema. Yo no soy científica, apunté al sistema, no a un planeta, es decir: apunté al sol, que es el centro del sistema. Lo lamento mucho, pero ya no podía corregirlo, no tenía total acceso al sistema sin una tarjeta maestra.'[roman type]"
preguntagaia2	"[italic type]'El comandante quiso que un científico ocupara la cápsula de emergencia por si hubiera algún fallo, pues solo alguien como tú escogería bien un sustituto habitable si finalmente no llegábamos a Gliese 667Cc... claro que eso fue antes del incidente... todo cambió después de eso.'[roman type]"
preguntagaia3	"[italic type]'Stanis, ¿no te acuerdas de nada, verdad? Se volvió loco, algo le ocurrió... lo cambió. Dijo que tuvo una visión y que una voz le habló en su cápsula.'[roman type][paragraph break]Kim te mira fijamente...[paragraph break][italic type]'Intentó cortarte el cuello. Tuve que meterte yo en la cápsula de emergencia y cerrar tras de mí... Nick no tendría acceso a ninguna sala, ni yo tampoco, la única opción que tenía era dejarlo encerrado en el jardín. No le faltaría de nada allí, pero no tendría ya acceso a la sala de control de la Copérnico 86.'[roman type]"
preguntagaia4	"[italic type]'Ahora tenemos que terminar el proceso de colonización poniendo a salvo a toda la tripulación. ¿Has visto todas esas cápsulas flotando sobre las aguas del océano?'[roman type][paragraph break]Recuerdas haber visto varias cápsulas en la playa.[paragraph break][italic type]'Se pueden reprogramar para dirigirlas a tierra firme y para anticipar la deshibernación y su despertar... porque si no van a estar dormidos más de doscientos años, que es el tiempo estimado para llegar a Gliesse 667Cc. Llegar a este planeta no estaba preparado ni programado. ¡Vamos!'[roman type]"

Table of Kim2 Comments
prompt	response	enabled
"¿Hola?"	hola5	1
"¡Capitana Kim Kimberley!"	saludo2	0
"¡Tengo muchas preguntas para usted, capitana!"	pregunta2	0
"¡Vamos!"	silence2	0
"¿Qué tipo de fauna hay aquí?"	animalitos2	0
"Este parece un buen planeta para vivir, ¿no?"	vistas2	0
"¿Qué pasa?"	dondevas	0
"¡Kim! ¿Están bien?"	pulpillo	0
"¿Kim? ¿Puedes oirme? ¿Estás bien?"	comoestas	0
"¡Vamos!"	vamosvenga	0
"¿Todo bien ahí dentro?"	comoestas2	0
"¿Te encuentras bien?"	ayudaalevantar	0
"Me debes una explicación, ¿qué pasó en la Copérnico 86?"	preguntagaia1	0
"¿Porqué yo estaba en la cápsula de emergencia y no tú?"	preguntagaia2	0
"¿Qué hiciste con el comandante Nick Spotifus?"	preguntagaia3	0
"¿Qué podemos hacer ahora?"	preguntagaia4	0
	
After quipping when the current quip is hola5: enable the saludo2 quip.
After quipping when the current quip is hola5: enable the vistas2 quip.
After quipping when the current quip is animalitos2: enable the silence2 quip.
After quipping when the current quip is silence2: enable the silence2 quip.
After quipping when the current quip is vamosvenga: enable the vamosvenga quip.

After quipping when the current quip is comoestas2: enable the comoestas2 quip.

After quipping when the current quip is ayudaalevantar: 
	enable the preguntagaia1 quip;
	enable the vamosvenga quip.
	
After quipping when the current quip is preguntagaia1: 
	enable the preguntagaia2 quip;
	enable the preguntagaia3 quip.
	
After quipping when the current quip is preguntagaia3: enable the preguntagaia4 quip.

After quipping when the current quip is saludo1: 
	activate Kim2;
	enable the pregunta2 quip.

After quipping when the current quip is vistas2: 
	activate Kim2;
	enable the silence2 quip.

After quipping when the current quip is comoestas: enable the vamosvenga quip.

After quipping when the current quip is dondevas: 
	deactivate Kim2;
	now Kim2 is herida;
	now the kraken is in Playa;
	say "De repente, de las calmadas aguas surge una bestia descomunal...[paragraph break]";
	wait for any key;
	clear the screen;
	say "[paragraph break][italic type]'¡¡Wrooooahhhh!!'[roman type][paragraph break]La enorme bestia surgida de las profundidades del mar parece un pulpo de pesadilla, como el mitológico Kraken, y comienza a golpear las cápsulas de alrededor con sus tentáculos...[paragraph break]";
	wait for any key;
	say "[italic type]'¡¡¡Wraaaaaaaaaooooouuhhhh!!!'[roman type][paragraph break]Uno de los tentáculos alcanza a Kim, que trata inútilmente de zafarse de la presa, otro tentáculo intenta agarrarte, pero hábilmente consigues esquivarlo, al menos por esta vez...[paragraph break]";
	wait for any key;
	disable the hola5 quip;
	disable the saludo2 quip;
	disable the pregunta2 quip;
	disable the silence2 quip;
	disable the animalitos2 quip;
	disable the vistas2 quip;
	enable the pulpillo quip.

Section 5.2 - El Kraken

[Lo puto Kraken nen]
A kraken is nowhere. The kraken is animal. The description is "Un descomunal pulpo gigante, similar al mitológico Kraken, ataca con sus tentáculos a todo lo que tiene al alcance.". Understand "pulpo", "tentaculos", "tentaculo", "bestia", "monstruo", "animal" as the kraken.

Instead of attacking the kraken:
	if the player carries the pistola and the pistola is cargado:
		say "Alzas tu pistola y disparas...[paragraph break]";
		wait for any key;
		say "[italic type]'ZZZAAP!!!'[roman type] Alcanzas a uno de los tentáculos del kraken y éste parece dolerse...[paragraph break]";
		wait for any key;
		now the kraken is nowhere;
		increase the score by 10;
		say "[italic type]'ZZZAAP!!!'[roman type] Continúas disparando al kraken hasta que empieza a alejarse de la orilla...[paragraph break]";
		wait for any key;
		say "[italic type]'ZZZAAP!!!'[roman type] Sigues disparando hasta que la carga del bláster se agota...[paragraph break]";
		now the pistola is descargado;
	else if the player carries the pistola and the pistola is descargado:
		say "Alzas tu pistola para atacar pero te das cuenta demasiado tarde que está descargada...";
		wait for any key;
		say "[italic type]'Wrooooahhhh'[roman type][line break]El kraken te agarra de tu pierna y te sacude por los aires... te golpea sobre las aguas con inusitada fuerza y pierdes el conocimiento...[paragraph break]";
		wait for any key;
		end the story saying "¡Has muerto!";
	otherwise: 
		say "Valientemente comienzas a golpear con todas tus fuerzas uno de sus tentáculos, pero es tremendamente resistente...[paragraph break]";
		wait for any key;
		say "[italic type]'¡¡Wrooooahhhh!!'[roman type][line break]El kraken te agarra de tu pierna y te sacude por los aires... te golpea sobre las aguas con inusitada fuerza y pierdes el conocimiento...[paragraph break]";
		wait for any key;
		end the story saying "¡Has muerto!".
	
Instead of going somewhere when the kraken is in Playa:
		say "Tratas de escapar pero uno de los tentáculos es más rápido...";
		wait for any key;
		say "[italic type]'Wrooooahhhh'[roman type][line break]El kraken te agarra de tu pierna y te sacude por los aires... te golpea sobre las aguas con inusitada fuerza y pierdes el conocimiento...[paragraph break]";
		wait for any key;
		end the story saying "¡Has muerto!".
		
Pelea2 is a scene. Pelea2 begins when the Kraken is in Playa. Pelea2 ends when the time since Pelea2 began is 4 minutes.

Every turn during Pelea2:
		say "[one of][italic type]'¡Wraaaauuhh!'[line break]Un tentáculo te alcanza el pecho, lanzándote por los aires...[roman type][or][italic type]'¡Wroooaaah!'[line break]Consigues esquivar de nuevo otro tentáculo...[roman type][or][italic type]'¡Wraaaaoooh!'[line break]Otro tentáculo consigue derribarte y trata de arrastrarte al mar...[roman type][at random][paragraph break]".

When pelea2 ends:
	if kraken is nowhere:
		say "Al cabo de unos segundos, el kraken se ha escondido bajo las aguas y todo vuelve a la calma.[paragraph break]";
		enable the comoestas quip for Kim2;
	otherwise:
		say "[italic type]'¡¡Wrooooahhhh!!'[roman type][line break]El kraken te agarra de tu pierna y te sacude por los aires... te golpea sobre las aguas con inusitada fuerza y pierdes el conocimiento...[paragraph break]";
		wait for any key;
		end the story saying "¡Has muerto!".
		
Section 5.3 - El prado

[El prado]
Prado is north of Pradera. The description of prado is "[if unvisited]Te diriges hacia el prado, subiendo una cuesta poco pronunciada. [end if]Te encuentras en un bucólico prado, bajo un sol espléndido y rodeado de aire puro. Un tranquilo viento mece suavemente la hierba. El prado discurre serenamente de norte a sur.".

A capsula_kim (f) is in Prado. "Puedes ver una cápsula [if open]abierta[else if closed]cerrada[end if] aquí. [if Kim2 is in capsula_kim]Puedes ver a Kim dentro de la cápsula." 
The description of capsula_kim is "Es una cápsula de hibernación que parece haber sido ocupada muy recientemente. [if open]El cristal está abierto.[otherwise]Ahora está cerrada."  
The capsula_kim is a container, openable, transparent, closed and fixed in place.
The printed name of capsula_kim is "cápsula".
Understand "hibernacion", "capsula" and "capsula de hibernacion" as the capsula_kim.

The cristal6 (m) is part of the capsula_kim. The printed name of the cristal6 is "cristal". Understand "cristal" as the cristal6.
The description of the cristal6 is "El cristal está [if capsula_kim is open]abierto.[otherwise]cerrado.".

Instead of opening or pushing the cristal6, try opening the capsula_kim. 
Instead of closing or pulling the cristal6, try closing the capsula_kim. 

Instead of getting off the capsula_kim, try exiting.
Instead of desbloquearing or pushing the capsula_kim, try opening the capsula_kim.

Before entering the capsula_kim:
	if Kim2 is in location:
		say "Kim dice: [italic type]'Eh Stanis, esa es mi cápsula, ayúdame a meterme dentro, solo así podré recuperarme de las heridas.'[roman type][paragraph break]" instead;
	else if Kim2 is in the capsula_kim:
		say "Kim ya está dentro de su cápsula. No cabemos los dos." instead;
	else if the marsupial is not in location and the location is Cascada:
		say "Cuando te acercas, una de las bestias que moran bajo las aguas del lago te intenta dar una dentellada. Pronto se arremolinan otros peces salvajes alrededor de la cápsula y no puedes acercarte más sin exponerte al peligro." instead;
	otherwise:
		say "Abres el cristal de la cápsula y te introduces en el interior.";
		move the player to the capsula_kim;
		now the capsula_kim is open;
		rule succeeds. 

Instead of pushing or pulling Kim2, try taking Kim2.

Instead of taking or touching or waking Kim2:
	if Kim2 is not carried and Kim2 is not in capsula_kim and Kim2 is herida and the location is not Cascada:
		now all of the things carried by the player are in the location;
		now Kim2 is carried by the player;
		say "Dejas todas tus cosas para poder tener las manos libres y ayudar a Kim. [paragraph break]";
	if Kim2 is in capsula_kim and the capsula_kim is in Cascada and the marsupial is in location:
		now all of the things carried by the player are in the location;
		now Kim2 is in location;
		enable the vamosvenga quip for Kim2;
		activate Kim2;
		now the description of Kim2 is "Parece que Kim se duele de la pierna pero puede caminar.";
		say "Ante la presencia amenazadora del gran marsupial, parece que las criaturas del lago se esconden bajo las aguas y te dejan libre acceso para sacar a Kim de la cápsula.[paragraph break]";
		wait for any key;
		say "Dejas todas tus cosas para poder tener las manos libres y sacar a Kim de la cápsula.[paragraph break]Kim dice: [italic type]'Gracias Stanis, estoy mejor, déjame en el suelo'[roman type][paragraph break]Con cuidado, la dejas apoyarse en el suelo, parece que más o menos puede caminar por sí sola.[paragraph break]";
		increase the score by 10;
		rule succeeds;
	if Kim2 is in capsula_kim and the capsula_kim is in Cascada and the marsupial is not in location:
		disable the vamosvenga quip for Kim2;
		say "Cuando te acercas, una de las bestias que moran bajo las aguas del lago te intenta dar una dentellada. Pronto se arremolinan otros peces salvajes alrededor de la cápsula y no puedes acercarte más sin exponerte al peligro.";
	else if Kim2 is sana:
		say "[italic type]'¡Las manos quietas!'[roman type]";
	else if Kim2 is in capsula_kim and the capsula_kim is in Prado:
		disable the vamosvenga quip for Kim2;
		say "Es mejor dejarla ahí por el momento, tiene que recuperarse.";
	otherwise:
		say "Ya estás cargando con Kim.".

Instead of taking something when the player carries Kim2: say "[italic type]'No puedo cargar con más peso, estoy llevando en brazos a Kim.'[roman type]".
	
After inserting Kim2 into capsula_kim:
	now the description of Kim2 is "Kim está reposando en su cápsula de hibernación.";
	now the capsula_kim is closed;
	enable the comoestas2 quip for Kim2;
	disable the vamosvenga quip for Kim2;
	increase the score by 10;
	say "Con cuidado, metes a Kim en su cápsula de hibernación y cierras el cristal. Esperas que se recupere pronto.".
	
Section 5.4 - La beluga

[La gran ballena beluga]
Beluga is a scene. Beluga begins when Kim2 is in the capsula_kim for the first time. Beluga ends fortunately when the player is in capsula_pradera. Beluga ends sadly when the time since Beluga began is 13 minutes.

Belugadecorado is a backdrop. Belugadecorado is nowhere. The description of Belugadecorado is "Una criatura que escapa a toda dimensión humana, surgida de las profundidades del océano, su enormidad ocupa todo el horizonte, es como si un continente se desplazara, pero te parece ver, en el morro de esa gigantesca masa gris, unos ojos y una forma similar a las de las ballenas beluga de la Tierra.". The printed name of Belugadecorado is "monstruo abisal". Understand "beluga", "ballena", "monstruo", "ojos", "morro", "horizonte", "masa", "bestia", "monstruo abisal", "criatura", "sombra", "enormidad" and "gigante" as the Belugadecorado.

Instead of attacking or pushing or pulling or touching the Belugadecorado, say "¿Cómo vas a enfrentarte a un gigante de ese tamaño? ¡Será mejor ponerse a salvo!".

The contador is a number that varies.
When Beluga begins:
	   now contador is 0.
	
When Beluga ends fortunately:
	increase the score by 10;
	say "Dentro de tu cápsula consigues surcar el maremoto producido por la gigantesca criatura marina al caer sobre el mar... ";
	wait for any key;
	say "[paragraph break]Violentas sacudidas se suceden y temes de nuevo por tu vida, pero la cápsula te protege y tan solo puedes esperar a que las aguas se calmen... ";
	wait for any key;
	say "[paragraph break]Te parece estar cruzando medio océano antes de quedarte parado en algún remoto lugar.";
	wait for any key;
	now the Belugadecorado is nowhere;
	now the capsula_kim is in Cascada;
	enable the ayudaalevantar quip for Kim2;
	disable the comoestas2 quip for Kim2;
	disable the vamosvenga quip for Kim2;
	disable the pulpillo quip for Kim2;
	now the description of capsula_kim is "Puedes ver en la orilla del río la cápsula de hibernación de la capitana Kim. [if open]La cápsula está abierta.[otherwise]La cápsula está cerrada.";
	now the player is in Costa;
	now the capsula_pradera is in Costa.

When Beluga ends sadly:
	   end the story saying "El agua te rodea por todas partes... [paragraph break]El maremoto producido por la gigantesca criatura marina al caer sobre el mar es demasiado poderoso... [paragraph break]Tal vez deberías haberte refugiado de nuevo en tu cápsula...[paragraph break]Solo esperas, mientras te ves arrastrado por la fuerza del agua y te ahogas sin remedio, que Kim y el resto de la tripulación puedan sobrevivir en este bello y peligroso planeta. ";
	wait for any key;
	end the story saying "Has muerto.".

Every turn while Beluga is happening:
	increase contador by 1;
	if contador is 4, move the Belugadecorado to PlanetaGaia;
	if contador is 5, say "De repente, una sombra se proyecta por todo el cielo, como si algo realmente gigantesco estuviera tapando la luz del sol";
	if contador is 6, say "Una enormidad que escapa a toda comprensión de escala humana se yergue por encima del mar, como si un continente entero se elevara sobre las aguas. Te parece adivinar, en el morro de esa gigantesca masa gris, unos ojos y una forma similar a las de las ballenas beluga de la Tierra.";
	if contador is 8, say "La colosal criatura parece estar en lo más alto del cielo, sumiendo en la oscuridad a todo lo que bajo ella existe. ¿Qué va a pasar? ¡Será mejor refugiarse!";
	if contador is 10, say "La inmensa criatura marina comienza a descender y empiezas a comprender la magnitud de la tragedia... el mar parece haberse contraído, lo que parece indicar que pronto va a haber un maremoto...";
	if contador is 11, say "Pierdes de vista a la colosal criatura y en su lugar aparece una gigantesca ola que de nuevo tapa la luz del sol... se aproxima un maremoto mortal, ¡tienes que ponerte a salvo!".	

Section 5.5 - La isla grande

Costa is a room. The description of Costa is "[if unvisited]Lentamente te vas incorporando en tu cápsula y echas un vistazo rápido a lo que te rodea. Observas el bucólico paisaje a tu alrededor... la inmensidad del mar y su playa de aguas cristalinas... sigue siendo una especie de paraíso en la tierra, pero ahora sabes que este planeta alberga terribles monstruos en sus profundas aguas.[paragraph break][end if]Estás en la costa de una tierra extraña, tus pasos te conducen por las arenas de una playa de escasa vegetación, el aroma del mar impregna tus sentidos. Al norte te parece observar algunas pequeñas dunas, donde se adivinan ocasionales palmeras de vivos colores.".

The orilla2 (f) is scenery. The orilla2 is in Costa. The description of orilla2 is "La orilla de la playa discurre infinita hasta donde alcanza tu vista. Sobre las aguas de la playa puedes ver numerosas cápsulas de hibernación.". Understand "playa/mar/aguas/costa/agua" as the orilla2. The printed name of orilla2 is "orilla de la playa".

Instead of nadaring the orilla2, try climbing the orilla2.
Instead of climbing the orilla2, say "Te zambulles en el agua, pero aquí no te sientes muy seguro...".

Instead of tasting the orilla2, try drinking the orilla2.
Instead of drinking the orilla2, say "El agua está salada.".

North of Costa is Dunas. The description of Dunas is "[if unvisited]Alejándote de la costa, continúas caminando por la arena, dejando atrás el mar y sus peligros. [end if]La brisa marina ha formado aquí suaves dunas con la blanca arena, el paisaje se ve salpicado por ocasionales palmeras, que se asemejan a las de la Tierra. Más allá, al este y al oeste, el paisaje se extiende con más dunas y arena. Al norte el terreno se eleva formando un montículo."

East of Dunas is Oasis. The description of Oasis is "[if unvisited]Te diriges hacia un terreno que está prácticamente desierto, excepto por un pequeño oasis. [end if]Las dunas son más suaves aquí y te encuentras rodeado de arena, te reconforta descubrir un remanso de paz al contemplar una gran [bold type]palmera[roman type], rodeada de escasa vegetación, bajo cuya sombra puedes ver un apacible estanque de agua cristalina. Al oeste puedes ver más dunas de blanca arena."

[La palmera y los cocos]
A palmera (f) is in Oasis. The description of the palmera is "Una larga palmera da sombra a un apacible estanque de agua cristalina. En la copa de la palmera puedes ver varios cocos". The palmera is scenery. Understand "arbol", "vegetacion", "sombra" as the palmera.

A estanque (m) is in Oasis. The description of the estanque is "Un apacible estanque de aguas tranquilas y refrescantes.". The estanque is scenery. Understand "agua", "aguas" as the estanque.

Instead of drinking the estanque, say "Bebes un poco del agua del estanque. Es refrescante.  [if Kim2 is in location][line break]Kim bebe contigo y dice: [italic type]'El agua parece ser potable, espero que nos siente bien...'[roman type]".

Some cocos (m) are in Oasis. They are scenery. The description is "La palmera parece que da sus frutos, varios cocos maduros están a punto de caer, quizás podrías acelerar el proceso...". Understand "frutos" and "frutas" as the cocos.

Instead of taking or pulling or pushing or touching or eating the cocos:
	if the coco is in location, try taking the coco;
	otherwise say "No llegas, la palmera es demasiado alta.".

A coco (m) is nowhere. The description of the coco is "Un peludo coco de un pálido color marrón, fruto de las palmeras de esta zona.". The coco is edible. Understand "fruto" and "fruta", "peludo", "marron" as the coco.

Instead of pushing or pulling or taking or waking the palmera:
	if the coco is nowhere:
		now the coco is in location;
		say "Al empujar la palmera uno de los cocos cae sobre las aguas del estanque. [if Kim2 is in location][line break]Kim dice: [italic type]'Bueno, al menos no nos moriremos de hambre aquí...'[roman type]";
	otherwise:
		say "Empujas la palmera pero no consigues hacer caer ningún otro coco.".

Instead of cutting the coco, try eating the coco.
Instead of tasting or smelling the coco, say "Bueno, parece un coco normal.".

Instead of eating the coco:
	if the player carries the cuchillo:
		now the coco is nowhere;
		say "Con ayuda del cuchillo pelas la dura corteza del coco y consigues beber su líquido y comerte la deliciosa pulpa.";
	otherwise:
		say "La corteza del coco es demasido dura, necesitarías algo afilado para cortarla, así no te puedes comer el coco.".

[El marsupial]
A marsupial (m) is in Oasis. The marsupial is a patroller. The marsupial is following. The drive of the marsupial is 70. The marsupial can be amigui or enemigui. The marsupial is enemigui. "[if the marsupial is in Cascada]El marsupial se acerca al agua y las criaturas del lago tratan de esconderse. [end if][if the marsupial is in Oasis and the marsupial is enemigui]Un gran animal que se parece a un [bold type]marsupial[roman type] bebe tranquilamente del agua del estanque.[end if][if the player carries a coco and the ardilla is enemigui]El animal observa con interés el [bold type]coco[roman type] que cargas, pero cuando te acercas se pone en alerta. [else if the marsupial is amigui]El [bold type]marsupial[roman type] te sigue a una prudente distancia. [end if]".
The description of the marsupial is "Un gran animal que parece un marsupial, si no fuera por las garras que atesora sería la bestia más adorable que has visto recientemente. [if the marsupial is amigui]Te sigue a una cierta distancia. ¡Parece que has hecho tu primer amigo en este planeta! [end if][if the marsupial is in Cascada][paragraph break]De repente el animal empieza a chapotear en el agua del lago y trata de cazar a las criaturas acuáticas con sus garras.". Understand "animal/bestia/conejo/garras" as the marsupial. The printed name of the marsupial is "animal que parece un marsupial".

Instead of climbing when the player is in Oasis:
	say "Te agarras a la palmera y comienzas a subir lentamente por ella...";
	wait for any key;
	say "El esfuerzo te lleva un buen rato y parece que estás a punto de desfallecer...";
	wait for any key;
	say "Pero finalmente logras llegar hasta la altura de los cocos y consigues hacer caer uno...";
	wait for any key;
	now the coco is in Oasis;
	rule succeeds.
	
Instead of showing a coco to the marsupial:
	if the marsupial is amigui:
		say "El animal te mira satisfecho, te parece ver una ligera sonrisa de felicidad, pero rechaza el coco. [if Kim2 is in location][line break]Kim dice: [italic type]'¿Lo quieres atiborrar a cocos, Stanis?'[roman type]";
	otherwise:
		say "El animal se aproxima con sus garras como para cogerlo, pero se espera pacientemente a que se lo des.".
		
Instead of giving a coco to the marsupial:
	if the marsupial is amigui:
		say "El animal te mira satisfecho, te parece ver una ligera sonrisa de felicidad, pero rechaza el coco.";
	otherwise:
		now the marsupial is amigui;
		increase the score by 10;
		now the coco is nowhere;
		activate the marsupial;
		say "El marsupial coge el coco con extremada delicadeza de tus manos y se lo come mientras te mira con curiosidad.".

Instead of attacking or pushing or pulling or taking or waking the marsupial, say "No parece un animal peligroso, pero será mejor estar lejos de esas garras.[paragraph break][if the marsupial is enemigui]Tal vez tenga algo de hambre, quizás está aquí porque está esperando a que caiga algo...[paragraph break][end if][if Kim2 is in location]Kim dice: [italic type]'No se te ocurra hacerle daño al conejo gigante, ¡me gusta mucho Stanis!'[roman type][paragraph break]"

Instead of touching the marsupial, say "El marsupial se deja acariciar, su pelo es muy suave. El animal te observa curioso, parece que le gustas. [if Kim2 is in location][line break]Kim dice: [italic type]'Esto es como tener un perro...'[roman type]".

West of Dunas is Arenal. The description of Arenal is "[if unvisited]Tus cansados pasos continúan pisando la arena y hundiéndose en ella. [end if]Hasta donde alcanza tu vista solo puedes ver más y más dunas, que finalmente acaban transformándose en una playa al sur de tu posición. Al este puedes ver alguna que otra palmera."
South of Arenal is Costa.

Section 5.6 - La compuerta para cruzar el río

A compuerta_rota (f) is in Arenal. The description is "Puedes ver un alargado amasijo de metal parcialmente enterrado entre la arena. Lo reconoces enseguida: se trata de los restos de una [bold type]compuerta[roman type] de la nave Copérnico 86.". The compuerta_rota is pushable between rooms. The printed name of compuerta_rota is "compuerta rota". Understand "compuerta", "puerta", "rota" and "metal" as the compuerta_rota.

Instead of taking or pulling or pushing or waking the compuerta_rota:
	if Kim2 is in location:
		say "Kim te ayuda con la compuerta, pero pesa demasiado y la dejáis en el suelo.";
		wait for any key;
		say "Kim dice: [italic type]'Deberíamos empujar la compuerta hacia una dirección, no podemos cargar con ella todo el rato...'[roman type][paragraph break]";
		wait for any key;
	otherwise:
		say "La compuerta pesa demasiado para ti solo.".

Before pushing the compuerta_rota to a direction for the first time:
	increase the score by 10;
	say "[italic type]'¡Pesa muchísimo, pero podremos con ella!'[roman type][paragraph break]";
	wait for any key.
	
Instead of pushing the compuerta_rota to a direction:
	if compuerta_rota is in Rio, say "Kim dice: [italic type]'Espera, podríamos usar la compuerta a modo de barca para cruzar el río.[roman type]" instead;
	if compuerta_rota is in Montana, say "Kim dice: [italic type]'Espera, podríamos usar la compuerta a modo de barca para cruzar el río.[roman type]" instead;
	if Kim2 is in location:
		say "Kim te ayuda con la compuerta y entre los dos sois capaces de empujarla...";
		now the description of the compuerta_rota is "Una larga y pesada compuerta de metal. Está destrozada, pero por su forma estás seguro de que se trata de una compuerta de la nave Copérnico 86.";
		wait for any key;
		continue the action;
	otherwise:
		say "La compuerta pesa demasiado para ti solo.".
		
North of Dunas is Monticulo. The description of Monticulo is "[if unvisited]Poco a poco vas dejando atrás la arena mientras avanzas por una suave pendiente que finalmente te conduce a lo alto de un montículo. [end if]Desde lo alto de este terreno divisas, hacia el norte, un caudaloso río que discurre en las faldas de una boscosa montaña, en la que te parece ver un punto brillante. Al sur, contemplas las suaves dunas de blanca arena.". The printed name of Monticulo is "Montículo".

a riodecorado (f) is in Monticulo. The description of riodecorado is "El agua del caudaloso río discurre de este a oeste, al otro lado está la orilla de la montaña, donde puedes ver un frondoso bosque, más arriba ves algo de humo.". Understand "orilla", "aguas", "roca", "orilla", "bosque", "agua", "montana", "rio" as the riodecorado. The printed name of ribera is "ribera del río". The riodecorado is scenery.

Punto brillante (m) is in Monticulo. The description of punto brillante is "No estás seguro, pero dirías que es el reflejo de algo metálico, no lo puedes ver bien desde aquí... tendrás que acercarte más a la montaña.". Understand "restos", "nave", "copernico", "copernico 86", "humo", "hilo", "punto", "brillo" as the punto brillante. The printed name of punto brillante is "restos de la Copérnico 86". The punto brillante is scenery.

North of Monticulo is Rio. The description of Rio is "[if unvisited]Bajas por la suave pendiente del montículo y compruebas que cada vez hay más vegetación y el clima se torna más húmedo. [end if]Te encuentras en la ribera de un caudaloso río, que discurre de este a oeste en las faldas de una montaña que se yergue al norte, tras la orilla opuesta, donde puedes ver un hilo de humo a lo lejos. Al sur puedes ver un pequeño montículo.".

a ribera (f) is in Rio. The description of ribera is "El agua del caudaloso río discurre de este a oeste, al otro lado está la orilla de la montaña, donde puedes ver un frondoso bosque, más arriba ves algo de humo.". Understand "orilla", "aguas", "roca", "orilla", "bosque", "agua", "montana", "rio" as the ribera. The printed name of ribera is "ribera del río". The ribera is scenery.

Instead of drinking the ribera, say "Bebes un poco del agua del río. Es refrescante. [if Kim2 is in location][line break]Kim dice: [italic type]'Bueno, al menos no nos moriremos de sed aquí...'[roman type]".

Instead of nadaring the ribera, try climbing the ribera.

Instead of climbing the ribera, say "Es demasiado largo el trecho que tienes que nadar para llegar hasta la otra orilla, sus aguas parecen demasiado profundas... necesitas pensar en otra solución para cruzar el río.".

Copernicodeco1 (f) is in Rio. The description of Copernicodeco1 is "Te parece ver, a lo lejos en la montaña, el sinuoso humo que parece provenir de unos restos metálicos que podrían ser los de la Copérnico 86.". Understand "restos", "nave", "copernico", "copernico 86", "humo", "hilo" as the Copernicodeco1. The printed name of Copernicodeco1 is "restos de la Copérnico 86". The Copernicodeco1 is scenery.

[Voy cruzando el ríooo...]
Instead of going up when the player is in Rio, try going north.
Instead of going up when the player is in Montana, try going south.

Before going north when the player is in Montana for the first time:
	increase the score by 10.

Instead of mounting the compuerta_rota, try entering the compuerta_rota.
Instead of going up when the compuerta_rota is visible, try entering the compuerta_rota.

Instead of entering the compuerta_rota:
	if location is Rio:
		say "Os subís a la compuerta y comprobáis que flota razonablemente bien sobre las aguas del río...";
		wait for any key;
		now the compuerta_rota is in Montana;
		now the description of the compuerta_rota is "Una larga y pesada compuerta de metal flota en la orilla del río.";
		now the player is in Montana; 
	else if location is Montana:
		say "Os subís a la compuerta y comprobáis que flota razonablemente bien sobre las aguas del río...";
		wait for any key;
		now the compuerta_rota is in Rio;
		now the description of the compuerta_rota is "Una larga y pesada compuerta de metal flota en la orilla del río.";
		now the player is in Rio; 
	otherwise:
		say "Podría ser útil hacer esto, pero tengo que lograr llevar la compuerta al lugar adecuado...".

Instead of going north when the player is in Rio:
	if the compuerta_rota is in location:
		say "Os subís a la compuerta y comprobáis que flota razonablemente bien sobre las aguas del río...";
		wait for any key;
		now the compuerta_rota is in Montana;
		now the description of the compuerta_rota is "Una larga y pesada compuerta de metal flota en la orilla del río.";
		continue the action;
	otherwise:
		say "El río es demasiado caudaloso como para cruzarlo así sin más, podría llevarme la corriente.".

Instead of going south when the player is in Montana:
	if the compuerta_rota is in location:
		say "Os subís a la compuerta y comprobáis que flota razonablemente bien sobre las aguas del río...";
		wait for any key;
		now the compuerta_rota is in Rio;
		now the description of the compuerta_rota is "Una larga y pesada compuerta de metal flota en la orilla del río.";
		continue the action;
	otherwise:
		say "El río es demasiado caudaloso como para cruzarlo así sin más, podría llevarme la corriente.".
		
East of Rio is Riachuelo. The description of Riachuelo is "[if unvisited]Sigues caminando por la ribera del río. [end if]Avanzando por esta dirección compruebas que el río se va estrechando hasta convertirse en un riachuelo. Sin embargo, en la orilla opuesta se alza una mohosa pared de roca natural que te impide el acceso al bosque montañoso. Puedes volver tras tus pasos hacia el oeste. Al sur puedes ver un pequeño montículo.".
South of Riachuelo is Monticulo.


Pared mohosa (f) is in Riachuelo. The description of Pared is "La pared parece haber sufrido el paso del tiempo y de las aguas del lugar, está mohosa y es impracticable. No vas a poder cruzar la orilla y escalar esta pared, si es lo que estás pensando...". Understand "orilla", "moho", "roca", "bosque", "natural", "agua", "pared" as the Pared mohosa. The printed name of Pared mohosa is "pared mohosa". The Pared mohosa is scenery.

Instead of drinking the pared mohosa, say "Bebes un poco del agua del riachuelo. Es refrescante. [if Kim2 is in location][line break]Kim dice: [italic type]'Bueno, al menos no nos moriremos de sed aquí...'[roman type]".

Instead of climbing the pared mohosa, say "Imposible, ¡está muy resbaladiza!".

Instead of nadaring the pared mohosa, say "Te pegas un chapuzón, pero no vas a llegar al bosque así, la pared mohosa es un obstáculo insalvable...".

Section 5.7 - Una vez cruzado el río

West of Rio is Cascada. The description of Cascada is "[if unvisited]Sigues caminando por la ribera del río hasta que empizas a escuchar un fuerte torrente de agua. Avanzas un poco más y tras un recodo ves una impresionante cascada. [end if]El agua cae con fuerza desde una altura considerable en una espectacular cascada, formando un pequeño lago donde se adivinan curiosas formas bajo las aguas. Puedes volver tras tus pasos hacia el este. Al sur puedes ver un pequeño montículo."
South of Cascada is Monticulo.

Cascadadeco (f) is in Cascada. The description of Cascadadeco is "El agua de la cascada cae con fuerza desde una altura considerable, formando un pequeño lago donde se adivinan curiosas formas bajo las aguas.". Understand "cascada", "agua", "lago", "aguas", "altura", "rio" as the Cascadadeco. The printed name of Cascadadeco is "cascada". The Cascadadeco is scenery.

Instead of nadaring the Cascadadeco, try climbing the Cascadadeco.

Instead of climbing the Cascadadeco, say "Imposible, ¡estas aguas parecen muy profundas y llenas de peligros!".

Instead of drinking the cascadadeco:
	if the marsupial is in location:
		say "Bebes un poco del agua de la orilla del lago. Es refrescante.  [if Kim2 is in location][line break]Kim dice: [italic type]'¿Estás seguro de que este agua es potable, Stanis?'[roman type]";
	otherwise:
		say "¿Con esas bestias nadando por ahí? Mejor no...".

Some formas (f) are in Cascada. The description of formas is "Cuando te acercas a mirar te parece ver que bajo las aguas hay una extraña fauna, unas criaturas acuáticas que parecen ser el cruce de un siluro con un calamar.". Understand "siluro", "calamar", "criaturas", "bestia", "bestias", "fauna" as the formas. The printed name of formas is "fauna acuática". The formas is scenery.

Instead of opening or closing or taking or pulling or pushing or touching the capsula_kim:
	if the location is Cascada and the marsupial is not in location:
		say "Cuando te acercas, una de las bestias que moran bajo las aguas del lago te intenta dar una dentellada. Pronto se arremolinan otros peces salvajes alrededor de la cápsula y no puedes acercarte más sin exponerte al peligro.";
	otherwise:
		continue the action.
		
Instead of taking or pulling or pushing or touching or kissing or waking Kim2:
	if the location is Cascada and the marsupial is not in location:
		say "Cuando te acercas, una de las bestias que moran bajo las aguas del lago te intenta dar una dentellada. Pronto se arremolinan otros peces salvajes alrededor de la cápsula y no puedes acercarte más sin exponerte al peligro.";
	otherwise:
		continue the action.
		
Instead of talking to Kim2:
	if the location is Cascada and the marsupial is not in location:
		say "Cuando te acercas, una de las bestias que moran bajo las aguas del lago te intenta dar una dentellada. Pronto se arremolinan otros peces salvajes alrededor de la cápsula y no puedes acercarte más sin exponerte al peligro.";
	otherwise:
		continue the action.

Instead of attacking or touching or pushing or pulling the formas:
	if the player carries the pistola and the pistola is cargado:
		say "Disparas con tu pistola blaster a las bestias, pero son demasiadas y se esconden hábilmente bajo las aguas. No pareces ser una amenaza suficiente para ellas.";
	if the marsupial is in location:
		say "Las criaturas no te temen, pero rápidamente se esconden cuando ven asomarse al marsupial, que rápidamente alarga una de sus patas y engancha con sus garras a uno de los peces y se lo zampa de un bocado.";
	otherwise:
		say "Será mejor no acercarse demasiado a estas aguas, esas bestias parecen peligrosas...".

North of Rio is Montana. The description of Montana is "[if unvisited]Dejando atrás las aguas del caudaloso río, llegas hasta la otra orilla, donde la vegetación comienza a ser más tupida. [end if]Te encuentras en las faldas de una montaña boscosa, de la que surgen algunos enigmáticos sonidos de animales desconocidos para tí. Hacia el norte un serpenteante sendero te conduce hacia lo que queda de la Copérnico 86. Al sur se encuentra la ribera opuesta del río.". The printed name of Montana is "Montaña".

Copernicodeco2 is in Montana. The description of Copernicodeco2 is "Desde aquí puedes ver, hacia el norte, los restos de la nave Copérnico 86.". Understand "restos", "nave", "copernico", "copernico 86", "humo", "hilo" as the Copernicodeco2. The printed name of Copernicodeco2 is "restos de la Copérnico 86". The Copernicodeco2 is scenery.

North of Montana is Cumbre. The description of Cumbre is "[if unvisited]Subes por el sinuoso sendero que conduce a la cima de la montaña, apartando la densa vegetación que crece salvaje a tu paso. [end if]En la cumbre de la montaña puedes ver, mirando a tu alrededor, que el terreno en el que te encuentras es una gran isla, y que más allá hay repartidas por el  océano lo que parecen ser otras islas. Un serpenteante sendero conduce al sur a la base de la montaña.".

A isla (f) is in Cumbre. The description of isla is "Te encuentras en la cumbre de la montaña principal de esta isla. Desde la cima divisas numerosas islas allá a lo lejos, en el océano. Un sinuoso sendero discurre hacia el sur.". Understand "vegetacion", "terreno", "cima", "cumbre", "sendero" as the isla. The isla is scenery.

Some islas (f) are in Cumbre. The description of islas is "Numerosas islas salpican las aguas del inmenso océano, aunque no estás tan seguro de que todas las formas sean islas... algunas parecen moverse lentamente.". Understand "formas", "oceano", "agua", "mar", "aguas" as the islas. The islas is scenery.

[Copérnico 86 en Gaia]
Copernico destruida (f) is inside of Cumbre. The description of Copernico destruida is "Te encuentras en la sala de control de cápsulas, puedes ver el [bold type]ordenador[roman type] central echando humo y no parece estar funcionando. Afuera está la cumbre.". The printed name of Copernico destruida is "Restos de la Copérnico 86"

Some restos2 (m) are in the Cumbre. "Aquí están los humeantes restos de la Copérnico 86." The description of the restos2 is "Examinas los restos que tienes delante y compruebas que se tratan de partes del sistema de cápsulas. Te parece adivinar la sala de control, tras un enorme boquete donde debería estar la compuerta de entrada.". Understand "restos", "compuerta", "nave", "copernico", "boquete", "sistema", "capsulas", "partes" as the restos2. They are fixed in place.

Instead of taking or pushing or touching or pulling the restos2, say "No parece que haya nada aquí que valga la pena recuperar, pero quizás sí que podrías entrar por el boquete y tratar de reparar el sistema.".

Instead of entering the restos2, try going inside.

The ordenador_roto2 (m) is in Copernico destruida. It is scenery. "Un complejo ordenador vigila que las constantes vitales de las personas que duermen en las cápsulas se mantengan estables. Su [bold type]pantalla[roman type] está a oscuras. También puedes ver un [bold type]teclado[roman type] y una [bold type]ranura[roman type] para tarjetas.". Understand "ordenador", "constantes" as the ordenador_roto2.

A pantalla_rota2 (f), a ranura_rota2 (f), a teclado_roto2 (m) are part of the ordenador_roto2. The ranura_rota2 is a container. Instead of inserting something which is not a tarjeta maestra into a ranura_rota2, say "Solo se puede insertar una tarjeta maestra.". Understand "pantalla", "monitor" as the pantalla_rota2. Understand "ranura" as the ranura_rota2. Understand "teclado" as the teclado_roto2. 

The printed name of ranura_rota2 is "ranura". The printed name of teclado_roto2 is "teclado". The printed name of pantalla_rota2 is "pantalla". The printed name of ordenador_roto2 is "ordenador roto".  

The description of teclado_roto2 is "Estás seguro que el teclado está desbloqueado porque Kim está intentado acceder al menú de control, pero la pantalla está en negro". Understand "reset", "boton", "teclas", "tecla", "bloqueo", "amarillo" and "boton amarillo" as the teclado_roto2.
	
The description of pantalla_rota2 is "La pantalla está en negro. [paragraph break]Kim dice:[italic type]'¡Todo está estropeado! ¡Esto solo se puede reparar con un decodificador CV23!'[roman type]".

Instead of desbloquearing the teclado_roto2, try desbloquearing the pantalla_rota2.
Instead of desbloquearing the ranura_rota2, try desbloquearing the pantalla_rota2.
Instead of desbloquearing the ordenador_roto2, try desbloquearing the pantalla_rota2.

Instead of desbloquearing the pantalla_rota2:
	if the player carries the decodificador and the decodificador is cargado:
		say "[fixed letter spacing]'DECODIFICANDO SISTEMA...'[line break][variable letter spacing]";
		wait for any key;
		say "[fixed letter spacing]'FALLO GENERAL DEL SISTEMA. REPARACIÓN MANUAL REQUERIDA EN NDR45S BAJO XXNEK21...'[paragraph break][variable letter spacing]"; 
		wait for any key;
		say "[roman type]Kim dice: [italic type]'Vale, creo que sé como arreglar eso, ¡además de capitana soy ingeniera aeroespacial! Dame el decodificador...'[roman type][paragraph break]";
	if the player carries the decodificador and the decodificador is cargado:
		say "¡Maldición! El decodificador está descargado...[paragraph break]";
	otherwise:
		say "No sabes ni por dónde empezar...[line break]Kim dice: [italic type]'Este estropicio solo lo arregla un decodificador CV23...'[roman type][paragraph break]".

[Dar cosas a la capitana]
Instead of giving something to Kim2:
	if the noun is a pistola:
		say "'[italic type]¿No te atreves a disparar tú mismo, Stanis?'[roman type][line break]";
	else if the noun is the decodificador:
		now the decodificador is carried by Kim2;
		say "'[italic type]¡Esto será muy útil, Stanis!'[roman type][line break]Kim coge [the noun].[line break]";
	otherwise:
		say "'[italic type]No necesito [the noun] ahora mismo, Stanis.'[roman type][line break]".

[Romper la nave es mala idea, Stanis]
Instead of pushing or pulling the teclado_roto2, try pushing the pantalla_rota2.
Instead of pushing or pulling the ranura_rota2, try pushing the pantalla_rota2.
Instead of pushing or pulling the ordenador_roto2, try pushing the pantalla_rota2.
Instead of pushing or pulling the pantalla_rota2, say "'[italic type]¡Mmmmpfh!...[roman type][line break]Kim dice: [italic type]'¿Pero qué estás haciendo? ¡Cuidado, el sistema está muy inestable y puede explotar!'[roman type]".

Instead of attacking the teclado_roto2, try attacking the pantalla_rota2.
Instead of attacking the ranura_rota2, try attacking the pantalla_rota2.
Instead of attacking the ordenador_roto2, try attacking the pantalla_rota2.
Instead of attacking the pantalla_rota2 for the first time, say "Kim grita: [italic type]'¡No hagas eso Stanislav! ¡Cuidado! ¡El sistema podría explotar!'[roman type]".
Instead of attacking the pantalla_rota:
		say "¡Crash! Fzzzzzz...";
		wait for any key;
		say "Kim dice: [italic type]'¡Te he dicho que tuvieras cuidado! ¡Oh! ¡Oh no!'[roman type]";
		wait for any key;
		say "Una fuerte explosión resuena en la cumbre de la montaña... voláis por los aires y lo último que ves es el intenso azul del mar del planeta Gaia, tan bello y extraño, antes de caer a plomo sobre las duras rocas de la montaña...";
		wait for any key;
		end the story saying "Has muerto.".

Every turn when Kim2 is in Copernico destruida and the player can see Kim2:
	if the player carries the decodificador:
		say "Kim dice: [line break][italic type]'¡Dame eso que llevas!'[roman type][line break]";
	else if Kim2 carries the decodificador:
		increase the score by 10;
		say "Sin más dilación, Kim coge el decodificador y le propina varios golpes hasta que consigue activar un módulo de reparación que desconocías.[paragraph break]Rápidamente empieza a reparar los sistemas de la nave...[paragraph break]";
		wait for any key;
		say "Al cabo de lo que te parece una eternidad de tiempo, los sistemas se vuelven a poner en funcionamiento y Kim grita de júbilo...[paragraph break]";
		wait for any key;
		say "[italic type]'¡Vamos a conseguirlo, Stanis! ¡Vamos a salvar a toda la tripulación! ¡Vamos a colonizar el planeta!'[roman type][paragraph break]";
		wait for any key;
		clear the screen;
		center "[paragraph break][paragraph break][fixed letter spacing]EPÍLOGO[variable letter spacing][paragraph break][paragraph break]";
		say "Kim finalmente reprogramó todo el sistema de cápsulas para que aquellas que estuvieran aún flotando sobre las aguas del oceánico planeta Gaia se dirigieran a tierra firme.[paragraph break]";
		wait for any key;
		say "Cuando todas estuvieron a salvo, procedió a cancelar la hipotermia inducida y liberar a la tripulación de la hibernación, y les envió un mensaje a todos...[paragraph break]";
		wait for any key;
		say "[italic type]'¡Tripulación de la Copérnico 86, estamos a salvo!'[paragraph break]'Gracias a la pericia del doctor Stanislav Odengar hemos podido corregir el rumbo de la nave, que nos enviaba a la muerte, y desviarnos hasta uno de los planetas del sistema Trappist: Gaia, que será nuestro nuevo hogar.'[paragraph break]'¡Bienvenidos a casa!'[roman type][line break]";
		wait for any key;
		end the story finally;
	otherwise:
		say "Kim dice: [italic type]'¡Tenemos que repararlo todo!'[roman type][line break]".

Part 6 - Releases y demás hierbas

[Ayuda]

Table of Basic Help Options (continued)
title	subtable	description 
"Pistas"	Table of Hints	-- 
"Opciones"	--	"[line break]Además de los verbos básicos, tienes las siguientes opciones:[paragraph break][bold type]REINICIAR[roman type] - Para volver a comenzar la partida.[line break][bold type]UNDO[roman type] - Para deshacer el último turno.[line break][bold type]GUARDAR[roman type] - Para grabar tu posición.[line break][bold type]CARGAR[roman type] - Para recuperar una posición guardada.[line break][bold type]INVENTARIO[roman type] - Para mostrar los objetos que llevas.[line break][bold type]SALIDAS[roman type] - Para mostrar las salidas visibles.[line break][bold type]PUNTOS[roman type] - Para mostrar tu actual puntuación.[line break][bold type]TRANSCRIPT[roman type] - Para transcribir el juego en un archivo de texto.[line break][bold type]DIALECTO SUDAMERICANO[roman type] - Para adecuar verbos al español de América.[line break][bold type]DIALECTO CASTELLANO[roman type] - Para adecuar verbos al español de España.[line break][bold type]FIN[roman type] - Para terminar la partida.[line break]"
"Contactar con el autor"	--	"¿Te has atascado? Puedes contactar conmigo escribiéndome un mensaje a mi cuenta de Twitter o Instagram: @XCarrascosa. Puedes pedir ayuda en los foros del CAAD (www.caad.es). También me puedes dejar un mensaje a través del formulario de contacto de mi web: www.xaviercarrascosa.com" 

Table of Hints
title	subtable	description	toggle 
"¿Qué tengo que hacer en la nave Copérnico 86?"	Table of Copernicoayuda1 Hints	""	hint toggle rule 
"¡No consigo iniciar la evacuación!"	Table of Copernicoayuda2 Hints	""	hint toggle rule 
"¡Siempre muero injustamente en la nave!"	Table of Copernicoayuda3 Hints	""	hint toggle rule 
"Dime algo sobre Gaia..."	Table of Gaiaayuda Hints	""	hint toggle rule 
"Dime algo sobre Limbo..."	Table of Limboayuda Hints	""	hint toggle rule 
"Cuéntame algo sobre Hades..."	Table of Hadesayuda Hints	""	hint toggle rule 


Table of Copernicoayuda1 Hints
hint	used 
"¿Has despertado ya? Tal vez quieras salir de la cápsula de emergencia..."	a number
"¿No consigues salir de la cápsula? ¡Tal vez tengas que abrir el cristal!" 
"No puedes abrir la puerta... ¿te falta una tarjeta maestra? ¿Has buscado bien?"
"El robot puede darte pistas útiles. El holograma también, examínalo a fondo..."
"El holograma te indica el nombre del sistema y los planetas disponibles para evacuación..."

Table of Copernicoayuda2 Hints
hint	used 
"¿Has llegado a la sala de control? Verás que hay un ordenador, su pantalla y una ranura."	a number
"En la ranura puedes insertar una tarjeta maestra, hazlo." 
"Puedes ver las opciones en la pantalla... ¿las has consultado?"
"Consulta las opciones y logra encontrar unas coordenadas para iniciar la evacuación."
"¡Ya tengo unas coordenadas! Ahá, pues tecléalas, eso se tiene que hacer de forma manual..."
"¿No funciona el teclado? Quizás tengas que reiniciarlo, ya sabes, necesitas algo punzante para pulsar el botón de reset."
"Encontrarás un cuchillo si examinas el cadáver que hay en el gran jardín de especies. Úsalo."
"Una vez ya tengas las coordenadas tecleadas, podrás meterte en tu cápsula en el sistema de cápsulas."
"¿No has encontrado tu cápsula en el sistema de cápsulas? Examina bien."
"Una vez dentro de la cápsula, lee bien la descripción y encontrarás la solución para la evacuación."

Table of Copernicoayuda3 Hints
hint	used 
"¿En serio? Vaya, ¡no todos los tripulantes de la Copérnico 86 vienen llorados de casa! Veamos..."	a number
"Una vez que abres la compuerta que da acceso al jardín, se desencadena el infierno. No antes." 
"Puedes examinar y probar todo tipo de cosas antes de abrir esa puerta. Después, el tiempo corre."
"Para que el fuego no te consuma, debes cerrar la compuerta del jardín."
"Para cerrar la compuerta del jardín, asegúrate de que has examinado bien todo."
"Específicamente, examina el cadáver. Descubrirás un cuchillo. Cógelo."
"¿Ya has pasado toda esto y mueres injustamente justo cuando estabas a punto de conseguirlo?"
"Debes actuar rápido, pero con cabeza: cierra todas las compuertas antes de iniciar la evacuación."
"¿Todas las compuertas estaban cerradas? Bueno, ¿te has asegurado de que el robot no las abre?"
"El robot puedes repararlo con el decodificador, así lo conseguirás parar."
"Cierra también el cristal de tu cápsula antes de iniciar la evacuación."

Table of Gaiaayuda Hints
hint	used 
"Pues es un planeta muy bonito, deberías visitarlo alguna vez..."	a number
"Deberías visitar sus playas, son preciosas. Pero mejor si vas armado con una pistola blaster." 
"¿Un maremoto? ¡Pues habrá que meterse en la cápsula para refugiarse!"
"En las dunas puede haber de todo, ¿te has fijado en que hay una palmera llena de cocos?"
"¡Si empujas o mueves la palmera quizás consigas hacer caer algún coco!"
"¿Te lo vas a comer? Igual puedes compartirlo..."
"¿Te han contado alguna vez lo mucho que odian las criaturas del río a los marsupiales?"
"No puedes llegar al otro lado del río, ni siquiera nadando, ¿verdad? Tendrás que encontrar algún tipo de soporte para cruzarlo..."
"¿Has encontrado una compuerta rota por ahí? Quizás puedas empujarla..."
"No puedes empujar la compuerta hacia ningún punto cardinal porque tú solo no puedes. Solo no puedes, con amigos sí."
"Yo creo que ya te he hablado bastante del planeta Gaia. Asegúrate de que llevas un decodificador, ¡esos cacharros siempre son útiles!"

Table of Limboayuda Hints
hint	used 
"Es un planeta extraño, pero bien merece una escapada..."	a number
"¿Has visto que hay un bicho revoloteando por el sendero?"
"Pues le encantan los frutos que hay en algunos árboles..."
"¡Cuidado! No le vayas a dar todos a la vez, déjalos de uno a uno en el camino."
"Si al bicho le encantan los frutos, ¿qué le gustará a la bestia del pantano?"
"¿Te has quedado sin frutos? La verdad es que es frustrante... ¡tira lo que sea por el precipicio para desahogarte!" 
"¿No te puedes montar a la bestia? Dale algo que le guste y se hará tu amiga."
"Si te has montado ya encima de la bestia, te habrás dado cuenta de que ahora estás más alto..."
"Yo creo que ya te he hablado bastante del planeta Limbo. Asegúrate de que llevas un decodificador, ¡esos cacharros siempre son útiles!"


Table of Hadesayuda Hints
hint	used 
"Yo no viajaría allí ni loco, a no ser que quisiera convertirme en una leyenda..."	a number
"Ojo, no vayas a salir a pleno sol. Te vas a chamuscar."
"Ojo, no vayas a quedarte fuera de la cápsula cuando amanezca. También te vas a chamuscar."
"¿No tendrás un cuchillo para cortar esas plantas? Sin eso, mejor será tomar el sol y acabar con la agonía..."
"¿Es injusto? Sí, pero no era yo el que quería convertirse en leyenda..."
"También vas a necesitar un decodificador para reparar el robot."
"El robot, como siempre, es de una ayuda inestimable, verdad?"
"¿Te has fijado que hay muchas rocas por la ladera del volcán? Has probado a empujarlas o moverlas?"
"Mueve una roca hacia el sur y lo que surja."
"Yo me rendiría, pero tú no, ¿eh? Tú tienes que seguir ahí con tu roca y tus plantas. ¡Estás loco DE ATAR!" 
"Yo creo que ya te he hablado bastante del planeta Hades. Asegúrate de que llevas un arma, ¡nunca sabes qué te puedes encontrar bajo la gran grieta!"


[Releasing]
Release along with the source text, a cover art ("Copérnico 86"), a website and the "Quixe" interpreter. 


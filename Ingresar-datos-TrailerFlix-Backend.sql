-- Insertar en categorias, generos y actores.
-- Insertar en contenidos.
-- Insertar en contenido_generos y contenido_actores.

USE trailerflix;

-- Insertar categorías
INSERT INTO categorias (nombre) VALUES 
('Serie'),('Película')
ON DUPLICATE KEY UPDATE id=id;  -- Ignorar si ya existe


-- Insertar géneros
INSERT INTO generos (nombre) VALUES 
('Ciencia Ficción'),('Drama'),('Ficción'),('Acción'),('Sci-Fi'),('Suspenso'),('Fantasía'),('Terror'),('Comedia'),
('Futurista'),('Familia'),('Western'),('Aventura'),('Misterio'),('Suceso Real'),('Crimen'),('Tecnologia'),
('Historia'),('Intriga'),('¿Ficción?'),('Romance'),('Música'),('Musical'),('Sucesos'),('Animación')
ON DUPLICATE KEY UPDATE id=id;  -- Ignorar si ya existe

INSERT INTO contenidos (titulo, poster, duracion, id_categoria, trailer, temporadas, resumen, gen) VALUES
('The Mandalorian', './posters/3.jpg', 0, 1, 'https://www.youtube.com/embed/aOC8E8z_ifw', '2', 'Ambientada tras la caída del Imperio y antes de la aparición de la Primera Orden, la Serie sigue los pasos de un pistolero solitario en las aventuras que protagoniza en los confines de la galaxia, donde no alcanza la autoridad de la Nueva República.','Ciencia Ficción'),
('The Umbrella Academy', './posters/4.jpg', 0, 1, 'https://www.youtube.com/embed/KHucKOK-Vik', '1', 'La muerte de su padre reúne a unos hermanos distanciados y con extraordinarios poderes que descubren impactantes secretos y una amenaza que se cierne sobre la humanidad.','Ciencia Ficción'),
('Gambito de Dama','./posters/5.jpg', 0, 1, 'https://www.youtube.com/embed/lbleRbyGKL4', '1', 'En los cincuenta, una joven de un orfanato descubre que tiene un increíble don para el ajedrez y recorre el arduo camino a la fama mientras lucha contra las adicciones.','Drama'),
('Riverdale', './posters/2.jpg', 0, 1, 'https://www.youtube.com/embed/HxtLlByaYTc', '5', 'El paso a la edad adulta incluye sexo, romance, escuela y familia. Para Archie y sus amigos, también hay misterios oscuros.','Drama'),
('The Crown', './posters/1.jpg', 0, 1, 'https://www.youtube.com/embed/JWtnJjn6ng0', '4', 'Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.', 'Suceso Real'),
('Enola Holmes', './posters/6.jpg', 97 , 2, 'https://www.youtube.com/embed/3t1g2pa355k', NULL, 'La hermana menor de Sherlock, descubre que su madre ha desaparecido...', 'Drama'),
('Guasón', './posters/7.jpg', 97, 2, 'https://www.youtube.com/embed/zAGVQLHvwOY', NULL, 'Arthur Fleck (Phoenix) es un hombre ignorado por la sociedad...','Suspenso'),
('Avengers: End Game', './posters/8.jpg', 97, 2, 'https://www.youtube.com/embed/TcMBFSGVi1c', NULL, 'Después de los devastadores eventos de los Vengadores: Infinity War...', 'Ciencia Ficción'),
('Juego de tronos', './posters/9.jpg', 0, 1, 'https://www.youtube.com/embed/KPLWWIOCOOQ', '8', 'En un mundo fantástico y en un contexto medieval varias familias...', 'Fantasía'),
('The Flash', './posters/10.jpg', 0, 1, 'https://www.youtube.com/embed/Yj0l7iGKh8g', '6', 'Sigue las veloces aventuras de Barry Allen, un joven común y corriente...', 'Ciencia Ficción'),
('The Big Bang Theory', './posters/11.jpg', 0, 1, 'https://www.youtube.com/embed/WBb3fojgW0Q', '12', 'Leonard y Sheldon son dos físicos que comparten trabajo y apartamento. La Serie comienza con la mudanza de Penny, su nueva y atractiva vecina...', 'Comedia'),
('Friends',  './posters/12.jpg', 0, 1, 'https://www.youtube.com/embed/ekYGfU0XIx0', '10', "'Friends' narra las aventuras y desventuras de seis jóvenes de Nueva York: Rachel, Monica, Phoebe, Ross, Chandler y Joey...", 'Comedia'),
('Anne with an E', './posters/13.jpg', 0, 1, 'https://www.youtube.com/embed/M4T-_aB8smU', '2', 'Anne Shirley es una niña huérfana que vive en un pequeño pueblo llamado Avonlea que pertenece a la Isla del Príncipe Eduardo...','Familia'),
('Expedientes Secretos "X"','./posters/14.jpg', 0, 1, 'https://www.youtube.com/embed/KKziOmsJxzE', '11', 'Fox Mulder y Dana Scully son dos investigadores del FBI que investigan casos sin resolución ni explicación...', 'Ciencia Ficción'),
('Chernobyl','./posters/15.jpg', 0, 1, 'https://www.youtube.com/embed/s9APLXM9Ei8', '1', 'Sigue «la verdadera historia de una de las peores catástrofes provocadas por el hombre y habla de los valientes hombres y mujeres que se sacrificaron...', 'Suceso Real'),
('Westworld',  './posters/16.jpg', 0, 1, 'https://www.youtube.com/embed/qLFBcdd6Qw0', '3', "'Westworld' es una oscura odisea acerca del amanecer de la conciencia artificial y la evolución del pecado...", 'Ciencia Ficción'),
('Halt and Catch Fire', './posters/17.jpg', 0, 1, 'https://www.youtube.com/embed/pWrioRji60A', '4', 'Situada en los inicios de la década de 1980, un visionario ficticio, un ingeniero electrónico y una prodigiosa ingeniera...', 'Drama'),
('Ava','./posters/18.jpg', 97, 2, 'https://www.youtube.com/embed/eLEwNo78f0k', NULL, 'Ava es una mortífera asesina a sueldo que trabaja para una organización de operaciones encubiertas...', 'Acción'),
('Aves de presa (Harley Quinn)','./posters/19.jpg', 97, 2, 'https://www.youtube.com/embed/saUmnenKbBM', NULL, 'Después de separarse de Joker, Harley Quinn y otras tres heroínas (Canario Negro, Cazadora y Renée Montoya) unen sus fuerzas...','Ciencia Ficción'),
('Archivo','./posters/20.jpg', 97, 2, 'https://www.youtube.com/embed/VHSoCnDioAo', NULL, '2038: George Almore está trabajando en una verdadera IA equivalente a la humana...', 'Ciencia Ficción'),
('3022',  './posters/22.jpg', 97, 2, 'https://www.youtube.com/embed/AGQ7OkmIx4Q', NULL, 'La película está ambientada en una estación espacial en el futuro. La tripulación sufre un estrés traumático y considera abandonar su misión...', 'Suspenso'),
('IT - Capítulo 2', './posters/23.jpg',97 , 2, 'https://www.youtube.com/embed/hZeFeYSmBcg', NULL, 'En este segundo capitulo Han pasado 27 años desde que el "Club de los Perdedores" se enfrentara al macabro y despiadado Pennywise...', 'Terror'),
('Pantera Negra','./posters/24.jpg', 97, 2, 'https://www.youtube.com/embed/BE6inv8Xh4A', NULL, 'T’Challa (Chadwick Boseman) regresa a su hogar en la apartada nación africana de Wakanda para servir como líder de su país...', 'Ciencia Ficción'),
('Contra lo imposible (Ford versus Ferrari)', './posters/25.jpg', 97, 2, 'https://www.youtube.com/embed/SOVb0-2g1Q0', NULL, 'Los ganadores del Premio de la Academia® Matt Damon y Christian Bale protagonizan CONTRA LO IMPOSIBLE...', 'Suceso Real'),
('Centígrados', './posters/26.jpg', 97, 2, 'https://www.youtube.com/embed/0RvV7TNUlkQ', NULL, 'Una joven pareja estadounidense viaja a las montañas árticas de Noruega. Después de detenerse durante una tormenta de nieve...','Suspenso'),
('DOOM: Aniquilación', './posters/27.jpg', 97, 2, 'https://www.youtube.com/embed/nat3u3gAVLE', NULL, 'Doom: Aniquilación sigue a un grupo de marines espaciales que han respondido a una llamada de alerta...', 'Terror'),
('Contagio', './posters/28.jpg', 97, 2, 'https://www.youtube.com/embed/4sYSyuuLk5g', NULL, 'De repente, sin saber cuál es su origen, un virus mortal comienza a propagarse...', 'Drama'),
('Viuda Negra',  './posters/29.jpg', 97, 2, 'https://www.youtube.com/embed/BIn8iANwEog', NULL, 'Primera pelicula individual de la Viuda Negra en el universo cinematografico de Marvel...', 'Acción'),
('The Martian',  './posters/30.jpg', 97, 2, 'https://www.youtube.com/embed/XvB58bCVfng', NULL, 'Durante una misión a Marte de la nave tripulada Ares III, una fuerte tormenta se desata...', 'Ciencia Ficción'),
('Ex-Machina', './posters/31.jpg', 97, 2, 'https://www.youtube.com/embed/XRYL5spvEcI', NULL, 'Un programador multimillonario selecciona a Caleb, un joven empleado de su empresa...', 'Ciencia Ficción'),
('Jurassic World',  './posters/32.jpg', 97, 2, 'https://www.youtube.com/embed/RFinNxS5KN4', NULL, 'Veintidós años después de lo ocurrido en Jurassic Park, la isla Nublar ha sido transformada en un enorme parque temático...', 'Aventura'),
('Soy leyenda',  './posters/33.jpg', 97, 2, 'https://www.youtube.com/embed/dtKMEAXyPkg', NULL, 'Años después de que una plaga mate a la mayoría de la humanidad y transforme al resto en monstruos...','Terror'),
('El primer hombre en la luna',  './posters/34.jpg',97, 2, 'https://www.youtube.com/embed/PSoRx87OO6k', NULL, 'Cuenta la historia de la misión de la NASA que llevó al primer hombre a la luna...','Suceso Real'),
('Titanes del pacífico - La insurrección', './posters/35.jpg', 97, 2, 'https://www.youtube.com/embed/_EhiLLOhVis', NULL, 'Han pasado 10 años tras la primera invasión que sufrió la humanidad, pero la lucha aún no ha terminado...', 'Ciencia Ficción'),
('JOBS: La Vida De Steve Jobs', './posters/36.jpg', 104, 2, 'https://www.youtube.com/embed/FrvkCS0ZGPU', NULL, 'Sólo hace falta una persona para empezar una revolución. Jobs es la extraordinaria historia de Steve Jobs...', 'Suceso Real'),
('Piratas de Silicon Valey', './posters/37.jpg', 104, 2, 'https://www.youtube.com/embed/lEyrivrjAuU', NULL, 'Esta película es el documental semigracioso sobre los hombres que hicieron el mundo de la tecnología lo que es hoy...', 'Suceso Real'),
('Red Social', './posters/38.jpg', 116, 2, 'https://www.youtube.com/embed/lB95KLmpLR4', NULL, 'En una noche de otoño de 2003, el genio de la programación de computación de la Universidad de Harvard Mark Zuckerberg se sienta en su computadora...','Suceso Real'),
('Antitrust',  './posters/39.jpg', 110, 2, 'https://www.youtube.com/embed/k3TwIJjyjPM', NULL, 'Milo Hoffman es un joven informático increíblemente prometedor para su edad que rápidamente es contratado por una importante empresa...','Acción'),
('Stowaway', './posters/40.jpg', 118, 2, 'https://www.youtube.com/embed/A_apvQkWsVY', NULL, 'Una misión al planeta Marte. Dos años de duración. De repente, los tres tripulantes afectados a esta labor deben tomar una decisión imposible...', 'Ciencia Ficción'),
('Liga de la Justicia - Zack Snyder' ,'./posters/41.jpg', 242, 2, 'https://www.youtube.com/embed/BUb_-RxsoBs', 'N/A', 'Decidido a asegurarse de que el sacrificio final de Superman no fue en vano, Bruce Wayne alinea fuerzas con Diana Prince con planes para reclutar un equipo de metahumanos para proteger al mundo de una amenaza de proporciones catastróficas que se aproxima. En esta fascinante entrega, no apta para niños, verás cómo se conforma la Liga de la Justicia, uniendo a los principales superhéroes conocidos como Metahumanos.','Acción'),
('Two and a half men','./posters/42.jpg', 0, 1, 'https://www.youtube.com/embed/mVHDanSl2pc', '12', 'Un quiropráctico y padre soltero, Alan Harper, vive en una casa al frente de la playa con su hijo mediocre, Jake, y un billonario de la Internet divorciado Walden Schmidt, que se muda con la familia de los Harper y ofrece comprar la casa luego de la muerte inesperada del hermano de Alan, Charlie.', 'Comedia'),
('La casa de Papel', './posters/43.jpg', 0, 1, 'https://www.youtube.com/embed/w1jkStuRQU8', '4', 'Ocho ladrones toman rehenes en la Fábrica Nacional de Moneda y Timbre de España, mientras el líder de la banda manipula a la policía para cumplir con su plan.','Acción'),
('Stranger Things', './posters/44.jpg', 0, 1, 'https://www.youtube.com/embed/b9EkMc79ZSU', '4', 'Pasan cosas muy extrañas en Hawkins, Indiana, tras una desaparición que revela la presencia de una niña con poderes sobrenaturales. Después de la extraña desaparición de un niño, un pueblo se encuentra ante un misterio que revela experimentos secretos, fuerzas sobrenaturales.', 'Suspenso'),
('Gravity', './posters/45.jpg', 93 , 2, 'https://www.youtube.com/embed/OiTiKOy59o4', 'N/A', 'Durante un paseo espacial rutinario, dos astronautas sufren un grave accidente y quedan flotando en el espacio. Una es la doctora Ryan Stone, una brillante ingeniera en su primera misión espacial en la Shuttle. Su acompañante es el veterano astronauta Matt Kowalsky. Durante el paseo algo sale mal y ocurre el desastre: el shuttle queda destrozado, dejando a Ryan y Matt completamente solos, momento a partir del cual intentarán por todos los medios volver a la Tierra.','Suspenso'),
('It (eso)', './posters/49.jpg', 135, 2, 'https://www.youtube.com/embed/FnCdOQsX5kc', 'N/A', 'Remake del clásico de Stephen King, y de la película homónima de 1990, en el que un payaso aterroriza a los niños de un vecindario. En un pequeño pueblo de Maine, siete niños conocidos como el Club de los Perdedores se encuentran cara a cara con problemas de la vida, matones y un monstruo que toma la forma de un payaso llamado Pennywise.', 'Terror'),
('Apollo 13', './posters/46.jpg', 140, 2, 'https://www.youtube.com/embed/e3ZtOS4MCkk', 'N/A', 'El Apolo 13 inicia su viaje a la luna en abril de 1970. Cuando la tripulación está a punto de llegar a su destino, una explosión en el espacio les hace perder oxígeno, energía y el curso de la nave... Todo se convierte en una situación desesperada para los tres hombres tripulantes, especialmente cuando el oxígeno amenaza con agotarse. Mientras, el mundo entero, que apenas un año antes conoció la gloria de la aventura espacial cuando el hombre pisó la luna, contiene la respiración a la espera de ver cómo acaba tan angustiosa espera.','Suceso Real'),
('La profecía', './posters/47.jpg', 110, 2, 'https://www.youtube.com/embed/8L-1Qk_MQQs', 'N/A', 'Incapaz de decirle a su mujer Katherine la trágica muerte de su hijo recién nacido, el diplomático americano Robert Thorn acepta un huérfano como su hijo. Los detalles del nacimiento del chico son un secreto, pero cuando Damien va creciendo, empieza a dar muestras de que no es un chico corriente.', 'Terror'),
('El exorcista', './posters/48.jpg', 122, 2, 'https://www.youtube.com/embed/YDGw1MTEe9k', 'N/A', 'Regan es una niña de doce años víctima de fenómenos paranormales como la levitación o la manifestación de una fuerza sobrehumana. Su madre, aterrorizada, tras someter a su hija a múltiples análisis médicos que no ofrecen ningún resultado, acude a un sacerdote con estudios de psiquiatría. Éste está convencido de que el mal no es físico sino espiritual, es decir, que la niña es víctima de una posesión diabólica. Por eso, con la ayuda de otro sacerdote decide practicar un exorcismo.', 'Terror'),
('The Office', './posters/50.jpg', 0, 1, 'https://www.youtube.com/embed/LHOtME2DL4g', '9', 'Steve Carell protagoniza The Office, un fresco y divertido vistazo, con formato pseudo-documental, al día a día en la vida de unos excéntricos trabajadores de la empresa Dunder Mifflin. El serio pero despistadísimo director Michael Scott se considera un magnífico jefe y mentor, pero realmente inspira más críticas que respeto a sus empleados.', 'Comedia'),
('The Good Doctor','./posters/51.jpg', 0, 1, 'https://www.youtube.com/embed/fYlZDTru55g',"4",'Un cirujano joven y autista que padece el síndrome del sabio empieza a trabajar en un hospital prestigioso. Allá tendrá que vencer el escepticismo con el que sus colegas lo reciben.','Familia'),
('La teoría del todo','./posters/52.jpg',123,2,'https://www.youtube.com/embed/Salz7uGp72c','N/A','La película gira en torno a la vida de Stephen Hawking, el importante teórico y divulgador científico que cambió la historia de la ciencia y la tecnología moderna para siempre. La película se centrará en la relación que mantuvo el británico con Jane Wilde, su primera mujer, con quien contrajo matrimonio después de que le diagnosticaran una enfermedad por la que no le quedaban más de dos años de vida. Estupenda adaptación con un Eddie Redmayne que cada día nos sorprende más.','Suceso Real'),
('Código enigma','./posters/53.jpg',115,2,'https://www.youtube.com/embed/nuPZUUED5uk','N/A',"Durante el invierno de 1952, las autoridades británicas entraron en el hogar del matemático, analista y héroe de guerra Alan Turing, con la intención de investigar la denuncia de un robo. Al final acabaron arrestando a Turing acusándole de indecencia grave, un cargo que le supondría una devastadora condena por una ofensa criminal: ser homosexual. Los oficiales no tenían ni idea de que en realidad estaban incriminando al pionero de la informática actual. Liderando a un heterogéneo grupo de académicos, lingüistas, campeones de ajedrez y oficiales de inteligencia, se le conoce por haber descifrado el código de la inquebrantable máquina Enigma de los alemanes durante la Segunda Guerra Mundial.",'Suceso Real'),
('Talentos ocultos','./posters/54.jpg',127,2,'https://www.youtube.com/embed/RK8xHq6dfAo','N/A',"Narra la historia nunca contada de tres brillantes mujeres científicas afroamericanas que trabajaron en la NASA a comienzos de los años sesenta (en plena carrera espacial, y asimismo en mitad de la lucha por los derechos civiles de los negros estadounidenses) en el ambicioso proyecto de poner en órbita al astronauta John Glenn.",'Suceso Real'),
('Una mente brillante','./posters/55.jpg',134 ,2,'https://www.youtube.com/embed/jT51irTIirAc','N/A',"Obsesionado con la búsqueda de una idea matemática original, el brillante estudiante John Forbes Nash llega a Princeton para realizar sus estudios de postgrado. Es un muchacho extraño y solitario, al que sólo comprende su compañero de cuarto. Por fin, Nash esboza una revolucionaria teoría y consigue una plaza de profesor en el MIT. Alicia Lardé, una de sus alumnas, lo deja fascinado al mostrarle que las leyes del amor están por encima de las de las matemáticas. Gracias a su prodigiosa habilidad para descifrar códigos es reclutado por Parcher William, del departamento de Defensa, para ayudar a los Estados Unidos en la Guerra Fría contra la Unión Soviética.",'Suceso Real'),
('Passengers','./posters/56.jpg',116,2,'https://www.youtube.com/embed/7BWWWQzTpNU','N/A', 'Una nave espacial, que viaja a un planeta lejano transportando a miles de personas, tiene una avería en una de las cápsulas de hibernación tras el impacto con un gran meteorito. Como resultado, un pasajero se despierta noventa años antes del final del viaje.','Ciencia Ficción'),
('Passengers','./posters/57.jpg',93 ,2,'https://www.youtube.com/embed/iMW4RpQmJJQ',  'N/A',"Un avión se estrella y tan sólo sobreviven cinco personas. Asignada al caso por su mentor, la joven terapeuta Claire, una brillante psicóloga, deberá ayudar a los supervivientes a superar el trauma. Pero, poco a poco, éstos empiezan a desaparecer misteriosamente... o a no aparecer en la sesiones. Nada está claro, ni siquiera qué pasó en el accidente. Además, entre los supervivientes está Eric, un atractivo pasajero que parece no necesitar terapia. (la línea entre este mundo y el próximo, está a pundo de ser cruzada)",'Suspenso'),
('Argo','./posters/58.jpg',120,2,"https://www.youtube.com/embed/JW3WfSFgrVY", "N/A", "Irán, año 1979. Cuando la embajada de los Estados Unidos en Teherán es ocupada por seguidores del Ayatolá Jomeini para pedir la extradición del Sha de Persia, la CIA y el gobierno canadiense organizaron una operación para rescatar a seis diplomáticos estadounidenses que se habían refugiado en la casa del embajador de Canadá. Con este fin se recurrió a un experto en rescatar rehenes y se preparó el escenario para el rodaje de una película de ciencia-ficción, de título 'Argo', en la que participaba un equipo de cazatalentos de Hollywood. La misión: ir a Teherán y hacer pasar a los diplomáticos por un equipo de filmación canadiense para traerlos de vuelta a casa.", 'Suceso Real'),
('Prometheus', './posters/59.jpg', 120 , 2, 'https://www.youtube.com/embed/34cEo0VhfGE', 'N/A', 'Un grupo de científicos y exploradores emprende un viaje espacial a un remoto planeta, una rara estrella recién descubierta, donde sus límites físicos y mentales serán puestos a prueba. El motivo de la misión es que los humanos creen que allá podrán encontrar la respuesta a las preguntas más profundas y al mayor de los misterios: el origen de la vida en la Tierra.','Ciencia Ficción'),  
('Alien: Covenant', './posters/60.jpg', 122, 2, 'https://www.youtube.com/embed/svnAD0TApb8', 'N/A', 'Rumbo a un remoto planeta al otro lado de la galaxia, la tripulación de la nave colonial Covenant descubre lo que creen que es un paraíso inexplorado, pero resulta tratarse de un mundo oscuro y hostil cuyo único habitante es un ''sintético'' llamado David (Michael Fassbender), superviviente de la malograda expedición Prometheus. Secuela de ''Prometheus'' (2012), a su vez precuela de ''Alien, el octavo pasajero'' (1979).', 'Ciencia Ficción'),
('Life: Vida inteligente', './posters/61.jpg', 106, 2, 'https://www.youtube.com/embed/viX9irZw9Cg', 'N/A', 'Seis miembros de la tripulación de la Estación Espacial Internacional que están a punto de lograr uno de los descubrimientos más importantes en la historia humana: la primera evidencia de vida extraterrestre en Marte. A medida que el equipo comienza a investigar y sus métodos tienen consecuencias inesperadas, la forma viviente demostrará ser más inteligente de lo que cualquiera esperaba.', 'Suspenso'),
('Madame Curie', './posters/62.jpg', 115, 2, 'https://www.youtube.com/embed/w0jqppl-ybY', 'N/A', 'Basada en el libro ''A tale of love and fallout'' de Lauren Redniss, Radioactive es la historia biográfica sobre la científica polaca Marie Curie, la primera persona en recibir dos premios Nobel en distintas especialidades —Física y Química—, y la primera mujer en ocupar el puesto de profesora en la Universidad de París. Dirigida por Marjane Satrapi y protagonizada por Rosamund Pike como Marie Curie, está basada en la novela gráfica de Lauren Redniss.','Suceso Real'),
('The IT Crowd', './posters/63.jpg', 0, 1, 'https://www.youtube.com/embed/wCa1jfo93jQ', '4', 'En un desordenado sótano en las entrañas de Industrias Reynholm habitan Roy y Moss, los componentes del Departamento de informática. Víctimas del desprecio y del escarnio de sus compañeros más guays, su mundo de servidores y cortafuegos se ve interrumpido por la llegada de Jen, su nueva jefa, que sabe tanto de ordenadores como un yak.', 'Comedia'),
('Humans', './posters/64.jpg', 0, 1, 'https://www.youtube.com/embed/BV8qFeZxZPE', '3', 'En un presente paralelo donde el último gadget que hay que tener para cualquier familia ocupada es un ''Synth'' - un sirviente robótico altamente desarrollado que es tan similar a un humano real que está transformando la manera en que vivimos.','Ciencia Ficción'),
('Need for Speed', './posters/65.jpg', 130, 2, 'https://www.youtube.com/embed/u3wtVI-aJuw', 'N/A', 'El más famoso de los videojuegos de carreras llega a la gran pantalla para dejar a los más fanáticos boquiabiertos. Need for Speed cuenta la historia de un experto en automovilismo (Aaron Paul), el cual tiene un garage en dónde transforma coches para hacerlos más rápidos de lo que son para poder competir en carreras ilegales. Entró en la cárcel por un delito que no había cometido, justo cuando su mejor amigo muere en una carrera, y ahora sale de allí para vengarse.', 'Acción'),
('Mare of Easttown', './posters/66.jpg', 0, 1, 'https://www.youtube.com/embed/miQqyfO66uw', '1', 'Mare of Easttown es una miniserie estadounidense de drama y misterio creada por Brad Ingelsby cuenta la historia de Mare Sheehan, una detective de un pequeño pueblo de Pensilvania que investiga un asesinato local mientras trata de evitar que su vida se desmorone a raiz de la muerte de su hijo, su separación, y la posible restitución de su nieto a su madre biológica.', 'Drama'),
('Ray', './posters/67.jpg', 152, 2, 'https://www.youtube.com/embed/jVHCQfcugdw', 'N/A', 'La vida de Ray Charles es una alternancia de triunfos y fracasos personales que se suceden a lo largo de una dilatada y galardonada carrera en el mundo del espectáculo. Pero estamos hablando de un hombre que sintetizó sus luchas, su dolor y su oscuridad personal con la misma efectividad con la que supo fundir en su arte una miríada de estilos musicales: el jazz, el rhythm & blues, el rock & roll, el gospel y el country. Su historia tiene entonces un sentido muy distinto: la cadena de logros se transforma en el vibrante y conmovedor trayecto de un genio único con una visión propia que enseñó al mundo a escuchar música de una forma nueva. RAY es la biografía, nunca contada antes, de esa leyenda de la música americana que es Ray Charles. Se centra en el período más explosivo de la carrera de Charles, que comienza cuando este joven negro ciego se sube solo a un autobús en Florida y cruza el país para refinar su arte en la floreciente escena jazzística de Seattle.','Suceso Real'),
('Black Mirror', './posters/68.jpg', 0, 1, 'https://www.youtube.com/embed/jVHCQfcugdw', '5', 'Black Mirror es una serie de televisión británica creada por Charlie Brooker que muestra el lado oscuro de la vida y la tecnología. La serie es producida por Zeppotron para Endemol. En cuanto al contenido del programa y la estructura, Brooker ha señalado que "cada episodio tiene un tono diferente, un entorno diferente, incluso una realidad diferente, pero todos son acerca de la forma en que vivimos ahora - y la forma en que podríamos estar viviendo en 10 minutos si somos torpes".','Ciencia Ficción'),
('Detrás de sus ojos', './posters/69.jpg', 0, 1, 'https://www.youtube.com/embed/c4LtoWQaLxk', '1', 'Una madre soltera se adentra en un mundo de retorcidos juegos psicológicos cuando inicia una relación cuasi-no consentida con su jefe, un psiquiatra, y se hace amiga en secreto de su misteriosa esposa. La trama se bassa en un thriller sobre un triángulo amoroso perverso, más la introducción sutilmente de un elemento clave, que dará un giro notable a la obra.', 'Drama'),
('Her', './posters/70.jpg', 126, 2, 'https://www.youtube.com/embed/UVMcpZ42BkA', 'N/A', 'En un futuro cercano, Theodore, un hombre solitario a punto de divorciarse que trabaja en una empresa como escritor de cartas para terceras personas, compra un día un nuevo sistema operativo basado en el modelo de Inteligencia Artificial, diseñado para satisfacer todas las necesidades del usuario. Para su sorpresa, se crea una relación romántica entre él y Samantha, la voz femenina de ese sistema operativo.', 'Ciencia Ficción'),
("Misión Imposible", "./posters/71.jpg", 110, 2, "https://www.youtube.com/embed/Ohws8y572KE", "N/A", "Ethan Hunt es un superespía capaz de resolver cualquier arriesgada situación con la máxima elegancia. Forma parte de un competente equipo dirigido por el agente Jim Phelps, que ha vuelto a reunir a sus hombres para participar en una dificilísima misión: evitar la venta de un disco robado que contiene información secreta de vital importancia.",'Acción'),
("El agente de C.I.P.O.L.", "./posters/72.jpg", 116, 2, "https://www.youtube.com/embed/AeUzNxHHryQ", "N/A", "Guerra fría, años 60. Narra las aventuras de dos agentes secretos que se parecen más de lo que creen: Napoleon Solo, de la CIA, e Illya Kuryakin, del KGB. Ambos se ven obligados a olvidar sus diferencias y formar un equipo cuya misión será poner fin a una misteriosa organización criminal internacional que pretende desestabilizar el frágil equilibrio de poder provocado por la proliferación de las armas nucleares. La hija de un científico alemán desaparecido es la clave para infiltrarse en la organización, encontrar al científico y evitar una catástrofe mundial.",'Acción'),
("Jumanji - Bienvenidos a la jungla", "./posters/73.jpg", 119, 2, "https://www.youtube.com/embed/2QKg5SZ_35I", "N/A", "Cuatro adolescentes son absorbidos por un videojuego, en el que se convierten en avatares de personajes arquetípicos. Allí vivirán múltiples aventuras, al tiempo que buscan cómo salir de allí para volver a su mundo.", 'Fantasía'),
("Jumanji - The next level", "./posters/21.jpg", 97, 2, "https://www.youtube.com/embed/rBxcF-r9Ibs", "N/A", "Las aventuras continúan en el fantástico mundo del video juego Jumanji, donde nada es lo que parece. En esta ocasión, los jugadores vuelven al juego, pero sus personajes se han intercambiado entre sí, lo que ofrece un curioso plantel: los mismos héroes con distinta apariencia y habilidades. Pero, ¿dónde está el resto de la gente?",'Fantasía'),
("Mujer Maravilla 1984", "./posters/74.jpg", 151, 2, "https://www.youtube.com/embed/sfM7_JLk-84", "N/A", "En 1984, en plena guerra fría, Diana Prince, conocida como La Mujer Maravilla, se enfrenta al empresario Maxwell Lord y a su antigua amiga Barbara Minerva / Cheetah, una villana que posee fuerza y agilidad sobrehumanas.",'Aventura'),
('El Contador', './posters/75.jpg', 128, 2, 'https://www.youtube.com/embed/DBfsgcswlYQ', 'N/A', 'Christian Wolff es un contable y genio matemático, un hombre obsesivo con el orden y con mucha más afinidad con los números que con las personas, que lleva una doble vida como asesino despiadado.','Suceso Real'),
('Mala Educación', './posters/76.jpg', 108, 2, 'https://www.youtube.com/embed/DBfsgcswlYQ', 'N/A', 'Frank Tassone, uno de los superintendentes más destacados del distrito escolar de Roslyn en Nueva York se desvive a diario para que la educación de sus alumnos sea la mejor. Pero de forma paralela, este se lucra con dinero público para llevar una vida llena de lujos. Así, Tassone y su personal, amigos y familiares, se convierten en los principales sospechosos del mayor escándalo de malversación de fondos ocurrido en una escuela pública de toda la historia de los Estados Unidos. (Algunas personas aprenden de manera difícil.)', 'Aventura'),
('Noche en el Museo', './posters/78.jpg', 108 , 2, 'https://www.youtube.com/embed/B2G-8raHvOU', 'N/A', 'Un padre divorciado trata de establecerse, impresionar a su hijo y encontrar su destino. Él se presenta para un trabajo como vigilante nocturno en el Museo Americano de Historia Natural de la ciudad de Nueva York y, posteriormente, descubre que los objetos expuestos, animados por un artefacto mágico de Egipto, vuelven a la vida durante la noche. Al principio le va muy mal tratando de mantener el orden y la calma en el museo, pero al final se vuelve muy buen amigo de todos y juntos ayudan a recuperar aquel artefacto mágico egipcio, ya que ha sido robado por los antiguos vigilantes del museo.','Suceso Real'),
('Bohemian Rhapsody', './posters/79.jpg', 134, 2, 'https://www.youtube.com/embed/mP0VHJYFOAU', 'N/A', 'Bohemian Rhapsody es una rotunda y sonora celebración de Queen, de su música y de su extraordinario cantante Freddie Mercury, que desafió estereotipos e hizo añicos tradiciones para convertirse en uno de los showmans más queridos del mundo. La película plasma el meteórico ascenso al olimpo de la música de la banda a través de sus icónicas canciones y su revolucionario sonido, su crisis cuando el estilo de vida de Mercury estuvo fuera de control, y su triunfal reunión en la víspera del Live Aid, en la que Mercury, mientras sufría una enfermedad que amenazaba su vida, lidera a la banda en uno de los conciertos de rock más grandes de la historia. Veremos cómo se cimentó el legado de una banda que siempre se pareció más a una familia, y que continúa inspirando a propios y extraños, soñadores y amantes de la música hasta nuestros días.','Suceso Real'),
('Rock of ages', './posters/80.jpg', 123, 2, 'https://www.youtube.com/embed/mP0VHJYFOAU', 'N/A', 'Los Ángeles, 1987: Un aspirante a roquero y una chica que trabajan en el mismo club (Bourbone Room) se enamoran y tratan de impedir que el local caiga en manos de unos empresarios que quieren demolerlo. Esta película es la adaptación cinematográfica del musical homónimo de Broadway.','Comedia'),
("Super 8", "./posters/81.jpg", 82, 2, "https://www.youtube.com/embed/QtZ6BQRDk4g", "N/A", "Año 1979, en un pequeño pueblo de Ohio. Joe Lamb (Joel Courtney) es un muchacho que ha perdido a su madre en un accidente y que vive con su padre policía (Kyle Chandler). Comenzado el verano, y mientras rueda una película de zombis en Super 8 con sus amigos -y sobre todo con la bella Alice Dainard (Elle Fanning)-, Joe observa cómo una camioneta se estrella contra un tren de mercancías, provocando su descarrilamiento y un terrible accidente. A partir de ese momento cosas extrañas e inexplicables comienzan a suceder en el pueblo.",'Ciencia Ficción'),
("Jurassic World - El reino caido", "./posters/82.jpg", 82, 2, "https://www.youtube.com/embed/vn9mMeWcgoM", "N/A", "Tras cuatro años de abandono del complejo turístico Jurassic World, la isla Nublar solo está habitada por los dinosaurios supervivientes, pero el volcán inactivo de la isla comienza a cobrar vida, Owen y Claire montan una campaña para rescatar a los dinosaurios restantes en la isla.",'Aventura'),
("Indiana Jones - y el Reino de la Calavera de Cristal", "./posters/83.jpg", 127, 2, "https://www.youtube.com/embed/WAdJf4wTC5Y", "N/A", "Guerra Fría (1957). Indiana Jones (Harrison Ford) y su amigo Mac (Ray Winstone) acaban de escapar de las garras de unos agentes soviéticos en un remoto aeropuerto. El decano de la Universidad (Jim Broadbent) le confiesa a su amigo el profesor Jones que las últimas misiones de Indy han fracasado y que está a punto de ser despedido. Mientras tanto, Indiana conoce a Mutt (Shia LaBeouf), un joven rebelde que le propone un trato: si le ayuda a resolver un problema personal, él, a cambio, le facilitaría uno de los descubrimientos más espectaculares de la historia: la Calavera de Cristal de Akator, que se encuentra en un lugar remoto del Perú. Pero los agentes soviéticos, dirigidos por la fría y bella Irina Spalko (Cate Blanchett), tienen el mismo objetivo.", 'Aventura'),
("Los Goonies", "./posters/84.jpg", 114, 2, "https://www.youtube.com/embed/hJ2j4oWdQtU", "N/A", "Mikey, un muchacho de trece años, que junto con su hermano mayor y sus amigos se hacen llamar 'Los Goonies', decide subir a jugar al desván de su casa, donde su padre guarda antigüedades. Allí, el grupo encuentra el mapa de un tesoro y emprende un fabuloso viaje para validar la veracidad de dicho mapa, y encontrar ese tesoro tan preciado por estos amigos inseparables.",'Familia'),
("Cars", "./posters/85.jpg", 114, 2, "https://www.youtube.com/embed/SbXIj2T-_uk", "N/A", "El aspirante a campeón de carreras Rayo McQueen está sobre la vía rápida al éxito, la fama y todo lo que él había soñado, hasta que por error toma un desvío inesperado en la polvorienta y solitaria Ruta 66. Su actitud arrogante se desvanece cuando llega a una pequeña comunidad olvidada que le enseña las cosas importantes de la vida que había olvidado.",'Familia'),
("Los pingüinos de Madagascar", "./posters/86.jpg", 101, 1, "https://www.youtube.com/embed/SbXIj2T-_uk", "N/A", "Los pingüinos llevan sus misiones en su hábitat en el Parque Central. Aparecen Julien, el rey de los lémures, y sus súbditos Maurice y Mort, sus nuevos vecinos, que constituyen la exhibición de lémures en el zoológico. Ahora los pingüinos deben mantener las cosas bajo control, a menudo a pesar de las payasadas de los lémures así como auxiliar en labores poco comunes o aventuras fuera de lo común. Skipper rara vez llama al Rey Julien por su nombre, dirigiéndose a él siempre como 'Cola anillada' (por ser un lemur de cola anillada).",'Familia'),
("Cementerio de animales", "./posters/87.jpg", 103, 2, "https://www.youtube.com/embed/JMao8sg4DPA", "N/A", "Louis Creed, su esposa y sus dos niños se instalan en una vivienda próxima a una carretera con mucho tráfico. Cerca de la casa hay un sendero que lleva a un cementerio de animales y también a un antiguo cementerio indio; según la leyenda, los que sean enterrados allí volverán a la vida. Cuando uno de los niños muere atropellado por un camión, Louis decide enterrarlo en el cementerio indio.",'Terror'),
("Poltergeist", "./posters/88.jpg", 114, 2, "https://www.youtube.com/embed/9eZgEKjYJqA", "N/A", "Una familia americana de clase media se traslada a vivir en una nueva casa en un aparentemente idílico barrio, pero dentro de la casa comienzan a suceder cosas extrañas, fenómenos paranormales para los que no hay explicación posible.",'Terror'),
("El código Da Vinci", "./posters/89.jpg", 249 , 2, "https://www.youtube.com/embed/lfqHb6INj3w", "N/A", "El catedrático y afamado simbologista Robert Langdon se ve obligado a acudir una noche al Museo del Louvre, cuando el asesinato de un restaurador deja tras de sí un misterioso rastro de símbolos y pistas. Con la ayuda de la criptógrafa de la policía Sophie Neveu y poniendo en juego su propia vida, Langdon descubre que la obra de Leonardo Da Vinci esconde una serie de misterios que apuntan a una sociedad secreta encargada de custodiar un antiguo secreto que ha permanecido oculto durante dos mil años.", 'Aventura'),
("Johnny English", "./posters/90.jpg", 188, 2, "https://www.youtube.com/embed/EG0MR5dFz7E", "N/A", "Las joyas de la Corona de su Majestad han desaparecido. Detrás de ello se esconde Pascal Sauvage (John Malkovich), que también conspira para hacerse con el trono de la reina. La misión es asignada a Johnny English (Rowan Atkinson), un agente tan entregado al trabajo como inexperto. Desde ese momento la información confidencial, los coches de lujo y la tecnología más sofisticada forman parte de su rutina diaria. Johnny English aún no se lo acaba de creer. Quizás todo esto le venga algo grande, pero su empeño con la misión y dedicación para llegar hasta el final es incuestionable, especialmente después de conocer a la agente doble Lorna Campbell (Natalie Imbruglia). Parece ser que lo de estar enamorado aún hará más emocionante esto de salvar al país.", 'Comedia'),
('Almost Famous', './posters/91.jpg', 122, 2, 'https://www.youtube.com/embed/aQXh_AaJXaM', 'N/A', 'Homenaje al rock de los 70. Gracias a sus buenas críticas musicales, un adolescente que aspira a ser periodista es contratado por la revista "Rolling Stone" para cubrir la gira de una famosa banda. A pesar de su juventud y de la oposición de su madre, el chico vivirá con los músicos y sus fans una aventura inolvidable. Basada en la propia experiencia de Crowe.','Drama'),
('Escuela de Rock', './posters/92.jpg', 110, 2, 'https://www.youtube.com/embed/TExoc0MG4I4', 'N/A', 'Dewey Finn -Jack Black- es un guitarrista con delirios de grandeza que es expulsado de su banda. Desesperado por encontrar un trabajo ante su falta de dinero, suplanta la identidad de un profesor sustituto para dar clase en una escuela privada a los pequeños alumnos pre-adolescentes de 5o grado a los que intentará enseñarles el "rock & roll de alto voltaje". Además entre sus alumnos está Yuki, un guitarrista prodigio de 9 años que puede ayudar a Dewey a ganar la competencia de bandas de música... y de paso solucionar sus problemas económicos.', 'Comedia'),
('Mi pobre angelito', './posters/93.jpg', 102, 2, 'https://www.youtube.com/embed/jEDaVHmw7r4', 'N/A', 'Kevin McAllister es un niño de ocho años, miembro de una familia numerosa, que accidentalmente se queda abandonado en su casa cuando toda la familia se marcha a pasar las vacaciones a Francia. Kevin aprende a valerse por sí mismo e incluso a protegerse de Harry y Marv, dos bribones que se proponen asaltar todas las casas cerradas de su vecindario. Cuando su madre Kate lo echa en falta, realiza un pintoresco viaje de vuelta contra reloj a Chicago para recuperar a su hijo.','Familia'),
('Aprendices fuera de línea', './posters/94.jpg', 125, 2, 'https://www.youtube.com/embed/tn02SPT6ivM', 'N/A', 'Cuando dos cuarentones vendedores de relojes son despedidos de sus respectivos trabajos, convencidos ambos de que no se han adaptado a los cambios de las nuevas tecnologías, deciden empezar de nuevo y buscar trabajo en la empresa más exitosa de Internet: Google. Finalmente consiguen un contrato de prácticas como becarios. La locura comienza cuando se ven compitiendo para conseguir el puesto con jóvenes veinteañeros, mucho más listos y más familiarizados con el mundo digital que ellos.', 'Comedia'),
('Outsourced', './posters/95.jpg', 0, 1, 'https://www.youtube.com/embed/_wR3LhFlgGo', '1', 'Ambientada en el continente estadounidense, una empresa norteamericana que busca reducir los gastos, asciende a su mejor empleado del Call Center, poniéndolo a cargo del mismo. La única condición para dicho empleado es viajar a la India, lugar en el mundo donde tercerizan el servicio de atención al cliente, para abaratar costos. Allí, en la Ciudad de Bombay, los nativos le explican la cultura indú a los nóveles norteamericanos, y viceversa. Tendrán que convivir cada uno de los empleados de estos diferentes países, con sus pares y/o jefes opuestos en cultura.','Comedia'),
('Miedo Profundo', './posters/96.jpg', 86, 2, 'https://www.youtube.com/embed/EgdxIlSuB70', 'N/A', 'Nancy, una estudiante de medicina apasionada del surfing, es una joven que trata de superar la pérdida de su madre. Un día, practicando surf en una solitaria playa mexicana se queda atrapada en un islote a sólo cien metros de la costa. El problema está en que un enorme tiburón blanco se interpone entre ella y la otra orilla.','Suspenso'),
('Everest', './posters/97.jpg', 121, 2, 'https://www.youtube.com/embed/5ZQVpPiOji0', 'N/A', 'Inspirada en los hechos que tuvieron lugar durante un intento por alcanzar el pico más alto del mundo, narra las peripecias de dos expediciones que se enfrentan a la peor tormenta de nieve conocida. En un desesperado esfuerzo por sobrevivir, el temple de los alpinistas se ve puesto a prueba al tener que enfrentarse a la furia desatada de los elementos y a obstáculos casi insuperables.','Suceso Real'),
('La Familia Addams', './posters/98.jpg', 101, 2, 'https://www.youtube.com/embed/G388UMkJIBE', 'N/A', 'El delirante y gótico estilo de vida de la peculiar familia Addams se ve amenazado peligrosamente cuando el codicioso dúo que forman madre e hijo, con la ayuda de un abogado sin ningún escrúpulos, conspiran para hacerse con la fortuna familiar... (No se pierdan las locutras de Gomez, Morticia, Tío Lucas, Merlina, El tío Cosas, Dedos y Largo)','Familia')
AS alias
ON DUPLICATE KEY UPDATE
poster = alias.poster, 
trailer = alias.trailer,
resumen = alias.resumen;

#INSERTAR ACTORES
INSERT IGNORE INTO actores (nombre, apellido) VALUES 
('Pedro', 'Pascal'),('Carl', 'Weathers'),('Misty', 'Rosas'), ('Chris','Bartlett'), ('Rio','Hackford'), ('Giancarlo','Esposito'),('Tom','Hopper'),('David', 'Castañeda'),('Emmy', 'Raver-Lampman'),('Robert', 'Sheehan'),('Aidan', 'Gallagher'),('Elliot', 'Page'),('Anya', 'Taylor-Joy'),
('Thomas', 'Brodie-Sangster'),('Harry', 'Melling'),('Moses', 'Ingram'),('Chloe', 'Pirrie'),('Janina', 'Elkin'),('Lili', 'Reinhart'),('Casey', 'Cott'),
('Camila', 'Mendes'),('Marisol', 'Nichols'),('Madelaine', 'Petsch'),('Mädchen', 'Amick'),('Claire', 'Fox'),('Olivia', 'Colman'),('Matt', 'Smith'),
('Tobias', 'Menzies'),('Vanesa', 'Kirby'),('Helena', 'Bonham Carter'),('Millie', 'Bobby Brown'),('Henry', 'Cavill'),('Sam', 'Claflin'),('Joaquin', 'Phoenix'),
('Robert', 'De Niro'),('Zazie', 'Beetz'),('Frances', 'Conroy'),('Brett', 'Cullen'),('Sheaa', 'Whigham'),('Robert', 'Downey Jr.'),('Chris', 'Evans'),
('Mark', 'Ruffalo'),('Chris', 'Hemsworth'),('Scarlett', 'Johansson'),('Jeremy', 'Renner'),('Emilia', 'Clarke'),('Lena', 'Headey'),('Sophie', 'Turner'),
('Kit', 'Harington'),('Peter', 'Dinklage'),('Nikolaj', 'Coster-Waldau'),('Grant', 'Gustin'),('Carlos', 'Valdes'),('Danielle', 'Panabaker'),
('Candice', 'Patton'),('Jesse', 'L. Martin'),('Tom', 'Cavanagh'),('Jim', 'Parsons'),('Johnny', 'Galecki'),('Kaley', 'Cuoco'),('Simon', 'Helberg'),('Kunal', 'Nayyar'),
('Melissa', 'Rauch'),('Mayim', 'Bialik'),('Jennifer', 'Aniston'),('Courteney', 'Cox'),('Lisa', 'Kudrow'),('David', 'Schwimmer'),('Matthew', 'Perry'),
('Matt', 'LeBlanc'),('Amybeth', 'McNulty'),('Geraldine', 'James'),('R. H.', 'Thomson'),('Corrine', 'Koslo'),('Dalila', 'Bela'),('Lucas', 'Jade Zumann'),
('Gillian', 'Anderson'),('David', 'Duchovny'),('Mitch', 'Pileggi'),('Robert', 'Patrick'),('Tom', 'Braidwood'),('Bruce', 'Harwood'),('Jared', 'Harris'),
('Stellan', 'Skarsgård'),('Emily', 'Watson'),('Paul', 'Ritter'),('Jessie', 'Buckley'),('Adam', 'Nagaitis'),('Evan', 'Rachel Wood'),
('Thandiwe', 'Newton'),('Jeffrey', 'Wright'),('Tessa', 'Thompson'),('Ed', 'Harris'),('Luke', 'Hemsworth'),('Rodrigo', 'Santoro'),('Simon', 'Quarterman'),('Clifton', 'Collins Jr.'),
('Anthony', 'Hopkins'),('Ingrid', 'Bolsø Berdal'),('Angela', 'Sarafyan'),('Shannon', 'Woodward'),('Talulah', 'Riley'),('Louis', 'Herthum'),
('Ben', 'Barnes'),('Jimmi', 'Simpson'),('Leonardo', 'Nam'),('Aaron', 'Paul'),('Vincent', 'Cassel'),('Izabella', 'Alvarez'),('Jeff', 'Daniel Phillips'),
('Alicia', 'Vikander'),('Domhnall', 'Gleeson'),('Oscar', 'Isaac'),('Sonoya', 'Mizuno'),('Corey', 'Johnson'),('Claire', 'Selby'),('Gana', 'Bayarsaikhan'),
('Bryce', 'Dallas Howard'),('Chris', 'Pratt'),('Irrfan', 'Khan'),('Vincent', 'D\'Onofrio'),('Omar', 'Sy'),('Nick', 'Robinson'),('Judy', 'Greer'),
('Will', 'Smith'),('Alice', 'Braga'),('Charlie', 'Tahan'),('Dash', 'Mihok'),('Salli', 'Richardson-Whitfield'),('Willow', 'Smith'),('Emma', 'Thompson'),
('Ryan', 'Gosling'),('Claire', 'Foy'),('Jason', 'Clarke'),('Kyle', 'Chandler'),('Corey', 'Stoll'),('Patrick', 'Fugit'),('John', 'Boyega'),
('Scott', 'Eastwood'),('Cailee', 'Spaeny'),('Jing', 'Tian'),('Rinko', 'Kikuchi'),('Burn', 'Gorman'),('Ahston', 'Kutcher'),
('Dermot', 'Mulroney'),('Josh', 'Gad'),('Lukas', 'Haas'),('Matthew', 'Modine'),('J.K.', 'Simmons'),('Lesley', 'Ann Warren'),('Noah', 'Wyle'),
('Anthony', 'Michael'),('Joey', 'Slotnick'),('J.G.', 'Hertzler'),('Wayne', 'Pére'),('Sheila', 'Shaw'),('Gemma', 'Zamprogna'),('John', 'DiMaggio'),('Jesse', 'Eisenberg'),
('Andrew', 'Garfield'),('Justin', 'Timberlake'),('Armie', 'Hammer'),('Max', 'Minghella'),('Rooney', 'Mara'),('Brenda', 'Song'),('Rashida', 'Jones'),('John', 'Gertz'),
('Ryan', 'Phillippe'),('Rachael', 'Leigh Cook'),('Tim', 'Robbins'),('Claire', 'Forlani'),('Richard', 'Rountree'),('Tygh', 'Runyan'),('Ned', 'Bellamy'),
('Tyler', 'Labine'),('Anna', 'Kendrick'),('Daniel', 'Dae Kim'),('Shamier', 'Anderson'),('Toni', 'Collette'),('Ben', 'Affleck'),('Henry', 'Cavill'),('Gal', 'Gadot'),
('Jason', 'Momoa'),('Ezra', 'Miller'),('Ray', 'Fisher'),('Amy', 'Adams'),('Jeremy', 'Irons'),('Connie', 'Nielsen'),('Charlie', 'Sheen'),
('Jon', 'Cryer'),('Angus T.', 'Jones'),('Conchata', 'Ferrel'),('Holland', 'Taylor'),('Marin', 'Hinkle'),('Jennifer', 'Bini Taylor'),
('Melanie', 'Lynskey'),('Ashton', 'Kutcher'),('Amber', 'Tamblyn'),('Alicia', 'Vikander'),('Domhnall', 'Gleeson'),('Oscar', 'Isaac'),('Sonoya', 'Mizuno'),
('Corey', 'Johnson'),('Claire', 'Selby'),('Gana', 'Bayarsaikhan'),('Bryce', 'Dallas Howard'),('Chris', 'Pratt'),('Irrfan', 'Khan'),
('Vincent', 'D\'Onofrio'),('Omar', 'Sy'),('Nick', 'Robinson'),('Judy', 'Greer'),('Will', 'Smith'),('Alice', 'Braga'),('Charlie', 'Tahan'),
('Dash', 'Mihok'),('Salli', 'Richardson-Whitfield'),('Willow', 'Smith'),('Emma', 'Thompson'),('Ryan', 'Gosling'),('Claire', 'Foy'),
('Jason', 'Clarke'),('Kyle', 'Chandler'),('Corey', 'Stoll'),('Patrick', 'Fugit'),('Ahston', 'Kutcher'),('Dermot', 'Mulroney'),('Josh', 'Gad'),
('Lukas', 'Haas'),('Matthew', 'Modine'),('J.K.', 'Simmons'),('Lesley Ann', 'Warren'),('Noah', 'Wyle'),('Anthony', 'Michael'),('Joey', 'Slotnick'),
('J.G.', 'Hertzler'),('Wayne', 'Pére'),('Sheila', 'Shaw'),('Gemma', 'Zamprogna'),('John', 'DiMaggio'),('Jesse', 'Eisenberg'),
('Andrew', 'Garfield'),('Justin', 'Timberlake'),('Armie', 'Hammer'),('Max', 'Minghella'),('Rooney', 'Mara'),('Brenda', 'Song'),('Rashida', 'Jones'),('John', 'Gertz'),
('Ryan', 'Phillippe'),('Rachael', 'Leigh Cook'),('Tim', 'Robbins'),('Claire', 'Forlani'),('Richard', 'Rountree'),('Tygh', 'Runyan'),
('Ned', 'Bellamy'),('Tyler', 'Labine'),('Anna', 'Kendrick'),('Daniel', 'Dae Kim'),('Shamier', 'Anderson'),('Toni', 'Collette'),('Úrsula', 'Corberó'),
('Álvaro', 'Morte'),('Itziar', 'Ituño'),('Pedro', 'Alonso'),('Alba', 'Flores'),('Miguel', 'Herrán'),('Jaime', 'Lorente'),
('Esther', 'Acebo'),('Enrique', 'Arce'),('Winona', 'Ryder'),('David', 'Harbour'),('Finn', 'Wolfhard'),('Millie', 'Bobby Brown'),
('Gaten', 'Matarazzo'),('Caleb', 'McLaughlin'),('Natalia', 'Dyer'),('Charlie', 'Heaton'),('Joe', 'Keery'),('Sandra', 'Bullock'),
('George', 'Clooney'),('Ed', 'Harris'),('Orto', 'Ignatiussen'),('Phaldut', 'Sharma'),('Amy', 'Warren'),('Basher', 'Savage'),('Adam', 'Cozens'),('Common', NULL),('Charlie', NULL),('Heaton', NULL),('Michael B.', 'Jordan'),('Seamus' ,'Davey-Fitzpatrick'),
('Úrsula', 'Corberó'),('Álvaro', 'Morte'),('Itziar', 'Ituño'),('Pedro', 'Alonso'),('Alba', 'Flores'),('Miguel', 'Herrán'),('Jaime', 'Lorente'),('Esther', 'Acebo'),
('Enrique', 'Arce'),('Winona', 'Ryder'),('David', 'Harbour'),('Finn', 'Wolfhard'),('Millie', 'Bobby Brown'),('Gaten', 'Matarazzo'),('Caleb', 'McLaughlin'),('Natalia', 'Dyer'),
('Charlie', 'Heaton'),('Joe', 'Keery'),('Sandra', 'Bullock'),('George', 'Clooney'),('Ed', 'Harris'),('Orto', 'Ignatiussen'),('Phaldut', 'Sharma'),('Amy', 'Warren'),
('Basher', 'Savage'),('Adam', 'Cozens'),('Jaeden', 'Martell'),('Jeremy', 'Ray'),('Sophia', 'Lillis'),('Finn', 'Wolfhard'),('Chosen', 'Jacobs'),('Jack', 'Dylan'),
('Wyatt', 'Oleff'),('Bill', 'Skarsgård'),('Nicholas', 'Hamilton'),('Tom', 'Hanks'),('Bill', 'Paxton'),('Kevin', 'Bacon'),('Gary', 'Sinise'),
('Ed', 'Harris'),('Kathleen', 'Quinlan'),('Roger', 'Corman'),('Chris', 'Ellis'),('Xander', 'Berkeley'),('Liev', 'Schreiber'),('Julia', 'Stiles'),
('Seamus', 'Davey-Fitzpatrick'),('David', 'Thewlis'),('Pete', 'Postlethwaite'),('Mia', 'Farrow'),('Predrag', 'Bjelac'),('Carlo', 'Sabatini'),
('Amy', 'Huck'),('Ellen', 'Burstyn'),('Linda', 'Blair'),('Max', 'vox Sydow'),('Lee J.', 'Cobb'),('Kitty', 'Winn'),('Jack', 'MacGowran'),
('Jason', 'Miller'),('William', 'O\'Malley'),('Barton', 'Heyman'),('Rainn', 'Wilson'),('Steve', 'Carell'),('Jenna', 'Fischer'),('John', 'Krasinski'),('B.J.', 'Novak'),('Kate', 'Flannery'),('Brian', 'Baumgartner'),
('Leslie David', 'Baker'),('Mindy', 'Kaling'),('Freddie', 'Highmore'),('Antonia', 'Thomas'),('Hill', 'Harper'),('Richard', 'Schiff'),('Christina', 'Chang'),
('Paige', 'Spara'),('Fiona', 'Gubelmann'),('Will Yun', 'Lee'),('Nicholas', 'Gonzalez'),('Eddie', 'Redmayne'),('Felicity', 'Jones'),('Charlie', 'Cox'),
('Emily', 'Watson'),('Simon', 'McBurney'),('David', 'Thewlis'),('Maxine', 'Peake'),('Harry', 'Lloyd'),('Tom', 'Prior'),('Benedict', 'Cumberbatch'),('Keira', 'Knightley'),('Matthew', 'Goode'),('Rory', 'Kinnear'),
('Allen', 'Leech'),('Matthew', 'Beard'),('Charles', 'Dance'),('Mark', 'Strong'),('James', 'Northcote'),('Taraji P.', 'Henson'),('Octavia', 'Spencer'),
('Janelle', 'Monáe'),('Kevin', 'Costner'),('Kirsten', 'Dunst'),('Jim', 'Parsons'),('Mahershala', 'Ali'),('Glen', 'Powell'),('Ariana', 'Neal'),('Russell', 'Crowe'),('Jennifer', 'Connelly'),('Ed', 'Harris'),('Paul', 'Bettany'),('Christopher', 'Plummer'),
('Josh', 'Lucas'),('Adam', 'Goldberg'),('Anthony', 'Rapp'),('Judd', 'Hirsch'),('Jennifer', 'Lawrence'),('Chris', 'Pratt'),('Michael', 'Sheen'),('Laurence', 'Fishburne'),('Andy', 'García'),('Aurora', 'Perrineau'),('Kristin', 'Brock'),('Julee', 'Cerda'),('Fred', 'Melamed'),
('Anne', 'Hathaway'),('Patrick', 'Wilson'),('Andre', 'Braugher'),('Dianne', 'Wiest'),('David', 'Morse'),('William B.', 'Davis'),
('Ryan', 'Robbins'),('Clea', 'DuVall'),('Don', 'Thompson'),('Ben', 'Affleck'),('Bryan', 'Cranston'),('Alan', 'Arkin'),('John', 'Goodman'),
('Victor', 'Garber'),('Tate', 'Donovan'),('Clea', 'DuVall'),('Scoot', 'McNairy'),('Rory', 'Cochrane'),('Kerry', 'Bishé'),('Noomi', 'Rapace'),
('Michael', 'Fassbender'),('Charlize', 'Theron'),('Logan', 'Marshall-Green'),('Guy', 'Pearce'),('Idris', 'Elba'),('Sean', 'Harris'),
('Rafe', 'Spall'),('Kate', 'Dickie'),('Emut', 'Elliott'),('Benedict', 'Wong'),('Lucy', 'Hutchinson'),('Patrick', 'Wilson'),('Ian', 'Whyte'),('Branwell', 'Donaghey'),('Vladimir', 'Furdik'),('C.C.', 'Smiff'),('Shane', 'Steyn'),('John', 'Lebar'),('Michael', 'Fassbender'),('Katherine', 'Waterston'),
('Billy', 'Crudup'),('Danny', 'McBride'),('Demián', 'Bichir'),('Carmen', 'Ejogo'),('Jussie', 'Smollett'),('Callie', 'Hernandez'),
('Amy', 'Seimetz'),('Nathaniel', 'Dean'),('Alexander', 'England'),('Benjamin', 'Rigby'),('Uli', 'Latukefu'),('Tess', 'Haubrich'),('Andrew', 'Crawford'),('Guy', 'Pearce'),
('James', 'Franco'),('Noomi', 'Rapace'),('Javier', 'Botet'),('Tom', 'Cruise'),('Jon', 'Voight'),('Emmanuelle', 'Béart'),('Henry', 'Czerny'),('Jean', 'Reno'),('Ving', 'Rhames'),('Kristin', 'Scott Thomas'),('Vanessa', 'Redgrave'),('Ingeborga', 'Dapkünaitè'),
('Henry', 'Cavill'),('Armie', 'Hammer'),('Alicia', 'Vikander'),('Elizabeth', 'Debicki'),('Luca', 'Calvani'),('Sylvester', 'Groth'),
('Hugh', 'Grant'),('Jared', 'Harris'),('Christian', 'Berkel'),('Misha', 'Kuznetsov'),('Guy', 'Williams'),('Marianna', 'Di Martino'),
('Dwayne', 'Johnson'),('Kevin', 'Hart'),('Jack', 'Black'),('Karen', 'Gillan'),('Nick', 'Jonas'),('Rhys', 'Darby'),('Bobby', 'Cannavale'),
('Alex', 'Wolff'),('Ser\'Darius', 'Blain'),('Madison', 'Iseman'),('Morgan', 'Turner'),('Sean', 'Buxton'),('Mason', 'Guccione'),('Marin', 'Hinkle'),
('Colin', 'Hanks'),('Danny', 'DeVito'),('Danny', 'Glover'),('Gal', 'Gadot'),('Chris', 'Pine'),('Kristen', 'Wiig'),('Pedro', 'Pascal'),
('Robin', 'Wright'),('Connie', 'Nielsen'),('Lilly', 'Aspell'),('Amr', 'Waked'),('Kristoffer', 'Polaha'),('Ben', 'Affleck'),
('Anna', 'Kendrick'),('J.K.', 'Simmons'),('Jon', 'Bernthal'),('Jeffrey', 'Tambor'),('Cynthia', 'Addai-Robinson'),('John', 'Lithgow'),
('Jean', 'Smart'),('Andy', 'Umberger'),('Alison', 'Wright'),('Daeg', 'Faerch'),('Seth', 'Lee'),('Tait', 'Fletcher'),('Angel', 'Giuffria'),
('Ron', 'Yuan'),('Scott', 'Hunter'),('Dennis', 'Keiffer'),('Jake', 'Presley'),('Hugh', 'Jackman'),('Allison', 'Janney'),('Geraldine', 'Viswanathan'),
('Rafael', 'Casal'),('Ray', 'Romano'),('Ben', 'Stiller'),('Robin', 'Williams'),('Carla', 'Gugino'),('Dick', 'Van Dyke'),('Steve', 'Coogan'),
('Jake', 'Cherry'),('Mickey', 'Rooney'),('Bill', 'Cobbs'),('Owen', 'Wilson'),('Rami', 'Malek'),('Gwilym', 'Lee'),('Ben', 'Hardy'),('Joseph', 'Mazzello'),
('Lucy', 'Boynton'),('Aidan', 'Gillen'),('Allen', 'Leech'),('Tom', 'Hollander'),('Mike', 'Myers'),('Julianne', 'Hough'),
('Diego', 'Boneta'),('Alec', 'Baldwin'),('Russell', 'Brand'),('Malin', 'Åkerman'),('Paul', 'Giamatti'),('Bryan', 'Cranston'),('Catherine', 'Zeta-Jones'),
('Mary J.', 'Blige'),('Joel', 'Courtney'),('Elle', 'Fanning'),('Riley', 'Griffiths'),('Kyle', 'Chandler'),('Noah', 'Emmerich'),
('AJ', 'Michalka'),('Ryan', 'Lee'),('Chris', 'Pratt'),('Bryce', 'Dallas Howard'),('Rafe', 'Spall'),
('Justice', 'Smith'),('Daniella', 'Pineda'),('James', 'Cromwell'),('Toby', 'Jones'),('Ted', 'Levine'),('Jeff', 'Goldblum'),('BD', 'Wong'),
('Geraldine', 'Chaplin'),('Harrison', 'Ford'),('Shia', 'LaBeouf'),('Cate', 'Blanchett'),('Karen', 'Allen'),('Ray', 'Winstone'),
('John', 'Hurt'),('Jim', 'Broadbent'),('Sean', 'Astin'),('Josh', 'Brolin'),('Jeff', 'Cohen'),('Corey', 'Feldman'),('Kerri', 'Green'),
('Martha', 'Plimpton'),('Jonathan', 'Ke Quan'),('Owen', 'Wilson'),('Vince', 'Vaughn'),('Will', 'Ferrell'),('Rose', 'Byrne'),
('Josh', 'Brener'),('Jessica', 'Szohr'),('Rob', 'Riggle'),('Rebecca', 'Hazlewood'),('Sacha', 'Dhawan'),('Blake', 'Lively'),('Óscar', 'Jaenada'),
('Janelle', 'Bailley'),('Jason', 'Clarke'),('Jake', 'Gyllenhaal'),('Raúl', 'Juliá'),('Anjelica', 'Huston'),('Christopher', 'Lloyd'),
('Christina', 'Ricci'),('Dominic', 'Cooper'),('Imogen', 'Poots'),('Ramón', 'Rodríguez'),('Michael', 'Keaton'),('Kid', 'Cudi'),('Dakota', 'Johnson'),
('Harrison', 'Gilbertson'),('Carmela', 'Zumbado'),('Jalil', 'Jay Lynch'),('Nick', 'Chinlund'),('Chad', 'Randall'),('Katherine', 'Parkinson'),
('Gemma', 'Chan'),('Emily', 'Berrington'),('Lucy', 'Carless'),('Colin', 'Morgan'),('Theo', 'Stevenson'),('Pixie', 'Daves'),('Tom', 'Goodman-Hill'),
('Ivanno', 'Jeremiah'),('Ruth', 'Bradley'),('Will', 'Tudor'),('Neil', 'Maskell'),('Billy', 'Jenkins'),('Bella', 'Dayne'),('Thusitha', 'Jayasumdera'),
('Danny', 'Webb'),('Carrie-Anne', 'Moss'),('William', 'Hurt'),('Chris', 'O\'Dowd'),('Richard', 'Ayoade'),('Matt', 'Berry'),('Noel', 'Fielding'),
('Peter', 'Serafinowicz'),('Gragam', 'Linehan'),('Tom', 'Binns'),('Lewis', 'Macleod'),
('Rebecca', 'Ferguson'),('Ryan', 'Reynolds'),('Hiroyuki', 'Sanada'),('Airyon', 'Bakare'),('Olga', 'Dihovichnaya'),('Naoko', 'Mori'),('Haruka', 'Kuroda'),('Camiel', 'Warren-Taylor'),
('Rosamund', 'Pike'),('Sam', 'Riley'),('Aneurin', 'Barnard'),('Anya', 'Taylor-Joy'),('Simon', 'Russell Beale'),('Jonathan', 'Aris'),
('Corey', 'Johnson'),('Tim', 'Woodward'),('Simona', 'Brown'),('Eve', 'Hewson'),('Toma', 'Bateman'),('Robert', 'Aramayo'),('Tyler', 'Howitt'),
('Georgie', 'Glen'),('Kamontip', 'Krissy Ashton'),('Rob', 'Horrocks'),('Joakim', 'Skarli'),('Michaela', 'Coel'),('Daniel', 'Lapaine'),
('Hannah', 'John-Kamen'),('Andrew', 'Roux'),('Claire', 'Keelan'),('Sinéad', 'Matthews'),('Anna', 'Wilson-Jones'),('Paul', 'Popplewell'),
('Julia', 'Davis'),('Ashely', 'Thomas'),('Kerrie', 'Hayes'),('Amy', 'Beth Hayes'),('Rebekah', 'Staton'),('Rhashan', 'Stone'),
('Phoebe', 'Fox'),('Jimi', 'Mistry'),('Tobias', 'Menzies'),('Cherry', 'Jones'),('Alice', 'Eve'),('Susannah', 'Fielding'),('Demetri', 'Goritsas'),
('Kadiff', 'Kirwan'),('Sope', 'Dirisu'),('Jackson', 'Bews'),('Annabel', 'Davis'),('Billy', 'Griffin Jr.'),('Paul', 'Lawrence Kitson'),
('Jeff', 'Mash'),('Patrick', 'Kennedy'),('Lydia', 'Wilson'),('Alastair', 'Mackenzie'),('Chetna', 'Pandya'),('Tuppence', 'Middleton'),
('Ian', 'Bonar'),('Elisabeth', 'Hopper'),('Nick', 'Bartlett'),('Wunmi', 'Mosaku'),('Alex', 'Lawther'),('Jerome', 'Flynn'),('Susannah', 'Doyle'),('Madeline', 'Brewer'),
('Ariane', 'Labed'),('Sarah', 'Snook'),('Michael', 'Kelly'),('Jola', 'Bokinni'),('Faye', 'Marsay'),('Benefict', 'Wong'),('Jonas', 'Karlsson'),
('Chloe', 'Pirrie'),('Eugene', 'O\'Hare'),('Indira', 'Ainger'),('James', 'Lance'),('David', 'Ajala'),('Sarah', 'Abbott'),('Maxine', 'Peake'),
('Jake', 'Davies'),('Clint', 'Dyer'),('Letitia', 'Wright'),('Babs', 'Olusanmokun'),('Georgina', 'Campbell'),('Jesse', 'Plemons'),('Jimmi', 'Simpson'),
('Aaron', 'Paul'),('Aldis', 'Hodge'),('Kiran', 'Sonia Sawar'),('Miley', 'Cyrus'),('Anthony', 'Mackie'),('Nicole', 'Beharie'),('Bryce', 'Dallas Howard'),
('Mackenzie', 'Davis'),('Gugu', 'Mbatha-Raw'),('Jamie', 'Foxx'),('Kerry', 'Washington'),('Regina', 'King'),('Harry', 'Lennix'),('Clifton', 'Powell'),
('Bokeem', 'Woodbine'),('Sharon', 'Warren'),('C.J.', 'Sanders'),('Curtis', 'Armstrong'),('Kate', 'Winslet'),('Julianne', 'Nicholson'),
('Jean', 'Smart'),('Angourie', 'Rice'),('Evan', 'Peters'),('Sosie', 'Bacon'),('David', 'Denman'),('Neal', 'Huff'),('James', 'McArdle'),
('Guy', 'Pearce'),('Cailee', 'Spaeny'),('John', 'Douglas Thompson'),('Joe', 'Tippett'),('Cameron', 'Mann'),('Chinasa', 'Ogbuagu'),
('Chris', 'Miller'),('Tom', 'McGrath'),('Danny', 'Jacobs'),('Andy', 'Richter'),('Nicole', 'Sullivan'),('Christopher', 'Knights'),
('Wayne', 'Knight'),('Dale', 'Midkiff'),('Fred', 'Gwynne'),('Denise', 'Crosby'),('Brad', 'Greenquist'),('Michael', 'Lombard'),('Miko', 'Hughes'),
('Blaze', 'Berdahl'),('Susan', 'Blommaert'),('Mara', 'Clark'),('Craig T.', 'Nelson'),('JoBeth', 'Williams'),('Beatrice', 'Straight'),
('Dominique', 'Dunne'),('Oliver', 'Robins'),('Heather', 'O\'Rourke'),('Michael', 'McManus'),('Virginia', 'Kiser'),('Martin', 'Casella'),
('Audrey', 'Tautou'),('Ian', 'McKellen'),('Jean', 'Reno'),('Paul', 'Bettany'),('Alfred', 'Molina'),('Jürgen', 'Prochnow'),('Jean-Yves', 'Berteloot'),
('Etienne', 'Chicot'),('Rowan', 'Atkinson'),('Natalie', 'Imbruglia'),('Ben', 'Miller'),('John', 'Malkovich'),('Greg', 'Wise'),('Tasha', 'de Vasconcelos'),
('Douglas', 'McFerran'),('Steve', 'Nicolson'),('Terence', 'Harvey'),('Frances', 'McDormand'),('Kate', 'Hudson'),('Patrick', 'Fugit'),
('Jason', 'Lee'),('Zoey', 'Deschanel'),('Michael', 'Angarano'),('Anna', 'Paquin'),('Fairuza', 'Balk'),('Joan', 'Cusack'),('Mike', 'White'),
('Sarah', 'Silverman'),('Lee', 'Wilkof'),('Kate', 'McGregor-Stewart'),('Adam', 'Pascal'),('Suzzane', 'Douglas'),('Miranda', 'Cosgrove'),
('Macaulay', 'Culkin'),('Joe', 'Pesci'),('Daniel', 'Stern'),('John', 'Heard'),('Catherine', 'O\'Hara'),('Roberts', 'Blossom'),('Devin', 'Ratray'),
('Michael C.', 'Maronna'),('Hillary', 'Wolf'),('Aasif', 'Mandvi'),('Max', 'Minghella'),('Josh', 'Brener'),('Dylan', 'O\'Brien'),('Tiya', 'Sircar'),('Tobit', 'Raphael'),
('Josh', 'Gad'),('Jessica', 'Szohr'),('Rob', 'Riggle'),('Eric', 'André'),('Harvey', 'Guillén'),('Gary', 'Anthony'),('Bruno', 'Amato'),
('B.J.', 'Novak'),('Karen', 'Ceesay'),('John', 'Goodman'),('Diedrich', 'Bader'),('Pippa', 'Black'),('Parvesh', 'Ceena'),('Thushari', 'Jayasekera'),
('Ben', 'Rappaport'),('Guru', 'Singh'),('Rizwan', 'Manji'),('Anisha', 'Nagarajan'),('Carla', 'Gallo'),('Radhika', 'Chaudhari'),('Nicholas', 'Logan'),
('Chelsea', 'Moody'),('Angelo', 'Josue'),('Lozano', 'Corzo'),('José', 'Manuel Trujillo Salas'),('Brett', 'Cullen'),('Sedona', 'Legge'),
('Pablo', 'Calva'),('Josh', 'Brolin'),('Jake', 'Gyllenhaal'),('Jogn', NULL),('Hawkes', NULL),('Sam', 'Worthington'),('Emily', 'Watson'),
('Martin', 'Henderson'),('Michael', 'Kelly'),('Keira', 'Knightley'),('Robin', 'Wright'),('Thomas M.', 'Wright'),('Clive', 'Standen'),('Naoko', 'Mori'),('Mia', 'Goth'),
('Elizabeth', 'Debicki'),('Tom', 'Goodman-Hill'),('Vanessa', 'Kirby'),('Carel', 'Struycken'),('Dan', 'Hedaya'),('Jimmy', 'Workman'),('Elizabeth', 'Wilson'),('Dana', 'Ivey'),
('Margot', 'Robbie'), ('Ewan', 'McGregor'), 
('Mary', 'Elizabeth Winstead'), ('Jurnee', 'Smollett'), 
('Rosie', 'Perez'), ('Chris', 'Messina'), 
('Chadwick', 'Boseman'), ('Michael B.', 'Jordan'), 
('Lupita', 'Nyong\'o'), ('Danai', 'Gurira'), 
('Martin', 'Freeman'), ('Daniel', 'Kaluuya'), 
('Génesis', 'Rodríguez'), ('Vincent', 'Piazza'), 
('Benjamin', 'Sokolow'), ('Emily', 'Bayiokos'), 
('Amy', 'Manson'), ('Luke', 'Allen-Gale'), 
('Nina', 'Bergman'), ('Dominic', 'Mafham'), 
('James', 'Weber Brown'), ('Lorina', 'Kamburova')
AS new_values
ON DUPLICATE KEY UPDATE 
    nombre = new_values.nombre,
    apellido = new_values.apellido;

#INSERTAR EN contenido_actores
INSERT INTO contenido_actores (id_contenido, id_actor)
SELECT 1, id FROM actores 
WHERE nombre IN ('Pedro', 'Carl', 'Misty', 'Chris', 'Rio', 'Giancarlo')
AND apellido IN ('Pascal', 'Weathers', 'Rosas', 'Bartlett', 'Hackford', 'Esposito')
UNION ALL
SELECT 2, id FROM actores 
WHERE nombre IN ('Tom', 'David', 'Emmy', 'Robert', 'Aidan', 'Elliot')
AND apellido IN ('Hopper', 'Castañeda', 'Raver-Lampman', 'Sheehan', 'Gallagher', 'Page')
UNION ALL
SELECT 3, id  FROM actores
WHERE nombre IN ('Anya','Thomas','Harry','Moses','Chloe','Janina' )
AND apellido IN ('Taylor-Joy','Brodie-Sangster','Melling','Ingram','Pirrie','Elkin')
UNION ALL
SELECT 4, id  FROM actores 
WHERE nombre IN ('Lili','Casey','Camila','Marisol','Madelaine','Mädchen')
AND apellido IN ('Reinhart','Cott','Mendes','Nichols','Petsch','Amick')
UNION ALL
SELECT 5, id  FROM actores 
WHERE nombre IN ('Claire','Olivia','Matt','Tobias','Vanesa','Helena')
AND apellido IN ('Fox','Colman','Smith','Menzies','Kirby','Bonham Carter')
UNION ALL
SELECT 6, id  FROM actores 
WHERE nombre IN ('Millie','Henry','Sam','Helena','Louis','Adeel')
AND apellido IN ('Bobby Brown','Cavill','Claflin','Bonham Carter','Partridge','Akhtar')
UNION ALL
SELECT 7, id  FROM actores 
WHERE nombre IN ('Joaquin','Robert','Zazie','Frances','Brett','Shea')
AND apellido IN ('Phoenix','De Niro','Beetz','Conroy','Cullen','Whigham')
UNION ALL
SELECT 8, id  FROM actores 
WHERE nombre IN ('Robert','Chris','Mark','Chris','Scarlett','Jeremy')
AND apellido IN ('Downey Jr.','Evans','Ruffalo','Hemsworth','Johansson','Renner')
UNION ALL
SELECT 9, id  FROM actores 
WHERE nombre IN ('Emilia','Lena','Sophie','Kit','Peter','Nikolaj')
AND apellido IN ('Clarke','Headey','Turner','Harington','Dinklage','Coster-Waldau')
UNION ALL
SELECT 10, id  FROM actores 
WHERE nombre IN ('Grant','Carlos','Danielle','Candice','Jesse','Tom')
AND apellido IN ('Gustin','Valdes','Panabaker','Patton','L. Martin','Cavanagh')
UNION ALL
SELECT 11, id  FROM actores 
WHERE nombre IN ('Jim','Johnny','Kaley','Simon','Kunal','Melissa','Mayim')
AND apellido IN ('Parsons','Galecki','Cuoco','Helberg','Nayyar','Rauch','Bialik')
UNION ALL
SELECT 12, id  FROM actores 
WHERE nombre IN ('Jennifer','Courteney','Lisa','David','Matthew','Matt')
AND apellido IN ('Aniston','Cox','Kudrow','Schwimmer','Perry','LeBlanc')
UNION ALL
SELECT 13, id  FROM actores 
WHERE nombre IN ('Amybeth','Geraldine' ,'R. H.','Corrine','Dalila','Lucas')
AND apellido IN ('McNulty','James','Thomson','Koslo','Bela','Jade Zumann')
UNION ALL
SELECT 14, id  FROM actores 
WHERE nombre IN ('Gillian','David' ,'Mitch','Robert','Tom','Bruce')
AND apellido IN ('Anderson','Duchovny','Pileggi','Patrick','Braidwood','Harwood')
UNION ALL
SELECT 15, id  FROM actores 
WHERE nombre IN ('Jared','Stellan' ,'Emily','Paul','Jessie','Adam')
AND apellido IN ('Harris','Skarsgård','Watson','Ritter','Buckley','Nagaitis')
UNION ALL
SELECT 16, id  FROM actores 
WHERE nombre IN ('Evan','Thandiwe','Jeffrey','Tessa','Ed','Luke','Rodrigo','Simon','Clifton','Anthony','Ingrid','Angela','Shannon','Talulah','Louis','Ben','Jimmi','Leonardo','Aaron','Vincent' ,'Izabella' , 'Jeff')
AND apellido IN ('Rachel Wood','Newton','Wright','Thompson','Harris','Hemsworth','Santoro','Quarterman','Collins Jr','Hopkins','Bolsø Berdal','Sarafyan','Woodward','Riley','Herthum','Barnes','Simpson','Nam','Paul','Cassel','Alvarez','Daniel Phillips')
UNION ALL
SELECT 17, id FROM actores 
WHERE nombre IN ('Lee', 'Scoot', 'Mackenzie', 'Kerry', 'Toby', 'Alana')
AND apellido IN ('Pace', 'McNairy', 'Davis', 'Bishé', 'Huss', 'Cavanaugh')
UNION ALL
SELECT 18, id FROM actores 
WHERE nombre IN ('Jessica', 'John', 'Colin', 'Common', 'Geena', 'Ioan')
AND (apellido IN ('Chastain', 'Malkovich', 'Farrell', 'Davis', 'Gruffudd') OR apellido IS NULL)
UNION ALL
SELECT 19, id FROM actores 
WHERE nombre IN ('Margot', 'Ewan', 'Mary', 'Jurnee', 'Rosie', 'Chris')
AND (apellido IN ('Robbie', 'McGregor', 'Elizabeth Winstead', 'Smollett','Perez','Messina'))
UNION ALL
SELECT 20, id FROM actores 
WHERE nombre IN ('Stacy', 'Rhona', 'Theo', 'Peter', 'Lia', 'Toby')
AND (apellido IN ('Martin', 'Mitra', 'James', 'Ferdinando','Williams','Jones'))
UNION ALL
SELECT 21, id FROM actores 
WHERE nombre IN ('Miranda','Kate','Omar','Angus','Jorja','Enver')
AND (apellido IN ('Cosgrove', 'Walsh', 'Epps', 'Macfadyen','Fox','Gjokaj'))
UNION ALL
SELECT 22, id FROM actores 
WHERE nombre IN ('Bill','Jessica','Bill','James','Isaiah','Jay')
AND (apellido IN ('Skarsgård','Chastain','Hader','McAvoy','Mustafa','Ryan'))
UNION ALL
SELECT 23, id FROM actores 
WHERE nombre IN ('Chadwick','Michael','Lupita','Danai','Martin','Daniel')
AND (apellido IN ('Boseman','B. Jordan','Nyong\'o','Gurira','Freeman','Kaluuya'))
UNION ALL
SELECT 24, id FROM actores 
WHERE nombre IN ('Christian','Matt','Caitriona','Josh','Noah', 'Jon')
AND (apellido IN ('Bale','Damon','Balfe','Lucas','Jupe','Kaluuya'))
UNION ALL
SELECT 25, id FROM actores 
WHERE nombre IN ('Génesis','Vincent','Benjamin','Emily')
AND (apellido IN ('Rodríguez','Piazza','Sokolow','Bayiokos'))
UNION ALL
SELECT 26, id FROM actores 
WHERE nombre IN ('Amy','Luke','Nina','Dominic','James','Lorina')
AND (apellido IN ('Manson','Allen-Gale','Bergman','Mafham','Weber Brown','Kamburova'))
UNION ALL
SELECT 27, id FROM actores 
WHERE nombre IN ('Marion','Matt','Laurence','Jude','Kate','Jennifer','Gwyneth')
AND (apellido IN ('Cotillard','Damon','Fishburne','Law','Winslet','Ehle','Paltrow'))
UNION ALL
SELECT 28, id FROM actores 
WHERE nombre IN ('Scarlett','Florence','David','O.T.','Rachel','William','Ray')
AND (apellido IN ('Johansson','Pugh','Harbour','Fagbenle','Weisz','Hurt','Winstone'))
UNION ALL
SELECT 29, id FROM actores 
WHERE nombre IN ('Matt','Jessica','Kristen','Jeff','Michael','Sean','Kate')
AND (apellido IN ('Damon','Chastain','Wiig','Daniels','Peña','Bean','Mara'))
UNION ALL
SELECT 30, id FROM actores 
WHERE nombre IN ('Alicia','Domhnall','Oscar','Sonoya','Corey','Claire','Gana')
AND (apellido IN ('Vikander','Gleeson','Isaac','Mizuno','Johnson','Selby','Bayarsaikhan'))
UNION ALL
SELECT 31, id FROM actores 
WHERE nombre IN ('Bryce','Chris','Irrfan','Vincent','Omar','Nick','Judy')
AND (apellido IN ('Dallas Howard','Pratt','Khan','D\'Onofrio','Sy','Robinson','Greer'))
UNION ALL
SELECT 32, id FROM actores 
WHERE nombre IN ('Will','Alice','Charlie','Dash','Salli','Willow','Emma')
AND (apellido IN ('Smith','Braga','Tahan','Mihok','Richardson-Whitfield','Smith','Thompson'))
UNION ALL
SELECT 33, id FROM actores 
WHERE nombre IN ('Ryan','Claire','Jason','Kyle','Corey','Patrick')
AND (apellido IN ('Gosling','Foy','Clarke','Chandler','Stoll','Fugit'))
UNION ALL
SELECT 34, id FROM actores 
WHERE nombre IN ('John','Scott','Cailee','Jing','Rinko','Burn')
AND (apellido IN ('Boyega','Eastwood','Spaeny','Tian','Kikuchi','Gorman'))
UNION ALL
SELECT 35, id FROM actores 
WHERE nombre IN ('Ahston','Dermot','Josh','Lukas','Matthew','J.K.','Lesley Ann')
AND (apellido IN ('Kutcher','Mulroney','Gad','Haas','Modine','Simmons','Warren'))
UNION ALL
SELECT 36, id FROM actores 
WHERE nombre IN ('Noah','Anthony','Joey','J.G.','Wayne','Sheila','Gemma','John')
AND (apellido IN ('Wyle','Michael','Slotnick','Hertzler','Pére','Shaw','Zamprogna','DiMaggio'))
UNION ALL
SELECT 37, id FROM actores 
WHERE nombre IN ('Jesse','Andrew','Justin','Armie','Max','Rooney','Brenda','Rashida','John')
AND (apellido IN ('Eisenberg','Garfield','Timberlake','Hammer','Minghella','Mara','Song','Jones','Gertz'))
UNION ALL
SELECT 38, id FROM actores 
WHERE nombre IN ('Ryan','Rachael','Tim','Claire','Richard','Tygh','Ned','Tyler')
AND (apellido IN ('Phillippe','Leigh Cook','Robbins','Forlani','Rountree','Runyan','Bellamy','Labine'))
UNION ALL
SELECT 39, id FROM actores 
WHERE nombre IN ('Anna','Daniel','Shamier','Toni')
AND (apellido IN ('Kendrick','Dae Kim','Anderson','Collette'))
UNION ALL
SELECT 40, id FROM actores 
WHERE nombre IN ('Ben', 'Henry', 'Gal', 'Jason', 'Ezra','Ray', 'Amy', 'Jeremy', 'Connie')
AND (apellido IN ('Affleck','Cavill','Gadot','Momoa','Miller','Fisher','Adams','Irons','Nielsen'))
UNION ALL
SELECT 41, id FROM actores 
WHERE nombre IN ('Charlie', 'Jon', 'Angus T.', 'Conchata', 'Holland','Marin', 'Jennifer', 'Melanie', 'Ashton','Amber')
AND (apellido IN ('Sheen','Cryer','Jones','Ferrel','Taylor','Hinkle','Bini Taylor','Lynskey','Kutcher','Tamblyn'))
UNION ALL
SELECT 42, id FROM actores 
WHERE nombre IN ('Úrsula', 'Álvaro', 'Itziar', 'Pedro','Alba','Miguel', 'Jaime', 'Esther', 'Enrique')
AND (apellido IN ('Corberó','Morte','Ituño','Alonso','Flores','Herrán','Lorente','Acebo','Arce'))
UNION ALL
SELECT 43, id FROM actores 
WHERE nombre IN ('Winona' , 'David' , 'Finn' , 'Millie', 'Gaten' , 'Caleb' , 'Natalia' , 'Charlie', 'Heaton', 'Joe')
AND (apellido IN ('Ryder','Harbour','Wolfhard',' Bobby Brown','Matarazzo','McLaughlin','Dyer','Keery') OR apellido IS NULL)
UNION ALL
SELECT 44, id FROM actores 
WHERE nombre IN ('Sandra','George','Ed','Orto','Phaldut','Amy','Basher','Adam')
AND (apellido IN ('Bullock','Clooney','Harris','Ignatiussen','Sharma','Warren','Savage','Cozens'))
UNION ALL
SELECT 45, id FROM actores 
WHERE nombre IN ('Jaeden','Jeremy','Sophia','Finn','Chosen','Jack','Wyatt','Bill','Nicholas')
AND (apellido IN ('Martell','Ray','Lillis','Wolfhard','Jacobs','Dylan','Oleff','Skarsgård','Hamilton'))
UNION ALL
SELECT 46, id FROM actores 
WHERE nombre IN ('Tom', 'Bill', 'Kevin', 'Gary', 'Ed', 'Kathleen', 'Roger','Chris', 'Xander')
AND (apellido IN ('Hanks','Paxton','Bacon','Sinise','Harris','Quinlan','Corman','Ellis','Berkeley'))
UNION ALL
SELECT 47, id FROM actores 
WHERE nombre IN ('Liev','Julia' ,'Seamus','David' ,'Pete' ,'Mia', 'Predrag' , 'Carlo', 'Amy')
AND (apellido IN ('Schreiber','Stiles','Davey-Fitzpatrick','Thewils','Postlethwaite','Farrow','Bjelac','Sabatini','Huck'))
UNION ALL
SELECT 48, id FROM actores 
WHERE nombre IN ('Ellen','Linda','Max','Lee J.','Kitty','Jack')
AND (apellido IN ('Burstyn','Blair','vox Sydow','Cobb','Winn','MacGowran'))
UNION ALL
SELECT 49, id FROM actores 
WHERE nombre IN ('Rainn','Steve','Jenna','John','B.J.','Kate','Brian','Leslie David','Mindy','Angela')
AND (apellido IN ('Wilson','Carell','Fischer','Krasinski','Novak','Flannery','Baumgartner','Baker','Kaling','Kinsey'))
UNION ALL
SELECT 50, id FROM actores 
WHERE nombre IN ('Freddie', 'Antonia','Hill','Richard','Christina','Paige','Fiona','Will Yun','Nicholas')
AND (apellido IN ('Highmore','Thomas','Harper','Schiff','Chang','Spara','Gubelmann','Lee','Gonzalez'))
UNION ALL
SELECT 51, id FROM actores 
WHERE nombre IN ('Eddie','Felicity', 'Charlie', 'Emily', 'Simon', 'David', 'Maxine', 'Harry', 'Tom')
AND (apellido IN ('Redmayne','Jones','Cox','Watson','McBurney','Thewlis','Peake','Lloyd','Prior'))
UNION ALL
SELECT 52, id FROM actores 
WHERE nombre IN ('Benedict','Keira', 'Matthew', 'Rory', 'Allen', 'Matthew', 'Charles' , 'Mark', 'James')
AND (apellido IN ('Cumberbatch','Knightley','Goode','Kinnear','Leech', 'Beard', 'Dance', 'Strong', 'Northcote'))
UNION ALL
SELECT 53, id FROM actores 
WHERE nombre IN ('Taraji P.', 'Octavia' , 'Janelle' , 'Kevin' , 'Kirsten' ,'Jim' , 'Mahershala' , 'Glen' ,'Ariana')
AND (apellido IN ('Henson','Spencer','Monáe','Costner','Dunst','Parsons','Ali','Powell','Neal'))
UNION ALL
SELECT 54, id FROM actores 
WHERE nombre IN ('Russell','Jennifer','Ed','Paul','Christopher','Josh','Adam','Anthony','Judd')
AND (apellido IN ('Crowe','Connelly','Harris','Bettany','Plummer','Lucas','Goldberg','Rapp','Hirsch'))
UNION ALL
SELECT 55, id FROM actores 
WHERE nombre IN ('Jennifer','Chris','Michael','Laurence','Andy','Aurora','Kristin','Julee','Fred')
AND (apellido IN ('Lawrence','Pratt','Sheen','Fishburne','García','Perrineau','Brock','Cerda','Melamed'))
UNION ALL
SELECT 56, id FROM actores 
WHERE nombre IN ('Anne','Patrick','Andre','Dianne','David','William B.','Ryan','Clea','Don')
AND (apellido IN ('Hathaway','Wilson','Braugher','Wiest','Morse','Davis','Robbins','DuVall','Thompson'))
UNION ALL
SELECT 57, id FROM actores 
WHERE nombre IN ('Ben','Bryan','Alan','Jogn','Victor','Tate','Clea','Scoot','Rory','Kerry')
AND (apellido IN ('Affleck','Cranston','Arkin','Goodman','Garber','Donovan','DuVall','McNairy','Cochrane','Bishé'))
UNION ALL
SELECT 58, id FROM actores 
WHERE nombre IN ('Noomi','Michael','Charlize','Logan','Guy','Idris','Sean','Rafe','Kate','Emut','Benedict','Lucy','Patrick','Ian','Branwell','Vladimir','C.C.','Shane','John')
AND (apellido IN ('Rapace','Fassbender','Theron','Marshall-Green','Pearce','Elba','Harris','Spall','Dickie','Elliott','Wong','Hutchinson','Wilson','Whyte','Donaghey','Furdik','Smiff','Steyn','Lebar'))
UNION ALL
SELECT 59, id FROM actores 
WHERE nombre IN ('Michael','Waterston','Crudup','McBride','Bichir','Ejogo','Smollett','Callie','Amy','Nathaniel','Alexander','Benjamin','Uli','Tess','Andrew','Guy','James','Noomi','Javier')
AND (apellido IN ('Fassbender','Waterston','Crudup','McBride','Bichir','Ejogo','Smollett','Hernandez','Seimetz','Dean','England','Rigby','Latukefu','Haubrich','Crawford','Pierce','Franco','Rapace','rBotet'))
UNION ALL
SELECT 60, id FROM actores 
WHERE nombre IN ('Jake', 'Rebecca', 'Ryan', 'Hiroyuki', 'Airyon', 'Olga', 'Naoko', 'Haruka', 'Camiel')
AND apellido IN ('Gyllenhaal', 'Ferguson', 'Reynolds', 'Sanada', 'Bakare', 'Dihovichnaya', 'Mori', 'Kuroda', 'Warren-Taylor')
UNION ALL
SELECT 61, id FROM actores 
WHERE nombre IN ('Rosamund', 'Sam', 'Aneurin', 'Anya', 'Simon', 'Jonathan', 'Corey', 'Tim', 'Katherine')
AND apellido IN ('Pike', 'Riley', 'Barnard', 'Taylor-Joy', 'Russell Beale', 'Aris', 'Johnson', 'Woodward', 'Parkinson')
UNION ALL
SELECT 62, id FROM actores 
WHERE nombre IN ('Chris', 'Richard', 'Katherine', 'Matt', 'Noel', 'Peter', 'Gragam', 'Tom', 'Lewis')
AND apellido IN ('O\'Dowd', 'Ayoade', 'Parkinson', 'Berry', 'Fielding', 'Serafinowicz', 'Linehan', 'Binns', 'Macleod')
UNION ALL
SELECT 63, id FROM actores 
WHERE nombre IN ('Katherine', 'Gemma', 'Emily', 'Lucy', 'Colin', 'Theo', 'Pixie', 'Tom', 'Ivanno', 'Ruth', 'Will', 'Neil', 'Billy', 'Bella', 'Thusitha', 'Danny', 'Carrie-Anne', 'William')
AND (apellido IN ('Parkinson', 'Chan', 'Berrington', 'Carless', 'Morgan', 'Stevenson', 'Daves', 'Goodman-Hill', 'Jeremiah', 'Bradley', 'Tudor', 'Maskell', 'Jenkins', 'Dayne', 'Jayasumdera', 'Webb', 'Moss', 'Hurt'))
UNION ALL
SELECT 64, id FROM actores 
WHERE nombre IN ('Aaron', 'Dominic', 'Imogen', 'Ramón', 'Michael', 'Rami', 'Kid', 'Dakota', 'Harrison', 'Carmela', 'Jalil', 'Nick', 'Chad') 
AND apellido IN ('Paul', 'Cooper', 'Poots', 'Rodríguez', 'Keaton', 'Malek', 'Cudi', 'Johnson', 'Gilbertson', 'Zumbado', 'Lynch', 'Chinlund', 'Randall')
UNION ALL
SELECT 65, id FROM actores 
WHERE nombre IN ('Kate','Julianne','Jean','Angourie','Evan','Sosie','David','Neal','James','Guy','Cailee','John','Joe','Cameron','Chinasa')
AND apellido IN ('Winslet','Nicholson','Smart','Rice','Peters','Bacon','Denman','Huff','McArdle','Pearce','Spaeny','Thompson','Tippett','Mann','Ogbuagu')
UNION ALL
SELECT 66, id FROM actores 
WHERE nombre IN ('Jamie','Kerry','Regina','Harry','Clifton','Bokeem','Sharon','C.J.','Curtis')
AND apellido IN ('Foxx','Washington','King','Lennix','Powell','Woodbine','Warren','Sanders','Armstrong')
UNION ALL
SELECT 67, id FROM actores 
WHERE nombre IN ('Michaela','Daniel','Hannah','Andrew','Claire','Sinéad','Anna','Paul','Julia','Ashely',
                 'Kerrie','Amy','Rebekah','Rhashan','Phoebe','Jimi','Tobias','Cherry','Alice',
                 'Susannah','Demetri','Kadiff','Sope','Jackson','Annabel','Billy','Paul',
                 'Jeff','Patrick','Lydia','Alastair','Chetna','Tuppence','Ian','Elisabeth',
                 'Nick','Wunmi','Alex','Jerome','Susannah','Madeline','Ariane','Sarah',
                 'Michael','Jola','Faye','Benefict','Jonas','Chloe','Eugene','Indira',
                 'James','David','Sarah','Maxine','Jake','Clint','Letitia','Babs','Georgina',
                 'Jesse','Jimmi','Aaron','Aldis','Kiran','Miley','Anthony','Nicole','Bryce',
                 'Mackenzie','Gugu')
AND apellido IN ('Coel','Lapaine','John-Kamen','Roux','Keelan','Matthews','Wilson-Jones',
                 'Popplewell','Davis','Thomas','Hayes','Hayes','Staton','Stone','Fox','Mistry',
                 'Menzies','Jones','Eve','Fielding','Goritsas','Kirwan','Dirisu','Bews',
                 'Davis','Griffin','Kitson','Mash','Kennedy','Wilson','Mackenzie','Pandya',
                 'Middleton','Bonar','Hopper','Bartlett','Mosaku','Lawther','Flynn','Doyle',
                 'Brewer','Labed','Snook','Kelly','Bokinni','Marsay','Wong','Karlsson',
                 'Pirrie','O\'Hare','Ainger','Lance','Ajala','Abbott','Peake','Davies','Dyer',
                 'Wright','Olusanmokun','Campbell','Plemons','Simpson','Paul','Hodge',
                 'Sawar','Cyrus','Mackie','Beharie','Howard','Davis','Mbatha-Raw')
UNION ALL
SELECT 68, id FROM actores 
WHERE nombre IN ('Simona','Eve','Toma','Robert','Tyler','Georgie','Kamontip','Rob','Joakim')
AND apellido IN ('Brown','Hewson','Bateman','Aramayo','Howitt','Glen','Ashton','Horrocks','Skarli')
UNION ALL
SELECT 69, id FROM actores 
WHERE nombre IN ('Joaquin','Scarlett','Amy','Rooney','Olivia','Chris','Matt','Portia','Spike')
AND apellido IN ('Phoenix','Johansson','Adams','Mara','Wilde','Pratt','Letscher','Doubleday','Jonze')
UNION ALL
SELECT 70, id FROM actores 
WHERE nombre IN ('Tom','Jon','Emmanuelle','Henry','Jean','Ving','Kristin','Vanessa','Ingeborga')
AND apellido IN ('Cruise','Voight','Béart','Czerny','Reno','Rhames','Scott Thomas','Redgrave','Dapkünaitè')
UNION ALL
SELECT 71, id FROM actores 
WHERE nombre IN ('Henry','Armie','Alicia','Elizabeth','Luca','Sylvester','Hugh','Jared','Christian','Misha','Guy','Marianna')
AND apellido IN ('Cavill','Hammer','Vikander','Debicki','Calvani','Groth','Grant','Harris','Berkel','Kuznetsov','Williams','Di Martino')
UNION ALL
SELECT 72, id FROM actores 
WHERE nombre IN ('Dwayne','Kevin','Jack','Karen','Nick','Rhys','Bobby','Alex','Ser''Darius','Madison','Morgan','Sean','Mason','Marin','Colin')
AND apellido IN ('Johnson','Hart','Black','Gillan','Jonas','Darby','Cannavale','Wolff','Blain','Iseman','Turner','Buxton','Guccione','Hinkle','Hanks')
UNION ALL
SELECT 73, id FROM actores 
WHERE nombre IN ('Dwayne','Kevin','Jack','Karen','Awkwafina','Nick','Rhys','Bobby','Alex','Ser''Darius','Madison','Morgan','Sean','Mason','Marin','Colin','Danny','Glover')
AND apellido IN ('Johnson','Hart','Black','Gillan','Jonas','Darby','Cannavale','Wolff','Blain','Iseman','Turner','Buxton','Guccione','Hinkle','Hanks','DeVito')
UNION ALL
SELECT 74, id FROM actores 
WHERE nombre IN ('Gal','Chris','Kristen','Pedro','Robin','Connie','Lilly','Amr','Kristoffer')
AND apellido IN ('Gadot','Pine','Wiig','Pascal','Wright','Nielsen','Aspell','Waked','Polaha')
UNION ALL
SELECT 75, id FROM actores 
WHERE nombre IN ('Ben','Anna','J.K.','Jon','Jeffrey','Cynthia','John','Jean','Andy','Alison','Daeg','Seth','Tait','Angel','Ron','Scott','Dennis','Jake')
AND apellido IN ('Affleck','Kendrick','Simmons','Bernthal','Tambor','Addai-Robinson','Lithgow','Smart','Umberger','Wright','Faerch','Lee','Fletcher','Giuffria','Yuan','Hunter','Keiffer','Presley')
UNION ALL
SELECT 76, id FROM actores 
WHERE nombre IN ('Hugh','Allison','Geraldine','Alex','Rafael','Stephen','Annaleigh','Ray','Hari','Jeremy','Stephanie','Catherine','Kathrine','Ray')
AND apellido IN ('Jackman','Janney','Viswanathan','Wolff','Casal','Spinella','Ashford','Romano','Dhillon','Shamos','Kurtzuba','Curtin','Narducci','Abruzzo')
UNION ALL
SELECT 77, id FROM actores 
WHERE nombre IN ('Ben','Robin','Carla','Dick','Steve','Jake','Mickey','Bill','Owen','Ricky','Kim','Rami','Mizuo')
AND apellido IN ('Stiller','Williams','Gugino','Van Dyke','Coogan','Cherry','Rooney','Cobbs','Wilson','Gervais','Raver','Malek','Peck')
UNION ALL
SELECT 78, id FROM actores 
WHERE nombre IN ('Rami','Gwilym','Ben','Joseph','Lucy','Aidan','Allen','Tom','Mike')
AND apellido IN ('Malek','Lee','Hardy','Mazzello','Boynton','Gillen','Leech','Hollander','Myers')
UNION ALL
SELECT 79, id FROM actores 
WHERE nombre IN ('Julianne','Diego','Tom','Alec','Russell','Malin','Paul','Bryan','Catherine','Mary','Erica','Shane','James','Will','Eli')
AND apellido IN ('Hough','Boneta','Cruise','Baldwin','Brand','Åkerman','Giamatti','Cranston','Zeta-Jones','Blige','Frene','Hartline','Kelly','Forte','Roth')
UNION ALL
SELECT 80, id FROM actores 
WHERE nombre IN ('Joel','Elle','Riley','Kyle','Noah','AJ','Ryan','Ron','Gabriel')
AND apellido IN ('Courtney','Fanning','Griffiths','Chandler','Emmerich','Michalka','Lee','Eldard','Basso')
UNION ALL
SELECT 81, id FROM actores 
WHERE nombre IN ('Chris','Bryce','Rafe','Justice','Daniella','James','Toby','Ted','Jeff','BD','Geraldine','Isabella','Kevin')
AND apellido IN ('Pratt','Dallas Howard','Spall','Smith','Pineda','Cromwell','Jones','Levine','Goldblum','Wong','Chaplin','Sermon','Layne')
UNION ALL
SELECT 82, id FROM actores 
WHERE nombre IN ('Harrison','Shia','Cate','Karen','Ray','John','Jim','Igor','Dimitri')
AND apellido IN ('Ford','LaBeouf','Blanchett','Allen','Winstone','Hurt','Broadbent','Jijikine','Diatchenko')
UNION ALL
SELECT 83, id FROM actores 
WHERE nombre IN ('Sean','Josh','Jeff','Corey','Kerri','Martha','Jonathan','Jogn','Robert')
AND apellido IN ('Astin','Brolin','Cohen','Feldman','Green','Plimpton','Ke Quan','matuszak','Davi')
UNION ALL
SELECT 84, id FROM actores 
WHERE nombre IN ('Owen','Bonnie','Paul','Larry','Tony','Cheech','Michael','George','Paul')
AND apellido IN ('Wilson','Hunt','Newman','the Cable Guy','Shalhoub','Marin','Wallis','Carlin','Dooley')
UNION ALL
SELECT 85, id FROM actores 
WHERE nombre IN ('John', 'Chris', 'Tom', 'Danny', 'Andy', 'Nicole', 'Christopher', 'Wayne')
AND apellido IN ('DiMaggio', 'Miller', 'McGrath', 'Jacobs', 'Richter', 'Sullivan', 'Knights', 'Knight')
UNION ALL
SELECT 86, id FROM actores 
WHERE nombre IN ('Dale','Fred','Denise','Brad','Michael','Miko','Blaze','Susan','Mara')
AND apellido IN ('Midkiff','Gwynne','Crosby','Greenquist','Lombard','Hughes','Berdahl','Blommaert','Clark')
UNION ALL
SELECT 87, id FROM actores 
WHERE nombre IN ('Craig T.','JoBeth','Beatrice','Dominique','Oliver','Heather','Michael','Virginia','Martin')
AND apellido IN ('Nelson','Williams','Straight','Dunne','Robins','O''Rourke','McManus','Kiser','Casella')
UNION ALL
SELECT 88, id FROM actores 
WHERE nombre IN ('Tom','Audrey','Ian','Jean','Paul','Alfred','Jürgen','Jean-Yves','Etienne') 
AND apellido IN ('Hanks','Tautou','McKellen','Reno','Bettany','Molina','Prochnow','Berteloot','Chicot')
UNION ALL
SELECT 89, id FROM actores 
WHERE nombre IN ('Rowan','Natalie','Ben','John','Greg','Tasha','Douglas','Steve','Terence') 
AND apellido IN ('Atkinson','Imbruglia','Miller','Malkovich','Wise','de Vasconcelos','McFerran','Nicolson','Harvey')
UNION ALL
SELECT 90, id FROM actores 
WHERE nombre IN ('Billy','Frances','Kate','Patrick','Jason','Zoey','Michael','Anna','Fairuzza') 
AND apellido IN ('Crudup','McDormand','Hudson','Fugit','Lee','Deschanel','Angarano','Paquin','Balk')
UNION ALL
SELECT 91, id FROM actores 
WHERE nombre IN ('Jack','Joan','Mike','Sarah','Lee','Kate','Adam','Suzzane','Miranda') 
AND apellido IN ('Black','Cusack','White','Silverman','Wilkof','McGregor-Stewart','Pascal','Douglas','Cosgrove')
UNION ALL
SELECT 92, id FROM actores 
WHERE nombre IN ('Macaulay','Joe','Daniel','John','Catherine','Roberts','Devin','Michael C.','Hillary') 
AND apellido IN ('Culkin','Pesci','Stern','Heard','O''Hara','Blossom','Ratray','Maronna','Wolf')
UNION ALL
SELECT 93, id FROM actores 
WHERE nombre IN ('Owen','Vince','Will','Rose','Aasif','Max','Josh','Dylan','Tiya','Tobit','Josh','Jessica','Rob','Eric','Harvey','Gary','Bruno','B.J.','Karen','John') 
AND apellido IN ('Wilson','Vaughn','Ferrell','Byrne','Mandvi','Minghella','Brener','O''Brien','Sircar','Raphael','Gad','Szohr','Riggle','André','Guillén','Williams','Amato','Novak','Ceesay','Goodman')
UNION ALL
SELECT 94, id FROM actores 
WHERE nombre IN ('Rebecca','Sacha','Diedrich','Pippa','Parvesh','Thushari','Ben','Guru','Rizwan','Anisha','Carla','Radhika','Nicholas') 
AND apellido IN ('Hazlewood','Dhawan','Bader','Black','Ceena','Jayasekera','Rappaport','Singh','Manji','Nagarajan','Gallo','Chaudhari','Logan')
UNION ALL
SELECT 95, id FROM actores 
WHERE nombre IN ('Blake','Óscar','Janelle','Chelsea','Angelo','Lozano','José','Brett','Sedona','Pablo') 
AND apellido IN ('Lively','Jaenada','Bailley','Moody','Josue','Corzo','Trujillo Salas','Cullen','Legge','Calva')
UNION ALL
SELECT 96, id FROM actores 
WHERE nombre IN ('Jason','Josh','Jake','Jogn','Sam','Emily','Martin','Michael','Keira','Robin','Thomas','Clive','Naoko','Mia','Elizabeth','Tom','Vanessa') 
AND apellido IN ('Clarke','Brolin','Gyllenhaal','Hawkes','Worthington','Watson','Henderson','Kelly','Knightley','Wright','M. Wright','Standen','Mori','Goth','Debicki','Goodman-Hill','Kirby')
UNION ALL
SELECT 97, id FROM actores 
WHERE nombre IN ('Raúl','Anjelica','Christopher','Christina','Carel','Dan','Jimmy','Elizabeth','Dana') 
AND apellido IN ('Juliá','Huston','Lloyd','Ricci','Struycken','Hedaya','Workman','Wilson','Ivey')
ON DUPLICATE KEY UPDATE id_actor = id_actor;

#INSERTAR DATOS EN contenidos_generos

INSERT INTO contenido_generos (id_contenido, id_genero)
VALUES 
(1, 5),(1, 7),(1, 4),
(2, 5),(2, 7),(2, 2),
(3, 2),(3, 3), (3, 24),
(4, 2), (4, 14), (4, 3),
(5, 2), (5, 15),
(6, 3), (6, 2), (6, 14),
(7, 16), (7, 6),
(8, 13), (8, 5),(8,4),
(9, 7), (9, 13), (9, 2),
(10, 5), (10, 7), (10, 4),
(11, 9), (11, 7), (11, 3),
(12, 9), (12, 11), (12, 2),
(13, 2), (13, 11), (13, 12),
(14, 2), (14, 5), (14, 6),
(15, 2), (15, 15),
(16, 12), (16, 5), (16, 2),
(17, 3), (17, 2), (17, 17),
(18, 4), (18, 2), (18, 6),
(19, 1),(19, 4), (19, 3), (19, 9),
(20, 4), (20, 5), (20, 6),
(21, 5), (21, 6), (21, 10),
(22, 8), (22, 6), (22, 7),
(23, 4), (23, 13), (23, 7),
(24, 2), (24, 18), (24, 13),
(25, 2), (25, 6), (25, 19),
(26, 8), (26, 4), (26, 5), (26, 10),
(27, 2), (27, 6), (27, 20),
(28, 2), (28, 4), (28, 13),
(29, 2), (29, 5), (29, 13),
(30, 2), (30, 5), (30, 6),
(31, 6), (31, 13), (31, 3),
(32, 2), (32, 8), (32, 3),
(33, 2), (33, 15),
(34, 4), (34, 5), (34, 7),
(35, 2), (35, 18), (35, 17),
(36, 17), (36, 18), (36, 9),
(37, 2), (37, 18), (37, 17),
(38, 4), (38, 6), (38, 2),
(39, 2), (39, 1), (39, 6),
(40, 4), (40, 13), (40, 1), (40, 7),
(41, 11), (41, 9), (41, 13),
(42, 13), (42, 2), (42, 4),
(43, 14), (43, 6), (43, 11),
(44, 1), (44, 6), (44, 2),
(45, 8), (45, 6), (45, 2),
(46, 2), (46, 18), (46, 15),
(47, 8), (47, 6), (47, 2),
(48, 8), (48, 6), (48, 2),
(49, 9), (49, 11),
(50, 2), (50, 11),
(51, 2), (51, 21), (51, 15),
(52, 2), (52, 18), (52, 6), (52, 15),
(53, 2), (53, 18), (53, 6), (53, 15),
(54, 2), (54, 18), (54, 21), (54, 15),
(55, 2), (55, 21), (55, 5), (55, 1),
(56, 14), (56, 6), (56, 2), (56, 21),
(57, 6), (57, 2), (57, 15),
(58, 1), (58, 13), (58, 14),
(59, 1), (59, 13), (59, 14),
(60, 1), (60, 6), (60, 8),
(61, 2), (61, 21), (61, 18), (61, 15),
(62, 9),
(63, 1), (63, 5), (63, 7), (63, 2), (63, 14),
(64, 4), (64, 2), (64, 6),
(65, 14), (65, 2), (65, 16), (65, 6),
(66, 2), (66, 22), (66, 15), (66, 18),
(67, 2), (67, 1), (67, 7),
(68, 2), (68, 6), (68, 16),
(69, 2), (69, 5), (69, 1), (69, 21),
(70, 2), (70, 4), (70, 21),
(71, 2), (71, 4), (71, 13), (71, 9),
(72, 9), (72, 3), (72, 13), (72, 7),
(73, 9), (73, 3), (73, 13), (73, 7),
(74, 9), (74, 3), (74, 13), (74, 7),
(75, 13), (75, 4), (75, 6), (75, 16), (75, 2),
(76, 15), (76, 2), (76, 18),
(77, 13), (77, 1), (77, 9), (77, 11), (77, 4),
(78, 15), (78, 2), (78, 18), (78, 22),
(79, 22), (79, 23), (79, 9), (79, 21), (79, 2),
(80, 6), (80, 14), (80, 5),
(81, 13), (81, 4), (81, 5),
(82, 13), (82, 4),
(83, 11), (83, 13), (83, 4),
(84, 11), (84, 25), (84, 13), (84, 9),
(85, 11), (85, 25), (85, 13), (85, 9),
(86, 8), (86, 2), (86, 6),
(87, 8), (87, 2), (87, 6),
(88, 13), (88, 2), (88, 6), (88, 14),
(89, 9), (89, 11), (89, 4),
(90, 2), (90, 22), (90, 15),
(91, 11), (91, 9), (91, 22),
(92, 11), (92, 9), (92, 22),
(93, 11), (93, 9),
(94, 11), (94, 9),
(95, 6), (95, 2), (95, 8),
(96, 15), (96, 2), (96, 6),
(97, 11), (97, 9), (97, 7)
ON DUPLICATE KEY UPDATE 
id_genero = contenido_generos.id_genero;


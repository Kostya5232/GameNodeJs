CREATE TABLE game (
  id serial PRIMARY KEY,
  version varchar(256) NOT NULL,
  chat_hash varchar(256) NOT NULL,
  gamers_hash varchar(256) NOT NULL,
  items_hash varchar(256) NOT NULL,
  mobs_hash varchar(256) NOT NULL,
  update_timestamp int NOT NULL DEFAULT 0,
  update_timeout int NOT NULL DEFAULT 300
);

INSERT INTO game (id, version, chat_hash, gamers_hash, items_hash, mobs_hash, update_timestamp, update_timeout) VALUES
(1, '1.0.0', 'f7b7838b7e99419f3517f44296651324', '4d9de98ab95d1c6202f3e01e3e1295b4', '', 'bf499a12e998d178afd964adf64a60cb', 1711783213, 300);

CREATE TABLE gamers (
  id SERIAL PRIMARY KEY,
  user_id int NOT NULL,
  person_id int NOT NULL DEFAULT 0,
  status varchar(256) NOT NULL DEFAULT 0,
  x double precision NOT NULL DEFAULT 0,
  y double precision NOT NULL DEFAULT 0,
  direction varchar(256) NOT NULL DEFAULT 'down',
  hp int NOT NULL DEFAULT 100
);

INSERT INTO gamers (user_id, person_id, status, x, y, direction, hp) VALUES
(7, 0, 'alive', -2.04056, 2.17985, 'walk', 90);

CREATE TABLE invitations (
  id SERIAL PRIMARY KEY,
  id_who int NOT NULL,
  id_to_whom int NOT NULL
);

INSERT INTO invitations (id_who, id_to_whom) VALUES
(7, 4),
(7, 1);

CREATE TABLE items (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  type VARCHAR(50) NOT NULL,
  location VARCHAR(255) NOT NULL,
  image VARCHAR(100) NOT NULL,
  description VARCHAR(255) NOT NULL
);

INSERT INTO items (name, type, location, image, description) VALUES
('Пиво', 'Расходник', 'Багетница', 'https://drive.google.com/uc?id=1txKPVJl2qxHKfoTPNLb2Gof4Sb2_CJEp', 'Восстанавливает здоровье на 15 единиц, на время боя увеличивает максимальное здоровье на 20 единиц'),
('Сосиска в тесте', 'Расходник', 'Багетница', 'https://drive.google.com/uc?id=1_Oh0szf4vo2Uadnup78RSiPBVqOceEHD', 'Восстанавливает здоровье на 15 единиц'),
('Айфон', 'Гаджет', 'Программирование', 'https://drive.google.com/uc?id=1_1JOzhHE-A07iss6PFHKy6vSVpugUL0q', 'Увеличивает урон по “Программированию” на 15 единиц'),
('Спортивки', 'Одежда', 'Физра', 'https://drive.google.com/uc?id=1NVcwa-CUL0unvHG2Ai3dRB4unnqtxdK7', 'Увеличивает постоянное здоровье на 15 единиц'),
('Энергос', 'Расходник', 'Багетница', 'https://drive.google.com/uc?id=1zOmnG7A1hi2swN4PRdhb5zP_phY0NOec', 'Восстанавливает здоровье на 15 единиц, на время боя увеличивает максимальное здоровье на 20 единиц'),
('Учебник', 'Расходник', 'Программирование, русский язык, математика, английский язык', 'https://drive.google.com/uc?id=1CcxSd3GCb92Krr4Of_iHkR82-iqm1PRV', 'Увеличивает урон по всем парам кроме “Физра” на 5 единиц'),
('Сигареты', 'Расходник', 'Багетница', 'https://drive.google.com/uc?id=1w8Rg20Ee_N4WXohJtQ6wclGg3mXmjPzX', 'Уменьшает текущее здоровье на 20, но на время боя увеличивает урон каждой атаки на 10'),
('Кофта “Stone Island”', 'Одежда', 'Физра', 'https://drive.google.com/uc?id=19xKs-LkbtI47TDBA22StocB-nvzkMaAv', 'Увеличивает максимальное здоровье на 15'),
('Калькулятор', 'Гаджет', 'Математика', 'https://drive.google.com/uc?id=14HEzCbJRFXuc9p0AjPwlTK2pp3j43dCo', 'Увеличивает урон по “Математике” на 15 единиц'),
('Словарь', 'Книга', 'Русский язык, английский язык', 'https://drive.google.com/uc?id=1Sms2iIUvf2aN3-EHdLz8-jMTyJLHhom0', 'Увеличивает урон по “Русскому языку” и “Английскому языку” на 10 единиц'),
('Ноутбук', 'Гаджет', 'Математика, программирование', 'https://drive.google.com/uc?id=1AmXmAyEcvSGUK0gL70VDyx_nLIhT7GQI', 'Увеличивает урон по “Программированию” и “Математике” на 10 единиц'),
('Багет', 'Расходник', 'Багетница', 'https://drive.google.com/uc?id=17LFVpq1h5V_HrYuHz6zbYpK3rcXpPBIY', 'Восстанавливает здоровье на 25 единиц');
 
 CREATE TABLE messages (
  id SERIAL PRIMARY KEY,
  user_id INT NOT NULL,
  message VARCHAR(256) NOT NULL,
  created TIMESTAMP NOT NULL
);

INSERT INTO messages (user_id, message, created) VALUES
(4, 'hahahha', '2023-11-14 10:29:24'),
(1, 'hihihi', '2023-11-14 10:29:53'),
(4, 'hohohohohooooo', '2023-11-14 10:33:36'),
(4, 'иди в попу!', '2023-11-14 11:08:25'),
(4, 'сам иди', '2023-11-29 08:27:05'),
(1, 'ща втащу!', '2023-11-29 08:27:13');

CREATE TABLE mobs (
  id SERIAL PRIMARY KEY,
  x FLOAT NOT NULL DEFAULT 0,
  y FLOAT NOT NULL DEFAULT 0,
  status VARCHAR(256) NOT NULL,
  hp INT NOT NULL DEFAULT 120,
  movement INT NOT NULL DEFAULT 5
);

INSERT INTO mobs (x, y, status, hp, movement) VALUES
(11.9212, -22.1013, 'alive', 650, 10);

CREATE TABLE questions_programmer (
  id SERIAL PRIMARY KEY,
  question VARCHAR(255) NOT NULL,
  answer_1 VARCHAR(255) NOT NULL,
  answer_2 VARCHAR(255) NOT NULL,
  answer_3 VARCHAR(255) NOT NULL,
  answer_4 VARCHAR(255) NOT NULL,
  correct_answer INT NOT NULL
);

INSERT INTO questions_programmer (question, answer_1, answer_2, answer_3, answer_4, correct_answer) VALUES
('Какое свойство CSS используется для управления порядком слоев элементов на веб-странице?', '1) position', '2) float', '3) z-index', '4) display', 3),
('Какое из следующих утверждений о правильном использовании тегов <div> и <span> в языке HTML является верным?', '1) <div> используется для стилизации отдельных элементов, а <span> - для группировки блоков контента.', '2) <div> используется для группировки блоков контента, а <span> - для стилизации отдельных элементов.', '3) Оба тега используются только для группировки блоков контента.', '4) Оба тега используются только для стилизации отдельных элементов.', 2),
('Какой тег HTML используется для создания нумерованного списка?', '1)<ol>', '2)<ul>', '3)<li>', '4)<dl>', 1),
('Какой элемент HTML используется для создания таблицы?', 'a) <table>', 'b) <div>', 'c) <ul>', 'd) <p>', 1),
('Какой атрибут HTML позволяет указать адрес внешнего ресурса, такого как изображение или файл стилей?', '1) src', '2) href', '3) alt', '4) class', 2),
('Какой из приведённых вариантов не является допустимым значением свойства border-style?', '1)dotted', '2)inset\r\n', '3)glazed', '4)groove', 3),
('В CSS есть 16 основных названий для цвета. Какое из перечисленных названий к ним не принадлежит?', '1)olive', '2)fuchsia', '3)cyan', '4)aqua', 3),
('Какое из следующих свойств не влияет на модель box?', '1)content', '2)padding', '3)margin', '4)outline', 4),
('Какой из перечисленных медиа типов не является допустимым для использования в media queries?', '1)tv', '2)all', '3)voice', '4)print', 3),
('Какие из следующих цветов не были предложены в спецификации W3C?', '1)blanchedalmond', '2)dodgerblue', '3)peachpuff', '4)orchidblack', 4),
('В React, что такое контролируемый компонент?', '1) Компонент, управляемый асинхронными событиями', '2) Компонент, управляемый входными данными пользователя', '3) Компонент, управляемый серверными запросами', '4) Компонент, управляемый внутренним состоянием React', 4),
('Каким методом жизненного цикла следует пользоваться для выполнения сетевых запросов в React?', '1) componentDidMount', '2) componentDidUpdate', '3) componentWillUnmount', '4) componentWillMount', 1),
('Что такое контекст (context) в React?', '1) Механизм передачи данных через дерево компонентов без промежуточных передач через props', '2) Функция, используемая для создания вложенных компонентов', '3) Метод, позволяющий реализовать двустороннюю связь между компонентами', '4) Стандартный объект, содержащий информацию о текущем состоянии приложения', 1),
('Каким образом вы можете оптимизировать производительность React-компонентов?', '1) Использовать мемоизацию и мемо-компоненты (memoized components)', '2) Увеличить размер бандла, добавив больше стилей и изображений', '3) Использовать больше классовых компонентов вместо функциональных компонентов', '4) Избегать использования виртуального DOM (Virtual DOM)', 1),
('Как можно передать данные от дочернего компонента к родительскому в React?', '1) Используя контекст для глобальной передачи данных', '2) Используя Redux для управления состоянием', '3) Невозможно передать данные от дочернего компонента к родительскому', '4) Используя коллбэк-функции, передаваемые через props', 4),
('Какая из следующих операций в TypeScript используется для создания экземпляра класса?', '1) create', '2) new', '3) instance', '4) instantiate', 2),
('В TypeScript, какой тип данных используется для указания отсутствия значения?', '1) null', '2) undefined', '3) void', '4) never', 2),
('Какой модификатор доступа в TypeScript ограничивает доступ к свойствам и методам только внутри того же класса?', '1) public', '2) private', '3) protected', '4) internal', 2),
('Для чего используется ключевое слово \"readonly\" в TypeScript?', '1) Для создания константных свойств', '2) Для указания, что переменную нельзя изменять после инициализации', '3) Для ограничения доступа к свойству только для чтения', '4) Все варианты ответов верны', 4),
('Какой из следующих типов данных в TypeScript используется для представления массива значений определенного типа?', '1) Array<T>', '2) T[]', '3) Set<T>', '4) Tuple<T>', 1),
('Какой будет результат выполнения следующего кода?\r\necho 10 % 4 + \"10%4\" + 10;', '1) 20', '2) 101010', '3) 14', '4) 1110', 3),
('Какая функция PHP используется для установки обработчика ошибок?', '1) set_error_handler()', '2) set_exception_handler()', '3) register_shutdown_function()', '4) error_reporting()', 1),
('Что такое \"магические методы\" в PHP?', '1) Специальные методы, которые автоматически вызываются при определенных событиях.', '2) Методы, которые могут генерировать случайные числа.', '3) Методы, которые используются для работы с базами данных.', '4) Методы, которые используются для манипуляции с файлами.', 1),
('Какой вариант кода PHP будет выводить текущую дату и время в формате \"ГГГГ-ММ-ДД ЧЧ:ММ:СС\"?', '1) echo now();', '2) echo date(\"Y-m-d H:i:s\");', '3) echo current_date_time();', '4) echo datetime(\"Y-m-d H:i:s\");', 2),
('Что делает функция PHP \"header()\"?', '1) Отправляет HTTP-заголовок клиенту.', '2) Отправляет запрос на другой сервер.', '3) Создает новую переменную.', '4) Изменяет значение переменной.', 1),
('Какой оператор используется для добавления данных в таблицу?', '1) INSERT', '2) UPDATE', '3) SELECT', '4) DELETE', 1),
('Какой оператор используется для объединения данных из нескольких таблиц?', '1) JOIN', '2) UNION', '3) GROUP BY', '4) ORDER BY', 1),
('Каким образом можно удалить все строки из таблицы?', '1) DELETE FROM table_name', '2) DROP TABLE table_name', '3) TRUNCATE TABLE table_name', '4) REMOVE FROM table_name', 3),
('Какой оператор используется для выборки уникальных значений из столбца?', '1) UNIQUE', '2) DISTINCT', '3) UNIQUE VALUES', '4) DISTINCT VALUES', 2),
('Какой оператор используется для изменения данных в таблице?', '1) MODIFY', '2) UPDATE', '3) ALTER', '4) CHANGE', 2);

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  login VARCHAR(256) NOT NULL,
  password VARCHAR(256) NOT NULL,
  name VARCHAR(256) NOT NULL,
  token VARCHAR(256)
);

INSERT INTO users (login, password, name, token) VALUES
('vasya', '4a2d247d0c05a4f798b0b03839d94cf0', 'Vasya Ivanoff', '5c0e79a2a36184de2d7d6d1d189d365e'),
('petya', '123', 'Petya Petroff', NULL),
('masha', 'ebf191604221bd6bc7af3f959d41b5eb', 'Masha', 'e5b1f3fa1ee368b38248f4dad09b5bc6'),
('1', 'c51ce410c124a10e0db5e4b97fc2af39', '2', NULL),
('12', '78bf4f00f81a36b57950e239f1df91c1', '12', NULL),
('123', '4297f44b13955235245b2497399d7a93', '123', '96226ee233d1296fd85dc8f3815aaefb');

CREATE TABLE friends (
    id serial PRIMARY KEY,
    user_id integer,
    friend_id integer,
    FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE,
    FOREIGN KEY (friend_id) REFERENCES public.users(id) ON DELETE CASCADE
);

INSERT INTO friends (user_id, friend_id) VALUES
    (1, 2),
    (1, 4),
    (6, 1),
    (1, 3);
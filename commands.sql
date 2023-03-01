CREATE DATABASE entregable_v2;
\c entregable_v2
INSERT INTO roles (id, name) VALUES (1, 'student'), (2, 'teacher'), (3, 'admin');
INSERT INTO categories (id, name) VALUES (1, 'science'), (2, 'IT'), (3, 'music');
INSERT INTO level (id, level) VALUES (1, 'beginner'), (2, 'medium'), (3, 'advanced');
INSERT INTO course (id, title, description, level, categorie) VALUES (1, 'javascript', 'fundamentals', 1, 2 ), (2, 'workout', 'improve your body', 2, 1 );
INSERT INTO video (id, title, url) VALUES (1, 'POO', 'www.poo.sadasda?'), (2, 'basic exercises', 'www.healt.asdasd?');
INSERT INTO courses_video_courses (id, courses, videos) VALUES (1, '1', '1'), (2, '2','2');
INSERT INTO user (id, name, lastname, email, password, age, role, courses) VALUES (1, 'isaias', 'hernandez gomez', 'bluesaias@gmail.com', '12345', 31, 1, 1), (2, 'roberto', 'quezada zuñiga', 'roberto91@gmail.com', 'roberto123', 32, 2,2);
SELECT * FROM course JOIN level ON course.id=level.id JOIN categories ON categories.id=course.categorie;
SELECT * FROM courses_video_courses JOIN course ON course.id=courses_video_courses.courses JOIN level ON course.id=level.id JOIN categories ON categories.id=course.categorie JOIN video ON video.id=courses_video_courses.videos;

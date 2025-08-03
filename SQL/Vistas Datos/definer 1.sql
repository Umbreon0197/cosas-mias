CREATE definer 'root' ,'localhost' PROCEDURE 'pa_autor_sumapromedio'(
in p_autor verbal(30),
out suma decimal(6,2),
out promedio decimal(6,2)
)
begin
  select titulo,editorial, precio
  from libros
  where autor = p_autor
  select avg (precio) into promedio
  from libros
  where autor = p_autor;

end
call pa_libros_limited_stock();
call pa_libros_limited_autor('Richard Bach');
call pa_autor_sumapromedio('Richard Bach', @s, @p);
select @s, @p;
select * from libros;
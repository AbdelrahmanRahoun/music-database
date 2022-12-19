/*q1- what are the top 5 repeated artists ? */
SELECT Artist.Name ,  count(Album.ArtistId) as count  
from Album JOIN Artist
on Artist.ArtistId=Album.ArtistId
GROUP by name order by count desc limit 5 ;

/*q2- who are the top 5 customers in paying and whaht are their payments?*/
select  Customer.FirstName ||" "|| Customer.LastName as customer_name  , sum(Invoice.Total) as total_pay
from Invoice join Customer 
on Invoice.CustomerId = customer.CustomerId 
GROUP by customer_name  order by total_pay desc LIMIT 5 ;

/*q3- which is the most common media type?*/
select MediaType.Name as media_type , count(MediaType.Name) as count  
from Track join MediaType 
on track.MediaTypeId =MediaType.MediaTypeId 
GROUP by media_type 
order by count DESC

/*Q4 – what are the top genres preferred by listeners ?*/
select count(track.MediaTypeId )as 'count' , Genre.Name as media_genre
from track JOIN Genre
on Track.GenreId=Genre.GenreId
group by media_genre
ORDER by count DESC 
limit 5 ;

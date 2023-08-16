SELECT author_id AS id FROM Views 
where author_id = viewer_id 
GROUP BY id
ORDER BY id ASC
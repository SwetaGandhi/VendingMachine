for i in `seq 100`
do
	curl -v "city_id="$i http://127.0.0.1:8080/
done



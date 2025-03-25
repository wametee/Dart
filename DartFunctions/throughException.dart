void main (){
     info();

}


void info(){
    try{
         for (var i = 0; i <= 10; i++) {
        if (i == 5) {
            throw Exception('This is an exception');
        }
        print('value ${i + 1} = $i');
    }

    } catch (e) {
        print('Exception: $e');

    }
}
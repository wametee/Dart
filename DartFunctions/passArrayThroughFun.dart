void main () {
    var a = [1, 2, 3, 'Ali', true];
    var b = [1, 2, 3, 'Ali', true];

    fun(a);

}


void fun(List<dynamic> list) {
    for (var i = 0; i < list.length; i++) {
        print('value ${i + 1} = ${list[i]}');
    }
}
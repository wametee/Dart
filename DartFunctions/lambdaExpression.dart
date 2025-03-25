void main () {

    var list = [1, 2, 3, 'Ali', true];
    list.forEach((element) {
        print(element);
    });



    print(lam1());
    print(lam2(2, 3));

}


String lam1() => 'Hello World';
int lam2(int a, int b) => a + b;

void Function() a = () => print(3 + 4);


//
// Created by Ivo Georgiev on 2019-04-03.
//

static const int ARRAY_SIZE = 5;

static int array[] = { 1, -2, 5, -6, 2 };

int negate(int a) {
    return (-1) * a;
}

int main() {
    for (int i = 0; i < ARRAY_SIZE; i ++) {
        if (array[i] < 0) {
            array[i] = negate(array[i]);
        }
    }

    return 0;
}

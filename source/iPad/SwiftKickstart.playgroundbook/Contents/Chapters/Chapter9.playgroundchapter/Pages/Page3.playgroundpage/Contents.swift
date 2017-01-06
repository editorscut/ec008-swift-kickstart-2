var two = 2

func double(_ input: inout Int) {
    input = input * 2
}

double(&two)
double(&two)
double(&two)
two

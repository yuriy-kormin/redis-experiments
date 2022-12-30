def fun_that_print_list(list_):
    def inner():
        print (list_)
    return inner


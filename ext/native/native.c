#include <ruby.h>
#include <stdio.h>

VALUE mNative = Qnil;

void Init_native();
VALUE method_native_log(VALUE self);
VALUE method_native_array(VALUE self);

/**
 * Init module native
 */
void Init_native()
{
    mNative = rb_define_module("Native");
    rb_define_singleton_method(mNative, "log", method_native_log, 0);
    rb_define_singleton_method(mNative, "array", method_native_array, 0);
}

VALUE method_native_log(VALUE self)
{
    printf("Native log\n");
    return Qnil;
}

VALUE method_native_array(VALUE self)
{
    int n = 10;
    VALUE native_array = rb_ary_new2(n);
    for (int i = 0; i < n; i++) {
        rb_ary_store(native_array, i, rb_sprintf("native str %d", i));
    }
    return native_array;
}

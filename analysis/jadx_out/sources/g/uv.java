package g;

import java.lang.reflect.Method;

/* loaded from: classes.dex */
public abstract class uv {

    /* renamed from: a, reason: collision with root package name */
    public static final Method f20124a;

    static {
        Method method;
        Method[] methods = Throwable.class.getMethods();
        bff.d(methods);
        int length = methods.length;
        int i = 0;
        while (true) {
            method = null;
            if (i >= length) {
                break;
            }
            Method method2 = methods[i];
            if (bff.n(method2.getName(), "addSuppressed")) {
                Class<?>[] parameterTypes = method2.getParameterTypes();
                bff.e(parameterTypes, "getParameterTypes(...)");
                if (bff.n(parameterTypes.length == 1 ? parameterTypes[0] : null, Throwable.class)) {
                    method = method2;
                    break;
                }
            }
            i++;
        }
        f20124a = method;
        int length2 = methods.length;
        for (int i2 = 0; i2 < length2 && !bff.n(methods[i2].getName(), "getSuppressed"); i2++) {
        }
    }
}

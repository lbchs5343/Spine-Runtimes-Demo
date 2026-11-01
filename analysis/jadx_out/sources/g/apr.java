package g;

import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public final class apr extends cnj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Method f10633a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f10634b;

    public apr(Method method, int i) {
        this.f10633a = method;
        this.f10634b = i;
    }

    @Override // g.cnj
    public final Object c(Class cls) {
        String e2 = ja.e(cls);
        if (e2 == null) {
            return this.f10633a.invoke(null, cls, Integer.valueOf(this.f10634b));
        }
        throw new AssertionError("UnsafeAllocator is used for non-instantiable type: ".concat(e2));
    }
}

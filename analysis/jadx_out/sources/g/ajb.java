package g;

import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public final class ajb extends cnj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Method f10298a;

    public ajb(Method method) {
        this.f10298a = method;
    }

    @Override // g.cnj
    public final Object c(Class cls) {
        String e2 = ja.e(cls);
        if (e2 == null) {
            return this.f10298a.invoke(null, cls, Object.class);
        }
        throw new AssertionError("UnsafeAllocator is used for non-instantiable type: ".concat(e2));
    }
}

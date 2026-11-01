package g;

import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public final class ez extends cnj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Method f16397a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f16398b;

    public ez(Method method, Object obj) {
        this.f16397a = method;
        this.f16398b = obj;
    }

    @Override // g.cnj
    public final Object c(Class cls) {
        String e2 = ja.e(cls);
        if (e2 == null) {
            return this.f16397a.invoke(this.f16398b, cls);
        }
        throw new AssertionError("UnsafeAllocator is used for non-instantiable type: ".concat(e2));
    }
}

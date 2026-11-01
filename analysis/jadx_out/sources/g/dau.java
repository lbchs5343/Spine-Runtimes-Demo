package g;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public final class dau {

    /* renamed from: a, reason: collision with root package name */
    public final List f13875a;

    /* renamed from: b, reason: collision with root package name */
    public final Class f13876b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f13877c;

    /* renamed from: d, reason: collision with root package name */
    public final Method f13878d;

    public dau(Class cls, Object obj, Method method, ArrayList arrayList) {
        this.f13876b = cls;
        this.f13877c = obj;
        this.f13878d = method;
        this.f13875a = Collections.unmodifiableList(arrayList);
    }

    public final String toString() {
        return String.format("%s.%s() %s", this.f13876b.getName(), this.f13878d.getName(), this.f13875a);
    }
}

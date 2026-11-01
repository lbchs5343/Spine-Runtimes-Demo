package g;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public final class amt {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Method f10493a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ bke f10494b;

    /* renamed from: c, reason: collision with root package name */
    public final String f10495c;

    /* renamed from: d, reason: collision with root package name */
    public final Field f10496d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f10497e;

    public amt(String str, Field field, boolean z, Method method, bke bkeVar) {
        this.f10497e = z;
        this.f10493a = method;
        this.f10494b = bkeVar;
        this.f10495c = str;
        this.f10496d = field;
        field.getName();
    }

    public final void f(fwg fwgVar, Object obj) {
        Object obj2;
        boolean z = this.f10497e;
        Field field = this.f10496d;
        Method method = this.f10493a;
        if (z) {
            if (method == null) {
                s.f(obj, field);
            } else {
                s.f(obj, method);
            }
        }
        if (method != null) {
            try {
                obj2 = method.invoke(obj, null);
            } catch (InvocationTargetException e2) {
                throw new gyr(tn.ad("Accessor ", cpe.b(method, false), " threw exception"), e2.getCause());
            }
        } else {
            obj2 = field.get(obj);
        }
        if (obj2 == obj) {
            return;
        }
        fwgVar.o(this.f10495c);
        this.f10494b.a(fwgVar, obj2);
    }
}

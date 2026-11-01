package g;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class azq extends cfx {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f11129a = new HashMap();

    @Override // g.cfx
    public final frv b(Object obj) {
        return (frv) this.f11129a.get(obj);
    }

    @Override // g.cfx
    public final Object c(Object obj) {
        Object c2 = super.c(obj);
        this.f11129a.remove(obj);
        return c2;
    }
}

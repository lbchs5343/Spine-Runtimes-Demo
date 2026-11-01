package g;

/* loaded from: classes3.dex */
public final class gfs implements fcc {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f18043a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public volatile bol f18044b;

    /* renamed from: c, reason: collision with root package name */
    public volatile Object f18045c;

    public static fcc d(bol bolVar) {
        if (bolVar instanceof gfs) {
            return bolVar;
        }
        gfs gfsVar = new gfs();
        gfsVar.f18045c = f18043a;
        gfsVar.f18044b = bolVar;
        return gfsVar;
    }

    @Override // g.fcc
    public final Object get() {
        Object obj;
        Object obj2 = this.f18045c;
        Object obj3 = f18043a;
        if (obj2 != obj3) {
            return obj2;
        }
        synchronized (this) {
            try {
                obj = this.f18045c;
                if (obj == obj3) {
                    obj = this.f18044b.get();
                    Object obj4 = this.f18045c;
                    if (obj4 != obj3 && obj4 != obj) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj4 + " & " + obj + ". This is likely due to a circular dependency.");
                    }
                    this.f18045c = obj;
                    this.f18044b = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }
}

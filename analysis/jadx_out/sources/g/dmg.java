package g;

/* loaded from: classes3.dex */
public final class dmg implements boa {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f14425a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public volatile Object f14426b = f14425a;

    /* renamed from: c, reason: collision with root package name */
    public volatile boa f14427c;

    public dmg(boa boaVar) {
        this.f14427c = boaVar;
    }

    @Override // g.boa
    public final Object get() {
        Object obj;
        Object obj2 = this.f14426b;
        Object obj3 = f14425a;
        if (obj2 != obj3) {
            return obj2;
        }
        synchronized (this) {
            try {
                obj = this.f14426b;
                if (obj == obj3) {
                    obj = this.f14427c.get();
                    this.f14426b = obj;
                    this.f14427c = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }
}

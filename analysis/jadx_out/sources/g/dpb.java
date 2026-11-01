package g;

/* loaded from: classes.dex */
public final class dpb {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14570a;

    /* renamed from: b, reason: collision with root package name */
    public final ecx f14571b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f14572c;

    public /* synthetic */ dpb(ecx ecxVar, Object obj, int i) {
        this.f14570a = i;
        this.f14572c = obj;
        this.f14571b = ecxVar;
    }

    private final void f() {
    }

    public final ful d() {
        switch (this.f14570a) {
            case 0:
                return null;
            default:
                return (ful) this.f14572c;
        }
    }

    public final ecx e() {
        switch (this.f14570a) {
        }
        return this.f14571b;
    }

    public final String toString() {
        switch (this.f14570a) {
            case 0:
                return this.f14571b + ": " + ((eok) this.f14572c);
            default:
                return this.f14571b + ": " + ((ful) this.f14572c);
        }
    }
}

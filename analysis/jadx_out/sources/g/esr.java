package g;

/* loaded from: classes3.dex */
public final class esr implements dvf {

    /* renamed from: a, reason: collision with root package name */
    public Object f16094a;

    /* renamed from: b, reason: collision with root package name */
    public volatile dvf f16095b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f16096c;

    public final String toString() {
        Object obj = this.f16095b;
        StringBuilder sb = new StringBuilder("Suppliers.memoize(");
        if (obj == null) {
            obj = "<supplier that returned " + this.f16094a + ">";
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }

    @Override // g.dvf
    public final Object zza() {
        if (!this.f16096c) {
            synchronized (this) {
                try {
                    if (!this.f16096c) {
                        dvf dvfVar = this.f16095b;
                        dvfVar.getClass();
                        Object zza = dvfVar.zza();
                        this.f16094a = zza;
                        this.f16096c = true;
                        this.f16095b = null;
                        return zza;
                    }
                } finally {
                }
            }
        }
        return this.f16094a;
    }
}

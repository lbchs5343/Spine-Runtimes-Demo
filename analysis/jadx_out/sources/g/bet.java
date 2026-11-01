package g;

import java.io.Serializable;

/* loaded from: classes3.dex */
public final class bet implements Serializable, dvf {

    /* renamed from: a, reason: collision with root package name */
    public volatile transient boolean f11409a;

    /* renamed from: b, reason: collision with root package name */
    public transient Object f11410b;
    final dvf zza;

    public bet(dvf dvfVar) {
        this.zza = dvfVar;
    }

    public final String toString() {
        Object obj;
        StringBuilder sb = new StringBuilder("Suppliers.memoize(");
        if (this.f11409a) {
            obj = "<supplier that returned " + this.f11410b + ">";
        } else {
            obj = this.zza;
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }

    @Override // g.dvf
    public final Object zza() {
        if (!this.f11409a) {
            synchronized (this) {
                try {
                    if (!this.f11409a) {
                        Object zza = this.zza.zza();
                        this.f11410b = zza;
                        this.f11409a = true;
                        return zza;
                    }
                } finally {
                }
            }
        }
        return this.f11410b;
    }
}

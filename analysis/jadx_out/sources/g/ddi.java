package g;

import com.google.android.gms.internal.ads.zzx;

/* loaded from: classes3.dex */
public final class ddi {

    /* renamed from: a, reason: collision with root package name */
    public boolean f14015a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f14016b;

    /* renamed from: c, reason: collision with root package name */
    public zzx f14017c = new zzx();

    /* renamed from: d, reason: collision with root package name */
    public boolean f14018d;

    public ddi(Object obj) {
        this.f14016b = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ddi.class != obj.getClass()) {
            return false;
        }
        return this.f14016b.equals(((ddi) obj).f14016b);
    }

    public final int hashCode() {
        return this.f14016b.hashCode();
    }
}

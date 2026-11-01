package g;

import com.google.android.gms.internal.ads.zzhai;

/* loaded from: classes3.dex */
public final class gdg {

    /* renamed from: a, reason: collision with root package name */
    public final Object f17930a;

    /* renamed from: b, reason: collision with root package name */
    public final int f17931b;

    public gdg(int i, zzhai zzhaiVar) {
        this.f17930a = zzhaiVar;
        this.f17931b = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof gdg)) {
            return false;
        }
        gdg gdgVar = (gdg) obj;
        return this.f17930a == gdgVar.f17930a && this.f17931b == gdgVar.f17931b;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f17930a) * 65535) + this.f17931b;
    }
}

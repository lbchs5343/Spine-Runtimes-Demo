package g;

import com.google.android.gms.internal.ads.zzdb;
import com.google.android.gms.internal.ads.zzur;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class apg {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f10617a;

    /* renamed from: b, reason: collision with root package name */
    public final long f10618b;

    /* renamed from: c, reason: collision with root package name */
    public final long f10619c;

    /* renamed from: d, reason: collision with root package name */
    public final zzur f10620d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f10621e;

    /* renamed from: f, reason: collision with root package name */
    public final long f10622f;

    /* renamed from: g, reason: collision with root package name */
    public final long f10623g;
    public final boolean h;

    public apg(zzur zzurVar, long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3) {
        zzdb.zzd(!z3 || z);
        zzdb.zzd(!z2 || z);
        this.f10620d = zzurVar;
        this.f10622f = j;
        this.f10623g = j2;
        this.f10618b = j3;
        this.f10619c = j4;
        this.f10621e = z;
        this.h = z2;
        this.f10617a = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && apg.class == obj.getClass()) {
            apg apgVar = (apg) obj;
            if (this.f10622f == apgVar.f10622f && this.f10623g == apgVar.f10623g && this.f10618b == apgVar.f10618b && this.f10619c == apgVar.f10619c && this.f10621e == apgVar.f10621e && this.h == apgVar.h && this.f10617a == apgVar.f10617a && Objects.equals(this.f10620d, apgVar.f10620d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((((((this.f10620d.hashCode() + 527) * 31) + ((int) this.f10622f)) * 31) + ((int) this.f10623g)) * 31) + ((int) this.f10618b)) * 31) + ((int) this.f10619c)) * 961) + (this.f10621e ? 1 : 0)) * 31) + (this.h ? 1 : 0)) * 31) + (this.f10617a ? 1 : 0);
    }
}

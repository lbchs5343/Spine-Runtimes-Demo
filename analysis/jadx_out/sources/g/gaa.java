package g;

import com.google.android.gms.internal.ads.zzbw;
import com.google.android.gms.internal.ads.zzlo;
import com.google.android.gms.internal.ads.zzxp;

/* loaded from: classes3.dex */
public final class gaa extends cbw implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final int f17770a;

    /* renamed from: b, reason: collision with root package name */
    public final int f17771b;

    public gaa(int i, zzbw zzbwVar, int i2, zzxp zzxpVar, int i3) {
        super(i, zzbwVar, i2);
        this.f17770a = zzlo.zza(i3, zzxpVar.zzN) ? 1 : 0;
        this.f17771b = this.w.zza();
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Integer.compare(this.f17771b, ((gaa) obj).f17771b);
    }

    @Override // g.cbw
    public final int s() {
        return this.f17770a;
    }

    @Override // g.cbw
    public final /* bridge */ /* synthetic */ boolean t(cbw cbwVar) {
        return false;
    }
}

package g;

import com.google.android.gms.internal.ads.zzbce;
import com.google.android.gms.internal.ads.zzbcn;

/* loaded from: classes3.dex */
public final class dst {

    /* renamed from: a, reason: collision with root package name */
    public final gil f14739a;

    public dst(gil gilVar) {
        this.f14739a = gilVar;
    }

    public final void b(int i, long j) {
        long j2;
        zzbce zzbceVar = zzbcn.zzaA;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            return;
        }
        cmo cmoVar = (cmo) this.f14739a;
        cmoVar.aj();
        synchronized (cmoVar.k) {
            j2 = cmoVar.m;
        }
        if (j - j2 < 0) {
            agd.e("Receiving npa decision in the past, ignoring.");
            return;
        }
        if (((Boolean) edtVar.f15379d.zza(zzbcn.zzaB)).booleanValue()) {
            ((cmo) this.f14739a).bg(i);
            ((cmo) this.f14739a).af(j);
        } else {
            ((cmo) this.f14739a).bg(-1);
            ((cmo) this.f14739a).af(j);
        }
    }
}

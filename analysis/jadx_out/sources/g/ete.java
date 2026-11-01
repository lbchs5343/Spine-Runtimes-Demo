package g;

import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.android.gms.internal.ads.zzbgs;
import com.google.android.gms.internal.ads.zzbgt;
import com.google.android.gms.internal.ads.zzbhb;
import com.google.android.gms.internal.ads.zzbic;

/* loaded from: classes3.dex */
public final class ete extends zzbhb {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbic f16141a;

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final void zze(zzbgs zzbgsVar, String str) {
        zzbgt zzbgtVar;
        zzbic zzbicVar = this.f16141a;
        ehx ehxVar = zzbicVar.f4826b;
        if (ehxVar == null) {
            return;
        }
        synchronized (zzbicVar) {
            zzbgtVar = zzbicVar.f4827c;
            if (zzbgtVar == null) {
                zzbgtVar = new zzbgt(zzbgsVar);
                zzbicVar.f4827c = zzbgtVar;
            }
        }
        cca ccaVar = (cca) ehxVar;
        ((ccj) ccaVar.f12622f).zze((AbstractAdViewAdapter) ccaVar.h, zzbgtVar, str);
    }
}

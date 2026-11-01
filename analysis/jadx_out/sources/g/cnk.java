package g;

import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.android.gms.internal.ads.zzbgs;
import com.google.android.gms.internal.ads.zzbgt;
import com.google.android.gms.internal.ads.zzbhe;
import com.google.android.gms.internal.ads.zzbic;
import com.google.android.gms.internal.ads.zzbst;
import com.google.android.gms.internal.ads.zzbsu;

/* loaded from: classes3.dex */
public final class cnk extends zzbhe {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13173a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f13174b;

    public /* synthetic */ cnk(int i, Object obj) {
        this.f13173a = i;
        this.f13174b = obj;
    }

    private final void c(zzbgs zzbgsVar) {
        zzbgt zzbgtVar;
        zzbic zzbicVar = (zzbic) this.f13174b;
        edz edzVar = zzbicVar.f4825a;
        synchronized (zzbicVar) {
            zzbgtVar = zzbicVar.f4827c;
            if (zzbgtVar == null) {
                zzbgtVar = new zzbgt(zzbgsVar);
                zzbicVar.f4827c = zzbgtVar;
            }
        }
        cca ccaVar = (cca) edzVar;
        ((ccj) ccaVar.f12622f).zzd((AbstractAdViewAdapter) ccaVar.h, zzbgtVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbhf
    public final void zze(zzbgs zzbgsVar) {
        switch (this.f13173a) {
            case 0:
                c(zzbgsVar);
                return;
            default:
                zzbst zzbstVar = (zzbst) this.f13174b;
                synchronized (zzbstVar) {
                    if (zzbstVar.f4987a == null) {
                        zzbstVar.f4987a = new zzbsu(zzbgsVar);
                    }
                }
                throw null;
        }
    }
}

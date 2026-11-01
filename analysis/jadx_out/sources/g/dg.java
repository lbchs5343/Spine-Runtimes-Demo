package g;

import com.google.android.gms.internal.ads.zzayl;
import com.google.android.gms.internal.ads.zzaym;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzdit;

/* loaded from: classes3.dex */
public final class dg implements zzaym {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f14118a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzdit f14119b;

    public dg(zzdit zzditVar, String str) {
        this.f14118a = str;
        this.f14119b = zzditVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaym
    public final void zzdp(zzayl zzaylVar) {
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbP)).booleanValue()) {
            if (zzaylVar.zzj) {
                zzdit zzditVar = this.f14119b;
                zzditVar.ad.put(this.f14118a, Boolean.TRUE);
                zzdit zzditVar2 = this.f14119b;
                zzditVar2.zzB(zzditVar2.h.zzf(), this.f14119b.h.zzl(), this.f14119b.h.zzm(), true);
                return;
            }
            return;
        }
        synchronized (this) {
            try {
                if (zzaylVar.zzj) {
                    zzdit zzditVar3 = this.f14119b;
                    if (zzditVar3.h == null) {
                        return;
                    }
                    zzditVar3.ad.put(this.f14118a, Boolean.TRUE);
                    zzdit zzditVar4 = this.f14119b;
                    zzditVar4.zzB(zzditVar4.h.zzf(), this.f14119b.h.zzl(), this.f14119b.h.zzm(), true);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

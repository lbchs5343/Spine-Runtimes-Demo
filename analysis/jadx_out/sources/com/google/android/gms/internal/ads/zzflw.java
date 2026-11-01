package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.ClientApi;
import g.agd;
import g.aik;
import g.bpp;
import g.cvb;
import g.czs;
import g.deq;
import g.eno;
import g.ghd;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzflw extends zzfmo {
    public zzflw(ClientApi clientApi, Context context, int i, zzbpg zzbpgVar, ghd ghdVar, aik aikVar, ScheduledExecutorService scheduledExecutorService, zzflx zzflxVar, cvb cvbVar) {
        super(clientApi, context, i, zzbpgVar, ghdVar, aikVar, scheduledExecutorService, zzflxVar, cvbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfmo
    public final zzgfa a() {
        zzgfa zze = zzgfa.zze();
        bpp bppVar = new bpp(this.k);
        eno zzb = eno.zzb();
        ghd ghdVar = this.f8017f;
        deq m = this.f8018g.m(bppVar, zzb, ghdVar.zza, this.f8015d, this.m);
        if (m == null) {
            zze.zzd(new zzflt(1, "Failed to create an app open ad manager."));
            return zze;
        }
        try {
            m.zzH(new czs(this, zze, ghdVar));
            m.zzab(ghdVar.zzc);
            return zze;
        } catch (RemoteException unused) {
            zzfxd zzfxdVar = agd.f10175a;
            zze.zzd(new zzflt(1, "remote exception"));
            return zze;
        }
    }
}

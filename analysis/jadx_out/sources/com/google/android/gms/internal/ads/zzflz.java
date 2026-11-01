package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.ClientApi;
import g.agd;
import g.aik;
import g.bpp;
import g.cvb;
import g.deq;
import g.eno;
import g.eny;
import g.ghd;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzflz extends zzfmo {
    public zzflz(ClientApi clientApi, Context context, int i, zzbpg zzbpgVar, ghd ghdVar, aik aikVar, ScheduledExecutorService scheduledExecutorService, zzflx zzflxVar, cvb cvbVar) {
        super(clientApi, context, i, zzbpgVar, ghdVar, aikVar, scheduledExecutorService, zzflxVar, cvbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfmo
    public final zzgfa a() {
        zzgfa zze = zzgfa.zze();
        bpp bppVar = new bpp(this.k);
        eno enoVar = new eno();
        ghd ghdVar = this.f8017f;
        String str = ghdVar.zza;
        deq g2 = this.f8018g.g(bppVar, enoVar, str, this.f8015d, this.m);
        if (g2 == null) {
            zze.zzd(new zzflt(1, "Failed to create an interstitial ad manager."));
            return zze;
        }
        try {
            g2.zzy(ghdVar.zzc, new eny(this, zze, (zzena) g2));
            return zze;
        } catch (RemoteException unused) {
            zzfxd zzfxdVar = agd.f10175a;
            zze.zzd(new zzflt(1, "remote exception"));
            return zze;
        }
    }
}

package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.ClientApi;
import g.agd;
import g.aik;
import g.bpp;
import g.cub;
import g.cvb;
import g.ghd;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes3.dex */
public final class zzfms extends zzfmo {
    public zzfms(ClientApi clientApi, Context context, int i, zzbpg zzbpgVar, ghd ghdVar, aik aikVar, ScheduledExecutorService scheduledExecutorService, zzflx zzflxVar, cvb cvbVar) {
        super(clientApi, context, i, zzbpgVar, ghdVar, aikVar, scheduledExecutorService, zzflxVar, cvbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfmo
    public final zzgfa a() {
        zzgfa zze = zzgfa.zze();
        bpp bppVar = new bpp(this.k);
        ghd ghdVar = this.f8017f;
        zzbxc e2 = this.f8018g.e(bppVar, ghdVar.zza, this.f8015d, this.m);
        cub cubVar = new cub(this, zze, (zzfek) e2);
        if (e2 == null) {
            zze.zzd(new zzflt(1, "Failed to create a rewarded ad."));
            return zze;
        }
        try {
            e2.zzf(ghdVar.zzc, cubVar);
            return zze;
        } catch (RemoteException unused) {
            agd.b("Failed to load rewarded ad.");
            zze.zzd(new zzflt(1, "remote exception"));
            return zze;
        }
    }
}

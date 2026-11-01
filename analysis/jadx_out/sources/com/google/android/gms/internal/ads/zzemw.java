package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import g.agd;
import g.dyo;
import g.evo;

/* loaded from: classes3.dex */
public final class zzemw implements evo, zzdel {

    /* renamed from: a, reason: collision with root package name */
    public dyo f7257a;

    @Override // g.evo
    public final synchronized void onAdClicked() {
        dyo dyoVar = this.f7257a;
        if (dyoVar != null) {
            try {
                dyoVar.zzb();
            } catch (RemoteException unused) {
                zzfxd zzfxdVar = agd.f10175a;
            }
        }
    }

    public final synchronized void zza(dyo dyoVar) {
        this.f7257a = dyoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdel
    public final synchronized void zzdG() {
        dyo dyoVar = this.f7257a;
        if (dyoVar != null) {
            try {
                dyoVar.zzb();
            } catch (RemoteException unused) {
                zzfxd zzfxdVar = agd.f10175a;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdel
    public final synchronized void zzdf() {
    }
}

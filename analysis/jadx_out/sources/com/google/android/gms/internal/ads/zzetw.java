package com.google.android.gms.internal.ads;

import android.os.Bundle;
import g.edt;

/* loaded from: classes3.dex */
public final class zzetw implements zzevy {
    public final zzfes zza;

    public zzetw(zzfes zzfesVar) {
        this.zza = zzfesVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevy
    public final void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        if (this.zza != null) {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlE)).booleanValue()) {
                return;
            }
            bundle.putBoolean("render_in_browser", this.zza.zzd());
            bundle.putBoolean("disable_ml", this.zza.zzc());
        }
    }
}

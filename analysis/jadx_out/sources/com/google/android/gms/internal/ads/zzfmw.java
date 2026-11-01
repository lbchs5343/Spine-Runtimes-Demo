package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.UUID;

/* loaded from: classes3.dex */
public abstract class zzfmw {
    public static zzfmw zza(zzfmx zzfmxVar, zzfmy zzfmyVar) {
        zzfor.zza();
        return new zzfna(zzfmxVar, zzfmyVar, UUID.randomUUID().toString());
    }

    public abstract void zzb(View view, zzfnd zzfndVar, String str);

    public abstract void zzc();

    public abstract void zzd(View view);

    public abstract void zze();
}

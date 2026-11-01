package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes3.dex */
public final class zzfmu {

    /* renamed from: a, reason: collision with root package name */
    public static final zzfmv f8029a = new zzfmv();

    public static void zza(Context context) {
        Context applicationContext = context.getApplicationContext();
        zzfmv zzfmvVar = f8029a;
        zzfmvVar.getClass();
        zzfor.zzc(applicationContext, "Application Context cannot be null");
        if (zzfmvVar.f8030a) {
            return;
        }
        zzfmvVar.f8030a = true;
        zzfnz.zzb().zzd(applicationContext);
        zzfnq.zza().zzd(applicationContext);
        zzfom.zzb(applicationContext);
        zzfon.zzd(applicationContext);
        zzfoq.zza(applicationContext);
        zzfnw.zzb().zzc(applicationContext);
        zzfnp.zza().zzd(applicationContext);
        zzfob.zza().zze(applicationContext);
    }

    public static boolean zzb() {
        return f8029a.f8030a;
    }
}

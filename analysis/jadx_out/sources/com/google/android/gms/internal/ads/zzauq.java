package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Base64;
import g.eq;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzauq {
    public static final String zza(Context context, String str, boolean z) {
        try {
            zzath zza = zzati.zza();
            zza.zzb(str);
            zza.zza("1.671910402");
            zza.zzc(context.getPackageName());
            zza.zzd(System.currentTimeMillis() / 1000);
            try {
                zza.zze(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException unused) {
                zza.zze(-1L);
            }
            zzato g2 = eq.g(null, ((zzati) zza.zzbr()).zzaV());
            g2.zzd(5);
            g2.zzc(2);
            return Base64.encodeToString(((zzatp) g2.zzbr()).zzaV(), 11);
        } catch (UnsupportedEncodingException | GeneralSecurityException unused2) {
            return Integer.toString(7);
        }
    }
}

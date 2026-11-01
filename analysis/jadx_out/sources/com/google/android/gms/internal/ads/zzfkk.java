package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import g.ccp;
import g.dcy;
import g.dzm;
import g.edt;
import g.gtb;
import g.ja;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class zzfkk {
    public static void zza(dcy dcyVar, zzfkl zzfklVar, zzfka zzfkaVar) {
        if (((Boolean) zzbeg.zzc.zze()).booleanValue()) {
            zzgei.zzr(zzgdz.zzu(dcyVar), new ja(zzfklVar, zzfkaVar, false), zzcaj.zzf);
        }
    }

    public static void zzb(dcy dcyVar, zzfkl zzfklVar, zzfka zzfkaVar) {
        if (((Boolean) zzbeg.zzc.zze()).booleanValue()) {
            zzgei.zzr(zzgdz.zzu(dcyVar), new ja(zzfklVar, zzfkaVar, true), zzcaj.zzf);
        }
    }

    public static void zzc(dcy dcyVar, zzfkl zzfklVar, zzfka zzfkaVar) {
        if (((Boolean) zzbeg.zzc.zze()).booleanValue()) {
            zzgei.zzr(zzgdz.zzu(dcyVar), new gtb(zzfklVar, 21, zzfkaVar), zzcaj.zzf);
        }
    }

    public static void zzd(dcy dcyVar, zzfka zzfkaVar) {
        if (((Boolean) zzbeg.zzc.zze()).booleanValue()) {
            zzgei.zzr(zzgdz.zzu(dcyVar), new ccp(2, zzfkaVar), zzcaj.zzf);
        }
    }

    public static boolean zze(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return Pattern.matches((String) edt.f15376a.f15379d.zza(zzbcn.zzit), str);
    }

    public static int zzf(zzffo zzffoVar) {
        int ax = dzm.ax(zzffoVar) - 1;
        return (ax == 0 || ax == 1) ? 7 : 23;
    }
}

package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzacz {
    public static zzbd zza(zzacs zzacsVar, boolean z) throws IOException {
        zzbd zza = new zzadh().zza(zzacsVar, z ? null : zzagk.zza);
        if (zza == null || zza.zza() == 0) {
            return null;
        }
        return zza;
    }

    public static zzadb zzb(zzed zzedVar) {
        zzedVar.zzM(1);
        int zzo = zzedVar.zzo();
        long zzd = zzedVar.zzd();
        long j = zzo;
        int i = zzo / 18;
        long[] jArr = new long[i];
        long[] jArr2 = new long[i];
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                break;
            }
            long zzt = zzedVar.zzt();
            if (zzt == -1) {
                jArr = Arrays.copyOf(jArr, i2);
                jArr2 = Arrays.copyOf(jArr2, i2);
                break;
            }
            jArr[i2] = zzt;
            jArr2[i2] = zzedVar.zzt();
            zzedVar.zzM(2);
            i2++;
        }
        zzedVar.zzM((int) ((zzd + j) - zzedVar.zzd()));
        return new zzadb(jArr, jArr2);
    }
}

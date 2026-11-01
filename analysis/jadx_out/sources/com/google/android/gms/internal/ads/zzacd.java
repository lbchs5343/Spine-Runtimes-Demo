package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzacd {
    public static void zza(long j, zzed zzedVar, zzadx[] zzadxVarArr) {
        int i;
        int i2;
        while (true) {
            if (zzedVar.zzb() <= 1) {
                return;
            }
            int i3 = 0;
            while (true) {
                if (zzedVar.zzb() == 0) {
                    i = -1;
                    break;
                }
                int zzm = zzedVar.zzm();
                i3 += zzm;
                if (zzm != 255) {
                    i = i3;
                    break;
                }
            }
            int i4 = 0;
            while (true) {
                if (zzedVar.zzb() == 0) {
                    i4 = -1;
                    break;
                }
                int zzm2 = zzedVar.zzm();
                i4 += zzm2;
                if (zzm2 != 255) {
                    break;
                }
            }
            int zzd = zzedVar.zzd() + i4;
            if (i4 == -1 || i4 > zzedVar.zzb()) {
                zzdt.zzf("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                zzd = zzedVar.zze();
            } else if (i == 4 && i4 >= 8) {
                int zzm3 = zzedVar.zzm();
                int zzq = zzedVar.zzq();
                if (zzq == 49) {
                    i2 = zzedVar.zzg();
                    zzq = 49;
                } else {
                    i2 = 0;
                }
                int zzm4 = zzedVar.zzm();
                if (zzq == 47) {
                    zzedVar.zzM(1);
                    zzq = 47;
                }
                boolean z = zzm3 == 181 && (zzq == 49 || zzq == 47) && zzm4 == 3;
                if (zzq == 49) {
                    z &= i2 == 1195456820;
                }
                if (z) {
                    zzb(j, zzedVar, zzadxVarArr);
                }
            }
            zzedVar.zzL(zzd);
        }
    }

    public static void zzb(long j, zzed zzedVar, zzadx[] zzadxVarArr) {
        int zzm = zzedVar.zzm();
        if ((zzm & 64) != 0) {
            int i = zzm & 31;
            zzedVar.zzM(1);
            int zzd = zzedVar.zzd();
            for (zzadx zzadxVar : zzadxVarArr) {
                int i2 = i * 3;
                zzedVar.zzL(zzd);
                zzadxVar.zzq(zzedVar, i2);
                zzdb.zzf(j != -9223372036854775807L);
                zzadxVar.zzs(j, 1, i2, 0, null);
            }
        }
    }
}

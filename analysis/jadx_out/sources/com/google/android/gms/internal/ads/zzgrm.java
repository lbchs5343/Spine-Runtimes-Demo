package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzgrm implements zzggi {
    public static zzggi zza(zzgmz zzgmzVar) throws GeneralSecurityException {
        zzgow zza = zzgmzVar.zza(zzgfv.zza());
        zzgtx zza2 = zzgua.zza();
        zza2.zzb(zza.zzg());
        zza2.zzc(zza.zze());
        zza2.zza(zza.zzb());
        int ordinal = zza.zzc().ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal == 3) {
                    zzgoa.zza.zzc();
                } else if (ordinal != 4) {
                    throw new GeneralSecurityException("unknown output prefix type");
                }
            }
            zzgoa.zza(zzgmzVar.zzb().intValue()).zzc();
        } else {
            zzgoa.zzb(zzgmzVar.zzb().intValue()).zzc();
        }
        return new zzgrm();
    }
}

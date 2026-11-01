package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes3.dex */
public final class zzgfp {
    public static zzggf zza(zzgfn zzgfnVar) throws GeneralSecurityException, IOException {
        zzgum zza = zzgfnVar.zza();
        if (zza == null || zza.zza() <= 0) {
            throw new GeneralSecurityException("empty keyset");
        }
        ArrayList arrayList = new ArrayList(zza.zza());
        for (zzguk zzgukVar : zza.zzh()) {
            zzgukVar.zza();
            try {
                zzgow zza2 = zzgow.zza(zzgukVar.zzb().zzg(), zzgukVar.zzb().zzf(), zzgukVar.zzb().zzb(), zzgukVar.zzf(), zzgukVar.zzf() == zzgve.RAW ? null : Integer.valueOf(zzgukVar.zza()));
                zzgnz zzc = zzgnz.zzc();
                zzggn zzggnVar = zzggn.f8277a;
                zzgfw zzgmzVar = !zzc.zzj(zza2) ? new zzgmz(zza2, zzggnVar) : zzc.zza(zza2, zzggnVar);
                int zzk = zzgukVar.zzk() - 2;
                if (zzk != 1 && zzk != 2 && zzk != 3) {
                    throw new GeneralSecurityException("Unknown key status");
                }
                zza.zzb();
                arrayList.add(new zzggd(zzgmzVar));
            } catch (GeneralSecurityException unused) {
                arrayList.add(null);
            }
        }
        return new zzggf(zza, Collections.unmodifiableList(arrayList));
    }

    public static void zzb(zzggf zzggfVar, zzgfo zzgfoVar) throws IOException {
        zzgfoVar.zza(zzggfVar.f8273a);
    }
}

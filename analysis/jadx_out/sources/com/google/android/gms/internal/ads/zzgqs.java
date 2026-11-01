package com.google.android.gms.internal.ads;

import g.cpi;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzgqs implements zzgov {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgqs f8607a = new zzgqs();

    /* renamed from: b, reason: collision with root package name */
    public static final zzgom f8608b = zzgom.zzb(new zzgok() { // from class: com.google.android.gms.internal.ads.zzgqp
        @Override // com.google.android.gms.internal.ads.zzgok
        public final Object zza(zzgfw zzgfwVar) {
            return zzgrm.zza((zzgmz) zzgfwVar);
        }
    }, zzgmz.class, zzggi.class);

    @Override // com.google.android.gms.internal.ads.zzgov
    public final Class zza() {
        return zzggi.class;
    }

    @Override // com.google.android.gms.internal.ads.zzgov
    public final Class zzb() {
        return zzggi.class;
    }

    @Override // com.google.android.gms.internal.ads.zzgov
    public final /* synthetic */ Object zzc(zzgou zzgouVar) throws GeneralSecurityException {
        cpi cpiVar = new cpi();
        if (zzgouVar.zzg()) {
            zzgnf zza = zzgnu.zzb().zza();
            zzgnj zza2 = zzgnm.zza(zzgouVar);
            zza.zza(zza2, "mac", "compute");
            zza.zza(zza2, "mac", "verify");
        }
        return cpiVar;
    }
}

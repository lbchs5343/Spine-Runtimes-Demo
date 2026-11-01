package com.google.android.gms.internal.ads;

import g.epm;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzggx implements zzgov {

    /* renamed from: a, reason: collision with root package name */
    public static final zzggx f8278a = new zzggx();

    /* renamed from: b, reason: collision with root package name */
    public static final zzgom f8279b = zzgom.zzb(new zzgok() { // from class: com.google.android.gms.internal.ads.zzggu
        @Override // com.google.android.gms.internal.ads.zzgok
        public final Object zza(zzgfw zzgfwVar) {
            return zzglx.zzb((zzgmz) zzgfwVar);
        }
    }, zzgmz.class, zzgfm.class);

    public static void zzd() throws GeneralSecurityException {
        zzgnw.zza().zzf(f8278a);
        zzgnw.zza().zze(f8279b);
    }

    @Override // com.google.android.gms.internal.ads.zzgov
    public final Class zza() {
        return zzgfm.class;
    }

    @Override // com.google.android.gms.internal.ads.zzgov
    public final Class zzb() {
        return zzgfm.class;
    }

    @Override // com.google.android.gms.internal.ads.zzgov
    public final /* synthetic */ Object zzc(zzgou zzgouVar) throws GeneralSecurityException {
        return new epm(zzgouVar);
    }
}

package com.google.android.gms.internal.ads;

import g.ggf;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzgiy {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgom f8370a = zzgom.zzb(new zzgok() { // from class: com.google.android.gms.internal.ads.zzgiw
        @Override // com.google.android.gms.internal.ads.zzgok
        public final Object zza(zzgfw zzgfwVar) {
            zzgjd zzgjdVar = (zzgjd) zzgfwVar;
            zzgom zzgomVar = zzgiy.f8370a;
            return zzglx.zzc(zzggh.zza(zzgjdVar.zzb().zzd()).zzb(), zzgjdVar.zzc());
        }
    }, zzgjd.class, zzgfm.class);

    /* renamed from: b, reason: collision with root package name */
    public static final zzgfx f8371b = zzgmx.zzd("type.googleapis.com/google.crypto.tink.KmsAeadKey", zzgfm.class, zzgty.REMOTE, zzguu.zzg());

    /* renamed from: c, reason: collision with root package name */
    public static final zzgix f8372c = new zzgno() { // from class: com.google.android.gms.internal.ads.zzgix
        @Override // com.google.android.gms.internal.ads.zzgno
        public final zzgfw zza(zzggj zzggjVar, Integer num) {
            return zzgjd.zza((zzgjf) zzggjVar, num);
        }
    };
    public static final /* synthetic */ int zza = 0;

    public static void zza(boolean z) throws GeneralSecurityException {
        if (!zzgmh.zza(1)) {
            throw new GeneralSecurityException("Registering KMS AEAD is not supported in FIPS mode");
        }
        zzgoi zzgoiVar = ggf.f18075b;
        zzgnz zzc = zzgnz.zzc();
        zzc.zzi(ggf.f18075b);
        zzc.zzh(ggf.f18076c);
        zzc.zzg(ggf.f18077d);
        zzc.zzf(ggf.f18074a);
        zzgnw.zza().zze(f8370a);
        zzgnp.zzb().zzc(f8372c, zzgjf.class);
        zzgmo.zzc().zzd(f8371b, true);
    }
}

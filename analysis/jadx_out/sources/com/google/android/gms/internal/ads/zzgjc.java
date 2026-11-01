package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzgjc {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgfx f8379a = zzgmx.zzd("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey", zzgfm.class, zzgty.SYMMETRIC, zzgva.zzg());

    /* renamed from: b, reason: collision with root package name */
    public static final zzgja f8380b = new zzgno() { // from class: com.google.android.gms.internal.ads.zzgja
        @Override // com.google.android.gms.internal.ads.zzgno
        public final zzgfw zza(zzggj zzggjVar, Integer num) {
            return zzgjl.zza((zzgjq) zzggjVar, num);
        }
    };

    /* renamed from: c, reason: collision with root package name */
    public static final zzgom f8381c = zzgom.zzb(new zzgok() { // from class: com.google.android.gms.internal.ads.zzgjb
        @Override // com.google.android.gms.internal.ads.zzgok
        public final Object zza(zzgfw zzgfwVar) {
            zzgjl zzgjlVar = (zzgjl) zzgfwVar;
            zzgfx zzgfxVar = zzgjc.f8379a;
            String zzd = zzgjlVar.zzb().zzd();
            zzggt zzb = zzgjlVar.zzb().zzb();
            zzgfm zzb2 = zzggh.zza(zzd).zzb();
            byte[] bArr = zzgiz.f8374b;
            try {
                return zzglx.zzc(new zzgiz(zzgue.zzf(zzggp.zzb(zzb), zzgyh.zza()), zzb2), zzgjlVar.zzc());
            } catch (zzgzm e2) {
                throw new GeneralSecurityException(e2);
            }
        }
    }, zzgjl.class, zzgfm.class);
    public static final /* synthetic */ int zza = 0;

    public static void zza(boolean z) throws GeneralSecurityException {
        if (!zzgmh.zza(1)) {
            throw new GeneralSecurityException("Registering KMS Envelope AEAD is not supported in FIPS mode");
        }
        zzgoi zzgoiVar = zzgjv.f8402b;
        zzgjv.zze(zzgnz.zzc());
        zzgnp.zzb().zzc(f8380b, zzgjq.class);
        zzgnw.zza().zze(f8381c);
        zzgmo.zzc().zzd(f8379a, true);
    }
}

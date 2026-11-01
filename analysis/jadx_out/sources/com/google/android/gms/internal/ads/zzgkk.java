package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzgkk {
    public static final /* synthetic */ int zza = 0;

    /* renamed from: b, reason: collision with root package name */
    public static final zzgom f8418b = zzgom.zzb(new zzgok() { // from class: com.google.android.gms.internal.ads.zzgkh
        @Override // com.google.android.gms.internal.ads.zzgok
        public final Object zza(zzgfw zzgfwVar) {
            zzgkg zzgkgVar = (zzgkg) zzgfwVar;
            zzgom zzgomVar = zzgkk.f8418b;
            return zzglz.zzc() ? zzglz.zzb(zzgkgVar) : zzgwt.zzb(zzgkgVar);
        }
    }, zzgkg.class, zzgfm.class);

    /* renamed from: c, reason: collision with root package name */
    public static final zzgfx f8419c = zzgmx.zzd("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key", zzgfm.class, zzgty.SYMMETRIC, zzgvk.zzg());

    /* renamed from: d, reason: collision with root package name */
    public static final zzgki f8420d = new zzgnq() { // from class: com.google.android.gms.internal.ads.zzgki
    };

    /* renamed from: a, reason: collision with root package name */
    public static final zzgkj f8417a = new zzgno() { // from class: com.google.android.gms.internal.ads.zzgkj
        @Override // com.google.android.gms.internal.ads.zzgno
        public final zzgfw zza(zzggj zzggjVar, Integer num) {
            zzgom zzgomVar = zzgkk.f8418b;
            return zzgkg.zza(((zzgkm) zzggjVar).zzb(), zzgwv.zzc(32), num);
        }
    };

    public static void zza(boolean z) throws GeneralSecurityException {
        if (!zzgmh.zza(1)) {
            throw new GeneralSecurityException("Registering XChaCha20Poly1305 is not supported in FIPS mode");
        }
        zzgoi zzgoiVar = zzgme.f8461b;
        zzgme.zze(zzgnz.zzc());
        zzgnw.zza().zze(f8418b);
        zzgnv zzb = zzgnv.zzb();
        HashMap hashMap = new HashMap();
        hashMap.put("XCHACHA20_POLY1305", zzgkm.zzc(zzgkl.zza));
        hashMap.put("XCHACHA20_POLY1305_RAW", zzgkm.zzc(zzgkl.zzc));
        zzb.zzd(Collections.unmodifiableMap(hashMap));
        zzgnp.zzb().zzc(f8417a, zzgkm.class);
        zzgnr.zza().zzb(f8420d, zzgkm.class);
        zzgmo.zzc().zzd(f8419c, true);
    }
}

package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzgit {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgom f8365a = zzgom.zzb(new zzgok() { // from class: com.google.android.gms.internal.ads.zzgir
        @Override // com.google.android.gms.internal.ads.zzgok
        public final Object zza(zzgfw zzgfwVar) {
            zzgiq zzgiqVar = (zzgiq) zzgfwVar;
            zzgom zzgomVar = zzgit.f8365a;
            return zzglk.zze() ? zzglk.zzb(zzgiqVar) : zzgvv.zzb(zzgiqVar);
        }
    }, zzgiq.class, zzgfm.class);

    /* renamed from: b, reason: collision with root package name */
    public static final zzgis f8366b = new zzgno() { // from class: com.google.android.gms.internal.ads.zzgis
        @Override // com.google.android.gms.internal.ads.zzgno
        public final zzgfw zza(zzggj zzggjVar, Integer num) {
            zzgom zzgomVar = zzgit.f8365a;
            return zzgiq.zza(((zzgiv) zzggjVar).zzb(), zzgwv.zzc(32), num);
        }
    };

    /* renamed from: c, reason: collision with root package name */
    public static final zzgfx f8367c = zzgmx.zzd("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key", zzgfm.class, zzgty.SYMMETRIC, zzgtj.zzg());
    public static final /* synthetic */ int zza = 0;

    public static void zza(boolean z) throws GeneralSecurityException {
        if (!zzgmh.zza(1)) {
            throw new GeneralSecurityException("Registering ChaCha20Poly1305 is not supported in FIPS mode");
        }
        zzgoi zzgoiVar = zzglp.f8453b;
        zzglp.zze(zzgnz.zzc());
        zzgnw.zza().zze(f8365a);
        zzgnp.zzb().zzc(f8366b, zzgiv.class);
        zzgnv zzb = zzgnv.zzb();
        HashMap hashMap = new HashMap();
        hashMap.put("CHACHA20_POLY1305", zzgiv.zzc(zzgiu.zza));
        hashMap.put("CHACHA20_POLY1305_RAW", zzgiv.zzc(zzgiu.zzc));
        zzb.zzd(Collections.unmodifiableMap(hashMap));
        zzgmo.zzc().zzd(f8367c, true);
    }
}

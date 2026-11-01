package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzghe {
    public static final /* synthetic */ int zza = 0;

    /* renamed from: c, reason: collision with root package name */
    public static final zzgom f8291c = zzgom.zzb(new zzgok() { // from class: com.google.android.gms.internal.ads.zzghb
        @Override // com.google.android.gms.internal.ads.zzgok
        public final Object zza(zzgfw zzgfwVar) {
            return zzgvw.zzb((zzgha) zzgfwVar);
        }
    }, zzgha.class, zzgfm.class);

    /* renamed from: d, reason: collision with root package name */
    public static final zzgfx f8292d = zzgmx.zzd("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey", zzgfm.class, zzgty.SYMMETRIC, zzgrz.zzh());

    /* renamed from: e, reason: collision with root package name */
    public static final zzghc f8293e = new zzgnq() { // from class: com.google.android.gms.internal.ads.zzghc
    };

    /* renamed from: a, reason: collision with root package name */
    public static final zzghd f8289a = new zzgno() { // from class: com.google.android.gms.internal.ads.zzghd
        @Override // com.google.android.gms.internal.ads.zzgno
        public final zzgfw zza(zzggj zzggjVar, Integer num) {
            zzghj zzghjVar = (zzghj) zzggjVar;
            zzgom zzgomVar = zzghe.f8291c;
            if (zzghjVar.zzb() != 16 && zzghjVar.zzb() != 32) {
                throw new GeneralSecurityException("AES key size must be 16 or 32 bytes");
            }
            zzggy zzggyVar = new zzggy();
            zzggyVar.zzd(zzghjVar);
            zzggyVar.zzc(num);
            zzggyVar.zza(zzgwv.zzc(zzghjVar.zzb()));
            zzggyVar.zzb(zzgwv.zzc(zzghjVar.zzc()));
            return zzggyVar.zze();
        }
    };

    /* renamed from: b, reason: collision with root package name */
    public static final int f8290b = 2;

    public static void zza(boolean z) throws GeneralSecurityException {
        int i = f8290b;
        if (!zzgmh.zza(i)) {
            throw new GeneralSecurityException("Can not use AES-CTR-HMAC in FIPS-mode, as BoringCrypto module is not available.");
        }
        zzgoi zzgoiVar = zzgkr.f8424b;
        zzgkr.zze(zzgnz.zzc());
        zzgnw.zza().zze(f8291c);
        zzgnv zzb = zzgnv.zzb();
        HashMap hashMap = new HashMap();
        hashMap.put("AES128_CTR_HMAC_SHA256", zzgkd.zze);
        zzghf zzghfVar = new zzghf();
        zzghfVar.zza(16);
        zzghfVar.zzc(32);
        zzghfVar.zze(16);
        zzghfVar.zzd(16);
        zzghg zzghgVar = zzghg.zzc;
        zzghfVar.zzb(zzghgVar);
        zzghh zzghhVar = zzghh.zzc;
        zzghfVar.zzf(zzghhVar);
        hashMap.put("AES128_CTR_HMAC_SHA256_RAW", zzghfVar.zzg());
        hashMap.put("AES256_CTR_HMAC_SHA256", zzgkd.zzf);
        zzghf zzghfVar2 = new zzghf();
        zzghfVar2.zza(32);
        zzghfVar2.zzc(32);
        zzghfVar2.zze(32);
        zzghfVar2.zzd(16);
        zzghfVar2.zzb(zzghgVar);
        zzghfVar2.zzf(zzghhVar);
        hashMap.put("AES256_CTR_HMAC_SHA256_RAW", zzghfVar2.zzg());
        zzb.zzd(Collections.unmodifiableMap(hashMap));
        zzgnr.zza().zzb(f8293e, zzghj.class);
        zzgnp.zzb().zzc(f8289a, zzghj.class);
        zzgmo.zzc().zzf(f8292d, i, true);
    }
}

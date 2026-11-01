package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzgqg {

    /* renamed from: c, reason: collision with root package name */
    public static final zzgom f8593c = zzgom.zzb(new zzgok() { // from class: com.google.android.gms.internal.ads.zzgqc
        @Override // com.google.android.gms.internal.ads.zzgok
        public final Object zza(zzgfw zzgfwVar) {
            return new zzgrg((zzgqb) zzgfwVar);
        }
    }, zzgqb.class, zzgpv.class);

    /* renamed from: e, reason: collision with root package name */
    public static final zzgom f8595e = zzgom.zzb(new zzgok() { // from class: com.google.android.gms.internal.ads.zzgqd
        @Override // com.google.android.gms.internal.ads.zzgok
        public final Object zza(zzgfw zzgfwVar) {
            return zzgwr.zzb((zzgqb) zzgfwVar);
        }
    }, zzgqb.class, zzggi.class);

    /* renamed from: f, reason: collision with root package name */
    public static final zzgfx f8596f = zzgmx.zzd("type.googleapis.com/google.crypto.tink.HmacKey", zzggi.class, zzgty.SYMMETRIC, zzgtq.zzi());

    /* renamed from: a, reason: collision with root package name */
    public static final zzgqe f8591a = new zzgnq() { // from class: com.google.android.gms.internal.ads.zzgqe
    };

    /* renamed from: b, reason: collision with root package name */
    public static final zzgqf f8592b = new zzgno() { // from class: com.google.android.gms.internal.ads.zzgqf
        @Override // com.google.android.gms.internal.ads.zzgno
        public final zzgfw zza(zzggj zzggjVar, Integer num) {
            zzgql zzgqlVar = (zzgql) zzggjVar;
            zzgpz zzgpzVar = new zzgpz();
            zzgpzVar.zzc(zzgqlVar);
            zzgpzVar.zzb(zzgwv.zzc(zzgqlVar.zzc()));
            zzgpzVar.zza(num);
            return zzgpzVar.zzd();
        }
    };

    /* renamed from: d, reason: collision with root package name */
    public static final int f8594d = 2;

    public static void zza(boolean z) throws GeneralSecurityException {
        int i = f8594d;
        if (!zzgmh.zza(i)) {
            throw new GeneralSecurityException("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
        }
        zzgmm zzgmmVar = zzgrl.f8615c;
        zzgrl.zze(zzgnz.zzc());
        zzgnw.zza().zze(f8593c);
        zzgnw.zza().zze(f8595e);
        zzgnv zzb = zzgnv.zzb();
        HashMap hashMap = new HashMap();
        hashMap.put("HMAC_SHA256_128BITTAG", zzgqy.zza);
        zzgqh zzgqhVar = new zzgqh();
        zzgqhVar.zzb(32);
        zzgqhVar.zzc(16);
        zzgqj zzgqjVar = zzgqj.zzd;
        zzgqhVar.zzd(zzgqjVar);
        zzgqi zzgqiVar = zzgqi.zzc;
        zzgqhVar.zza(zzgqiVar);
        hashMap.put("HMAC_SHA256_128BITTAG_RAW", zzgqhVar.zze());
        zzgqh zzgqhVar2 = new zzgqh();
        zzgqhVar2.zzb(32);
        zzgqhVar2.zzc(32);
        zzgqj zzgqjVar2 = zzgqj.zza;
        zzgqhVar2.zzd(zzgqjVar2);
        zzgqhVar2.zza(zzgqiVar);
        hashMap.put("HMAC_SHA256_256BITTAG", zzgqhVar2.zze());
        zzgqh zzgqhVar3 = new zzgqh();
        zzgqhVar3.zzb(32);
        zzgqhVar3.zzc(32);
        zzgqhVar3.zzd(zzgqjVar);
        zzgqhVar3.zza(zzgqiVar);
        hashMap.put("HMAC_SHA256_256BITTAG_RAW", zzgqhVar3.zze());
        zzgqh zzgqhVar4 = new zzgqh();
        zzgqhVar4.zzb(64);
        zzgqhVar4.zzc(16);
        zzgqhVar4.zzd(zzgqjVar2);
        zzgqi zzgqiVar2 = zzgqi.zze;
        zzgqhVar4.zza(zzgqiVar2);
        hashMap.put("HMAC_SHA512_128BITTAG", zzgqhVar4.zze());
        zzgqh zzgqhVar5 = new zzgqh();
        zzgqhVar5.zzb(64);
        zzgqhVar5.zzc(16);
        zzgqhVar5.zzd(zzgqjVar);
        zzgqhVar5.zza(zzgqiVar2);
        hashMap.put("HMAC_SHA512_128BITTAG_RAW", zzgqhVar5.zze());
        zzgqh zzgqhVar6 = new zzgqh();
        zzgqhVar6.zzb(64);
        zzgqhVar6.zzc(32);
        zzgqhVar6.zzd(zzgqjVar2);
        zzgqhVar6.zza(zzgqiVar2);
        hashMap.put("HMAC_SHA512_256BITTAG", zzgqhVar6.zze());
        zzgqh zzgqhVar7 = new zzgqh();
        zzgqhVar7.zzb(64);
        zzgqhVar7.zzc(32);
        zzgqhVar7.zzd(zzgqjVar);
        zzgqhVar7.zza(zzgqiVar2);
        hashMap.put("HMAC_SHA512_256BITTAG_RAW", zzgqhVar7.zze());
        hashMap.put("HMAC_SHA512_512BITTAG", zzgqy.zzb);
        zzgqh zzgqhVar8 = new zzgqh();
        zzgqhVar8.zzb(64);
        zzgqhVar8.zzc(64);
        zzgqhVar8.zzd(zzgqjVar);
        zzgqhVar8.zza(zzgqiVar2);
        hashMap.put("HMAC_SHA512_512BITTAG_RAW", zzgqhVar8.zze());
        zzb.zzd(Collections.unmodifiableMap(hashMap));
        zzgnp.zzb().zzc(f8592b, zzgql.class);
        zzgnr.zza().zzb(f8591a, zzgql.class);
        zzgmo.zzc().zzf(f8596f, i, true);
    }
}

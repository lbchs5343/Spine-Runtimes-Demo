package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzghp {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgom f8315a = zzgom.zzb(new zzgok() { // from class: com.google.android.gms.internal.ads.zzghn
        @Override // com.google.android.gms.internal.ads.zzgok
        public final Object zza(zzgfw zzgfwVar) {
            return zzgvs.zzb((zzghm) zzgfwVar);
        }
    }, zzghm.class, zzgfm.class);

    /* renamed from: b, reason: collision with root package name */
    public static final zzgfx f8316b = zzgmx.zzd("type.googleapis.com/google.crypto.tink.AesEaxKey", zzgfm.class, zzgty.SYMMETRIC, zzgso.zzh());

    /* renamed from: c, reason: collision with root package name */
    public static final zzgho f8317c = new zzgno() { // from class: com.google.android.gms.internal.ads.zzgho
        @Override // com.google.android.gms.internal.ads.zzgno
        public final zzgfw zza(zzggj zzggjVar, Integer num) {
            zzght zzghtVar = (zzght) zzggjVar;
            zzgom zzgomVar = zzghp.f8315a;
            if (zzghtVar.zzc() == 24) {
                throw new GeneralSecurityException("192 bit AES GCM Parameters are not valid");
            }
            zzghk zzghkVar = new zzghk();
            zzghkVar.zzc(zzghtVar);
            zzghkVar.zza(num);
            zzghkVar.zzb(zzgwv.zzc(zzghtVar.zzc()));
            return zzghkVar.zzd();
        }
    };
    public static final /* synthetic */ int zza = 0;

    public static void zza(boolean z) throws GeneralSecurityException {
        if (!zzgmh.zza(1)) {
            throw new GeneralSecurityException("Registering AES EAX is not supported in FIPS mode");
        }
        zzgoi zzgoiVar = zzgkw.f8428b;
        zzgkw.zze(zzgnz.zzc());
        zzgnw.zza().zze(f8315a);
        zzgnv zzb = zzgnv.zzb();
        HashMap hashMap = new HashMap();
        hashMap.put("AES128_EAX", zzgkd.zzc);
        zzghq zzghqVar = new zzghq();
        zzghqVar.zza(16);
        zzghqVar.zzb(16);
        zzghqVar.zzc(16);
        zzghr zzghrVar = zzghr.zzc;
        zzghqVar.zzd(zzghrVar);
        hashMap.put("AES128_EAX_RAW", zzghqVar.zze());
        hashMap.put("AES256_EAX", zzgkd.zzd);
        zzghq zzghqVar2 = new zzghq();
        zzghqVar2.zza(16);
        zzghqVar2.zzb(32);
        zzghqVar2.zzc(16);
        zzghqVar2.zzd(zzghrVar);
        hashMap.put("AES256_EAX_RAW", zzghqVar2.zze());
        zzb.zzd(Collections.unmodifiableMap(hashMap));
        zzgnp.zzb().zzc(f8317c, zzght.class);
        zzgmo.zzc().zzd(f8316b, true);
    }
}

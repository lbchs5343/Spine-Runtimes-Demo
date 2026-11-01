package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzgpq {

    /* renamed from: b, reason: collision with root package name */
    public static final zzgpn f8566b = new zzgno() { // from class: com.google.android.gms.internal.ads.zzgpn
        @Override // com.google.android.gms.internal.ads.zzgno
        public final zzgfw zza(zzggj zzggjVar, Integer num) {
            return zzgpq.zzb((zzgpu) zzggjVar, num);
        }
    };

    /* renamed from: c, reason: collision with root package name */
    public static final zzgom f8567c = zzgom.zzb(new zzgok() { // from class: com.google.android.gms.internal.ads.zzgpo
        @Override // com.google.android.gms.internal.ads.zzgok
        public final Object zza(zzgfw zzgfwVar) {
            return zzgpq.zzc((zzgpm) zzgfwVar);
        }
    }, zzgpm.class, zzgpv.class);

    /* renamed from: d, reason: collision with root package name */
    public static final zzgom f8568d = zzgom.zzb(new zzgok() { // from class: com.google.android.gms.internal.ads.zzgpp
        @Override // com.google.android.gms.internal.ads.zzgok
        public final Object zza(zzgfw zzgfwVar) {
            return zzgpq.zza((zzgpm) zzgfwVar);
        }
    }, zzgpm.class, zzggi.class);

    /* renamed from: a, reason: collision with root package name */
    public static final zzgfx f8565a = zzgmx.zzd("type.googleapis.com/google.crypto.tink.AesCmacKey", zzggi.class, zzgty.SYMMETRIC, zzgrq.zzh());

    public static zzggi zza(zzgpm zzgpmVar) {
        if (zzgpmVar.zzb().zzc() == 32) {
            return zzgwr.zza(zzgpmVar);
        }
        throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
    }

    public static zzgpm zzb(zzgpu zzgpuVar, Integer num) {
        if (zzgpuVar.zzc() != 32) {
            throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
        }
        zzgpk zzgpkVar = new zzgpk();
        zzgpkVar.zzc(zzgpuVar);
        zzgpkVar.zza(zzgwv.zzc(zzgpuVar.zzc()));
        zzgpkVar.zzb(num);
        return zzgpkVar.zzd();
    }

    public static zzgpv zzc(zzgpm zzgpmVar) {
        if (zzgpmVar.zzb().zzc() == 32) {
            return new zzgrf(zzgpmVar);
        }
        throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
    }

    public static void zzd(boolean z) throws GeneralSecurityException {
        if (!zzgmh.zza(1)) {
            throw new GeneralSecurityException("Registering AES CMAC is not supported in FIPS mode");
        }
        zzgoi zzgoiVar = zzgrd.f8610b;
        zzgrd.zze(zzgnz.zzc());
        zzgnp.zzb().zzc(f8566b, zzgpu.class);
        zzgnw.zza().zze(f8567c);
        zzgnw.zza().zze(f8568d);
        zzgnv zzb = zzgnv.zzb();
        HashMap hashMap = new HashMap();
        zzgpu zzgpuVar = zzgqy.zzc;
        hashMap.put("AES_CMAC", zzgpuVar);
        hashMap.put("AES256_CMAC", zzgpuVar);
        zzgpr zzgprVar = new zzgpr();
        zzgprVar.zza(32);
        zzgprVar.zzb(16);
        zzgprVar.zzc(zzgps.zzd);
        hashMap.put("AES256_CMAC_RAW", zzgprVar.zzd());
        zzb.zzd(Collections.unmodifiableMap(hashMap));
        zzgmo.zzc().zzd(f8565a, true);
    }
}

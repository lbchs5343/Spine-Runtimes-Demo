package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.HashMap;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;

/* loaded from: classes3.dex */
public final class zzgil {

    /* renamed from: b, reason: collision with root package name */
    public static final zzgom f8353b = zzgom.zzb(new zzgok() { // from class: com.google.android.gms.internal.ads.zzgii
        @Override // com.google.android.gms.internal.ads.zzgok
        public final Object zza(zzgfw zzgfwVar) {
            return zzgmg.zzb((zzgih) zzgfwVar);
        }
    }, zzgih.class, zzgfm.class);

    /* renamed from: c, reason: collision with root package name */
    public static final zzgij f8354c = new zzgno() { // from class: com.google.android.gms.internal.ads.zzgij
        @Override // com.google.android.gms.internal.ads.zzgno
        public final zzgfw zza(zzggj zzggjVar, Integer num) {
            zzgip zzgipVar = (zzgip) zzggjVar;
            zzgif zzgifVar = new zzgif();
            zzgifVar.zzc(zzgipVar);
            zzgifVar.zza(num);
            zzgifVar.zzb(zzgwv.zzc(zzgipVar.zzb()));
            return zzgifVar.zzd();
        }
    };

    /* renamed from: d, reason: collision with root package name */
    public static final zzgik f8355d = new zzgnq() { // from class: com.google.android.gms.internal.ads.zzgik
    };

    /* renamed from: a, reason: collision with root package name */
    public static final zzgfx f8352a = zzgmx.zzd("type.googleapis.com/google.crypto.tink.AesGcmSivKey", zzgfm.class, zzgty.SYMMETRIC, zzgtd.zzg());

    public static void zza(boolean z) throws GeneralSecurityException {
        if (!zzgmh.zza(1)) {
            throw new GeneralSecurityException("Registering AES GCM SIV is not supported in FIPS mode");
        }
        zzgoi zzgoiVar = zzgli.f8443b;
        zzgli.zze(zzgnz.zzc());
        try {
            Cipher.getInstance("AES/GCM-SIV/NoPadding");
            zzgnw.zza().zze(f8353b);
            zzgnv zzb = zzgnv.zzb();
            HashMap hashMap = new HashMap();
            zzgim zzgimVar = new zzgim();
            zzgimVar.zza(16);
            zzgin zzginVar = zzgin.zza;
            zzgimVar.zzb(zzginVar);
            hashMap.put("AES128_GCM_SIV", zzgimVar.zzc());
            zzgim zzgimVar2 = new zzgim();
            zzgimVar2.zza(16);
            zzgin zzginVar2 = zzgin.zzc;
            zzgimVar2.zzb(zzginVar2);
            hashMap.put("AES128_GCM_SIV_RAW", zzgimVar2.zzc());
            zzgim zzgimVar3 = new zzgim();
            zzgimVar3.zza(32);
            zzgimVar3.zzb(zzginVar);
            hashMap.put("AES256_GCM_SIV", zzgimVar3.zzc());
            zzgim zzgimVar4 = new zzgim();
            zzgimVar4.zza(32);
            zzgimVar4.zzb(zzginVar2);
            hashMap.put("AES256_GCM_SIV_RAW", zzgimVar4.zzc());
            zzb.zzd(Collections.unmodifiableMap(hashMap));
            zzgnr.zza().zzb(f8355d, zzgip.class);
            zzgnp.zzb().zzc(f8354c, zzgip.class);
            zzgmo.zzc().zzd(f8352a, true);
        } catch (NoSuchAlgorithmException | NoSuchPaddingException unused) {
        }
    }
}

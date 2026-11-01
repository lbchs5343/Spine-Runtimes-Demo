package com.google.android.gms.internal.ads;

import g.awf;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzgrl {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgoe f8613a;

    /* renamed from: b, reason: collision with root package name */
    public static final zzgmw f8614b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzgmm f8615c;

    /* renamed from: d, reason: collision with root package name */
    public static final zzgms f8616d;

    /* renamed from: e, reason: collision with root package name */
    public static final zzgmm f8617e;

    /* renamed from: f, reason: collision with root package name */
    public static final zzgoi f8618f;
    public static final /* synthetic */ int zza = 0;

    static {
        zzgwu zzb = zzgpj.zzb("type.googleapis.com/google.crypto.tink.HmacKey");
        zzgmk zza2 = zzgmm.zza();
        zza2.zza(zzgve.RAW, zzgqj.zzd);
        zza2.zza(zzgve.TINK, zzgqj.zza);
        zza2.zza(zzgve.LEGACY, zzgqj.zzc);
        zza2.zza(zzgve.CRUNCHY, zzgqj.zzb);
        f8615c = zza2.zzb();
        zzgmk zza3 = zzgmm.zza();
        zza3.zza(zzgtn.SHA1, zzgqi.zza);
        zza3.zza(zzgtn.SHA224, zzgqi.zzb);
        zza3.zza(zzgtn.SHA256, zzgqi.zzc);
        zza3.zza(zzgtn.SHA384, zzgqi.zzd);
        zza3.zza(zzgtn.SHA512, zzgqi.zze);
        f8617e = zza3.zzb();
        f8618f = zzgoi.zzb(new zzgog() { // from class: com.google.android.gms.internal.ads.zzgrh
            @Override // com.google.android.gms.internal.ads.zzgog
            public final zzgpb zza(zzggj zzggjVar) {
                return zzgrl.zzb((zzgql) zzggjVar);
            }
        }, zzgql.class, zzgox.class);
        f8613a = zzgoe.zzb(new zzgoc() { // from class: com.google.android.gms.internal.ads.zzgri
            @Override // com.google.android.gms.internal.ads.zzgoc
            public final zzggj zza(zzgpb zzgpbVar) {
                return zzgrl.zzd((zzgox) zzgpbVar);
            }
        }, zzb, zzgox.class);
        f8614b = zzgmw.zzb(new zzgmu() { // from class: com.google.android.gms.internal.ads.zzgrj
            @Override // com.google.android.gms.internal.ads.zzgmu
            public final zzgpb zza(zzgfw zzgfwVar, zzggn zzggnVar) {
                return zzgrl.zza((zzgqb) zzgfwVar, zzggnVar);
            }
        }, zzgqb.class, zzgow.class);
        f8616d = zzgms.zzb(new zzgmq() { // from class: com.google.android.gms.internal.ads.zzgrk
            @Override // com.google.android.gms.internal.ads.zzgmq
            public final zzgfw zza(zzgpb zzgpbVar, zzggn zzggnVar) {
                return zzgrl.zzc((zzgow) zzgpbVar, zzggnVar);
            }
        }, zzb, zzgow.class);
    }

    public static zzgow zza(zzgqb zzgqbVar, zzggn zzggnVar) {
        zzgto zzb = zzgtq.zzb();
        zzgql zzb2 = zzgqbVar.zzb();
        zzgtu zzc = zzgtw.zzc();
        zzc.zzb(zzb2.zzb());
        zzc.zza((zzgtn) f8617e.zzb(zzb2.zzf()));
        zzb.zzb((zzgtw) zzc.zzbr());
        byte[] zzd = zzgqbVar.zzd().zzd(zzggnVar);
        zzb.zza(zzgxp.zzv(zzd, 0, zzd.length));
        return zzgow.zza("type.googleapis.com/google.crypto.tink.HmacKey", ((zzgtq) zzb.zzbr()).zzaN(), zzgty.SYMMETRIC, (zzgve) f8615c.zzb(zzgqbVar.zzb().zzg()), zzgqbVar.zze());
    }

    public static zzgox zzb(zzgql zzgqlVar) {
        zzguc zza2 = zzgue.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.HmacKey");
        zzgtr zzc = zzgtt.zzc();
        zzgtu zzc2 = zzgtw.zzc();
        zzc2.zzb(zzgqlVar.zzb());
        zzc2.zza((zzgtn) f8617e.zzb(zzgqlVar.zzf()));
        zzc.zzb((zzgtw) zzc2.zzbr());
        zzc.zza(zzgqlVar.zzc());
        zza2.zzc(((zzgtt) zzc.zzbr()).zzaN());
        zza2.zza((zzgve) f8615c.zzb(zzgqlVar.zzg()));
        return zzgox.zzb((zzgue) zza2.zzbr());
    }

    public static /* synthetic */ zzgqb zzc(zzgow zzgowVar, zzggn zzggnVar) {
        if (!zzgowVar.zzg().equals("type.googleapis.com/google.crypto.tink.HmacKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to HmacProtoSerialization.parseKey");
        }
        try {
            zzgtq zzf = zzgtq.zzf(zzgowVar.zze(), zzgyh.zza());
            if (zzf.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzgqh zze = zzgql.zze();
            zze.zzb(zzf.zzh().zzd());
            zze.zzc(zzf.zzg().zza());
            zze.zza((zzgqi) f8617e.zzc(zzf.zzg().zzb()));
            zze.zzd((zzgqj) f8615c.zzc(zzgowVar.zzc()));
            zzgql zze2 = zze.zze();
            zzgpz zza2 = zzgqb.zza();
            zza2.zzc(zze2);
            zza2.zzb(zzgwv.zzb(zzf.zzh().zzA(), zzggnVar));
            zza2.zza(zzgowVar.zzf());
            return zza2.zzd();
        } catch (zzgzm | IllegalArgumentException unused) {
            throw new GeneralSecurityException("Parsing HmacKey failed");
        }
    }

    public static /* synthetic */ zzgql zzd(zzgox zzgoxVar) {
        if (!zzgoxVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.HmacKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to HmacProtoSerialization.parseParameters: ".concat(String.valueOf(zzgoxVar.zzc().zzi())));
        }
        try {
            zzgtt zzg = zzgtt.zzg(zzgoxVar.zzc().zzh(), zzgyh.zza());
            if (zzg.zzb() != 0) {
                throw new GeneralSecurityException(awf.ac(zzg.zzb(), "Parsing HmacParameters failed: unknown Version "));
            }
            zzgqh zze = zzgql.zze();
            zze.zzb(zzg.zza());
            zze.zzc(zzg.zzh().zza());
            zze.zza((zzgqi) f8617e.zzc(zzg.zzh().zzb()));
            zze.zzd((zzgqj) f8615c.zzc(zzgoxVar.zzc().zzg()));
            return zze.zze();
        } catch (zzgzm e2) {
            throw new GeneralSecurityException("Parsing HmacParameters failed: ", e2);
        }
    }

    public static void zze(zzgnz zzgnzVar) throws GeneralSecurityException {
        zzgnzVar.zzi(f8618f);
        zzgnzVar.zzh(f8613a);
        zzgnzVar.zzg(f8614b);
        zzgnzVar.zzf(f8616d);
    }
}

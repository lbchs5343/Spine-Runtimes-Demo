package com.google.android.gms.internal.ads;

import g.awf;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzgkr {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgms f8423a;

    /* renamed from: b, reason: collision with root package name */
    public static final zzgoi f8424b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzgoe f8425c;

    /* renamed from: d, reason: collision with root package name */
    public static final zzgmw f8426d;
    public static final /* synthetic */ int zza = 0;

    static {
        zzgwu zzb = zzgpj.zzb("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        f8424b = zzgoi.zzb(new zzgog() { // from class: com.google.android.gms.internal.ads.zzgkn
            @Override // com.google.android.gms.internal.ads.zzgog
            public final zzgpb zza(zzggj zzggjVar) {
                return zzgkr.zzd((zzghj) zzggjVar);
            }
        }, zzghj.class, zzgox.class);
        f8425c = zzgoe.zzb(new zzgoc() { // from class: com.google.android.gms.internal.ads.zzgko
            @Override // com.google.android.gms.internal.ads.zzgoc
            public final zzggj zza(zzgpb zzgpbVar) {
                return zzgkr.zzb((zzgox) zzgpbVar);
            }
        }, zzb, zzgox.class);
        f8426d = zzgmw.zzb(new zzgmu() { // from class: com.google.android.gms.internal.ads.zzgkp
            @Override // com.google.android.gms.internal.ads.zzgmu
            public final zzgpb zza(zzgfw zzgfwVar, zzggn zzggnVar) {
                return zzgkr.zzc((zzgha) zzgfwVar, zzggnVar);
            }
        }, zzgha.class, zzgow.class);
        f8423a = zzgms.zzb(new zzgmq() { // from class: com.google.android.gms.internal.ads.zzgkq
            @Override // com.google.android.gms.internal.ads.zzgmq
            public final zzgfw zza(zzgpb zzgpbVar, zzggn zzggnVar) {
                return zzgkr.zza((zzgow) zzgpbVar, zzggnVar);
            }
        }, zzb, zzgow.class);
    }

    public static zzgve e(zzghh zzghhVar) {
        if (zzghh.zza.equals(zzghhVar)) {
            return zzgve.TINK;
        }
        if (zzghh.zzb.equals(zzghhVar)) {
            return zzgve.CRUNCHY;
        }
        if (zzghh.zzc.equals(zzghhVar)) {
            return zzgve.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzghhVar)));
    }

    public static zzghg f(zzgtn zzgtnVar) {
        int ordinal = zzgtnVar.ordinal();
        if (ordinal == 1) {
            return zzghg.zza;
        }
        if (ordinal == 2) {
            return zzghg.zzd;
        }
        if (ordinal == 3) {
            return zzghg.zzc;
        }
        if (ordinal == 4) {
            return zzghg.zze;
        }
        if (ordinal == 5) {
            return zzghg.zzb;
        }
        throw new GeneralSecurityException(awf.ac(zzgtnVar.zza(), "Unable to parse HashType: "));
    }

    public static zzghh g(zzgve zzgveVar) {
        int ordinal = zzgveVar.ordinal();
        if (ordinal == 1) {
            return zzghh.zza;
        }
        if (ordinal != 2) {
            if (ordinal == 3) {
                return zzghh.zzc;
            }
            if (ordinal != 4) {
                throw new GeneralSecurityException(awf.ac(zzgveVar.zza(), "Unable to parse OutputPrefixType: "));
            }
        }
        return zzghh.zzb;
    }

    public static zzgtw h(zzghj zzghjVar) {
        zzgtn zzgtnVar;
        zzgtu zzc = zzgtw.zzc();
        zzc.zzb(zzghjVar.zze());
        zzghg zzg = zzghjVar.zzg();
        if (zzghg.zza.equals(zzg)) {
            zzgtnVar = zzgtn.SHA1;
        } else if (zzghg.zzb.equals(zzg)) {
            zzgtnVar = zzgtn.SHA224;
        } else if (zzghg.zzc.equals(zzg)) {
            zzgtnVar = zzgtn.SHA256;
        } else if (zzghg.zzd.equals(zzg)) {
            zzgtnVar = zzgtn.SHA384;
        } else {
            if (!zzghg.zze.equals(zzg)) {
                throw new GeneralSecurityException("Unable to serialize HashType ".concat(String.valueOf(zzg)));
            }
            zzgtnVar = zzgtn.SHA512;
        }
        zzc.zza(zzgtnVar);
        return (zzgtw) zzc.zzbr();
    }

    public static /* synthetic */ zzgha zza(zzgow zzgowVar, zzggn zzggnVar) {
        if (!zzgowVar.zzg().equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseKey");
        }
        try {
            zzgrz zzd = zzgrz.zzd(zzgowVar.zze(), zzgyh.zza());
            if (zzd.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            if (zzd.zzf().zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys inner AES CTR keys are accepted");
            }
            if (zzd.zzg().zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys inner HMAC keys are accepted");
            }
            zzghf zzf = zzghj.zzf();
            zzf.zza(zzd.zzf().zzg().zzd());
            zzf.zzc(zzd.zzg().zzh().zzd());
            zzf.zzd(zzd.zzf().zzf().zza());
            zzf.zze(zzd.zzg().zzg().zza());
            zzf.zzb(f(zzd.zzg().zzg().zzb()));
            zzf.zzf(g(zzgowVar.zzc()));
            zzghj zzg = zzf.zzg();
            zzggy zza2 = zzgha.zza();
            zza2.zzd(zzg);
            zza2.zza(zzgwv.zzb(zzd.zzf().zzg().zzA(), zzggnVar));
            zza2.zzb(zzgwv.zzb(zzd.zzg().zzh().zzA(), zzggnVar));
            zza2.zzc(zzgowVar.zzf());
            return zza2.zze();
        } catch (zzgzm unused) {
            throw new GeneralSecurityException("Parsing AesCtrHmacAeadKey failed");
        }
    }

    public static /* synthetic */ zzghj zzb(zzgox zzgoxVar) {
        if (!zzgoxVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseParameters: ".concat(String.valueOf(zzgoxVar.zzc().zzi())));
        }
        try {
            zzgsc zzc = zzgsc.zzc(zzgoxVar.zzc().zzh(), zzgyh.zza());
            if (zzc.zzf().zzb() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzghf zzf = zzghj.zzf();
            zzf.zza(zzc.zzd().zza());
            zzf.zzc(zzc.zzf().zza());
            zzf.zzd(zzc.zzd().zzf().zza());
            zzf.zze(zzc.zzf().zzh().zza());
            zzf.zzb(f(zzc.zzf().zzh().zzb()));
            zzf.zzf(g(zzgoxVar.zzc().zzg()));
            return zzf.zzg();
        } catch (zzgzm e2) {
            throw new GeneralSecurityException("Parsing AesCtrHmacAeadParameters failed: ", e2);
        }
    }

    public static /* synthetic */ zzgow zzc(zzgha zzghaVar, zzggn zzggnVar) {
        zzgrx zzb = zzgrz.zzb();
        zzgsd zzb2 = zzgsf.zzb();
        zzgsj zzb3 = zzgsl.zzb();
        zzb3.zza(zzghaVar.zzb().zzd());
        zzb2.zzb((zzgsl) zzb3.zzbr());
        byte[] zzd = zzghaVar.zzd().zzd(zzggnVar);
        zzb2.zza(zzgxp.zzv(zzd, 0, zzd.length));
        zzb.zza((zzgsf) zzb2.zzbr());
        zzgto zzb4 = zzgtq.zzb();
        zzb4.zzb(h(zzghaVar.zzb()));
        byte[] zzd2 = zzghaVar.zze().zzd(zzggnVar);
        zzb4.zza(zzgxp.zzv(zzd2, 0, zzd2.length));
        zzb.zzb((zzgtq) zzb4.zzbr());
        return zzgow.zza("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey", ((zzgrz) zzb.zzbr()).zzaN(), zzgty.SYMMETRIC, e(zzghaVar.zzb().zzh()), zzghaVar.zzf());
    }

    public static /* synthetic */ zzgox zzd(zzghj zzghjVar) {
        zzguc zza2 = zzgue.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        zzgsa zza3 = zzgsc.zza();
        zzgsg zzb = zzgsi.zzb();
        zzgsj zzb2 = zzgsl.zzb();
        zzb2.zza(zzghjVar.zzd());
        zzb.zzb((zzgsl) zzb2.zzbr());
        zzb.zza(zzghjVar.zzb());
        zza3.zza((zzgsi) zzb.zzbr());
        zzgtr zzc = zzgtt.zzc();
        zzc.zzb(h(zzghjVar));
        zzc.zza(zzghjVar.zzc());
        zza3.zzb((zzgtt) zzc.zzbr());
        zza2.zzc(((zzgsc) zza3.zzbr()).zzaN());
        zza2.zza(e(zzghjVar.zzh()));
        return zzgox.zzb((zzgue) zza2.zzbr());
    }

    public static void zze(zzgnz zzgnzVar) throws GeneralSecurityException {
        zzgnzVar.zzi(f8424b);
        zzgnzVar.zzh(f8425c);
        zzgnzVar.zzg(f8426d);
        zzgnzVar.zzf(f8423a);
    }
}

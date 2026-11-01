package com.google.android.gms.internal.ads;

import g.awf;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzgkw {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgms f8427a;

    /* renamed from: b, reason: collision with root package name */
    public static final zzgoi f8428b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzgoe f8429c;

    /* renamed from: d, reason: collision with root package name */
    public static final zzgmw f8430d;
    public static final /* synthetic */ int zza = 0;

    static {
        zzgwu zzb = zzgpj.zzb("type.googleapis.com/google.crypto.tink.AesEaxKey");
        f8428b = zzgoi.zzb(new zzgog() { // from class: com.google.android.gms.internal.ads.zzgks
            @Override // com.google.android.gms.internal.ads.zzgog
            public final zzgpb zza(zzggj zzggjVar) {
                return zzgkw.zzd((zzght) zzggjVar);
            }
        }, zzght.class, zzgox.class);
        f8429c = zzgoe.zzb(new zzgoc() { // from class: com.google.android.gms.internal.ads.zzgkt
            @Override // com.google.android.gms.internal.ads.zzgoc
            public final zzggj zza(zzgpb zzgpbVar) {
                return zzgkw.zzb((zzgox) zzgpbVar);
            }
        }, zzb, zzgox.class);
        f8430d = zzgmw.zzb(new zzgmu() { // from class: com.google.android.gms.internal.ads.zzgku
            @Override // com.google.android.gms.internal.ads.zzgmu
            public final zzgpb zza(zzgfw zzgfwVar, zzggn zzggnVar) {
                return zzgkw.zzc((zzghm) zzgfwVar, zzggnVar);
            }
        }, zzghm.class, zzgow.class);
        f8427a = zzgms.zzb(new zzgmq() { // from class: com.google.android.gms.internal.ads.zzgkv
            @Override // com.google.android.gms.internal.ads.zzgmq
            public final zzgfw zza(zzgpb zzgpbVar, zzggn zzggnVar) {
                return zzgkw.zza((zzgow) zzgpbVar, zzggnVar);
            }
        }, zzb, zzgow.class);
    }

    public static zzghr e(zzgve zzgveVar) {
        int ordinal = zzgveVar.ordinal();
        if (ordinal == 1) {
            return zzghr.zza;
        }
        if (ordinal != 2) {
            if (ordinal == 3) {
                return zzghr.zzc;
            }
            if (ordinal != 4) {
                throw new GeneralSecurityException(awf.ac(zzgveVar.zza(), "Unable to parse OutputPrefixType: "));
            }
        }
        return zzghr.zzb;
    }

    public static zzgve f(zzghr zzghrVar) {
        if (zzghr.zza.equals(zzghrVar)) {
            return zzgve.TINK;
        }
        if (zzghr.zzb.equals(zzghrVar)) {
            return zzgve.CRUNCHY;
        }
        if (zzghr.zzc.equals(zzghrVar)) {
            return zzgve.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzghrVar)));
    }

    public static /* synthetic */ zzghm zza(zzgow zzgowVar, zzggn zzggnVar) {
        if (!zzgowVar.zzg().equals("type.googleapis.com/google.crypto.tink.AesEaxKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesEaxProtoSerialization.parseKey");
        }
        try {
            zzgso zzd = zzgso.zzd(zzgowVar.zze(), zzgyh.zza());
            if (zzd.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzghq zzd2 = zzght.zzd();
            zzd2.zzb(zzd.zzg().zzd());
            zzd2.zza(zzd.zzf().zza());
            zzd2.zzc(16);
            zzd2.zzd(e(zzgowVar.zzc()));
            zzght zze = zzd2.zze();
            zzghk zza2 = zzghm.zza();
            zza2.zzc(zze);
            zza2.zzb(zzgwv.zzb(zzd.zzg().zzA(), zzggnVar));
            zza2.zza(zzgowVar.zzf());
            return zza2.zzd();
        } catch (zzgzm unused) {
            throw new GeneralSecurityException("Parsing AesEaxcKey failed");
        }
    }

    public static /* synthetic */ zzght zzb(zzgox zzgoxVar) {
        if (!zzgoxVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.AesEaxKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesEaxProtoSerialization.parseParameters: ".concat(String.valueOf(zzgoxVar.zzc().zzi())));
        }
        try {
            zzgsr zzd = zzgsr.zzd(zzgoxVar.zzc().zzh(), zzgyh.zza());
            zzghq zzd2 = zzght.zzd();
            zzd2.zzb(zzd.zza());
            zzd2.zza(zzd.zzf().zza());
            zzd2.zzc(16);
            zzd2.zzd(e(zzgoxVar.zzc().zzg()));
            return zzd2.zze();
        } catch (zzgzm e2) {
            throw new GeneralSecurityException("Parsing AesEaxParameters failed: ", e2);
        }
    }

    public static zzgow zzc(zzghm zzghmVar, zzggn zzggnVar) {
        zzgsm zzb = zzgso.zzb();
        zzght zzb2 = zzghmVar.zzb();
        zzgss zzb3 = zzgsu.zzb();
        zzb3.zza(zzb2.zzb());
        zzb.zzb((zzgsu) zzb3.zzbr());
        byte[] zzd = zzghmVar.zzd().zzd(zzggnVar);
        zzb.zza(zzgxp.zzv(zzd, 0, zzd.length));
        return zzgow.zza("type.googleapis.com/google.crypto.tink.AesEaxKey", ((zzgso) zzb.zzbr()).zzaN(), zzgty.SYMMETRIC, f(zzghmVar.zzb().zze()), zzghmVar.zze());
    }

    public static zzgox zzd(zzght zzghtVar) {
        zzguc zza2 = zzgue.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.AesEaxKey");
        zzgsp zzb = zzgsr.zzb();
        zzgss zzb2 = zzgsu.zzb();
        zzb2.zza(zzghtVar.zzb());
        zzb.zzb((zzgsu) zzb2.zzbr());
        zzb.zza(zzghtVar.zzc());
        zza2.zzc(((zzgsr) zzb.zzbr()).zzaN());
        zza2.zza(f(zzghtVar.zze()));
        return zzgox.zzb((zzgue) zza2.zzbr());
    }

    public static void zze(zzgnz zzgnzVar) throws GeneralSecurityException {
        zzgnzVar.zzi(f8428b);
        zzgnzVar.zzh(f8429c);
        zzgnzVar.zzg(f8430d);
        zzgnzVar.zzf(f8427a);
    }
}

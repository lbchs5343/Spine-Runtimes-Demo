package com.google.android.gms.internal.ads;

import g.awf;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzgld {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgms f8438a;

    /* renamed from: b, reason: collision with root package name */
    public static final zzgoi f8439b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzgoe f8440c;

    /* renamed from: d, reason: collision with root package name */
    public static final zzgmw f8441d;
    public static final /* synthetic */ int zza = 0;

    static {
        zzgwu zzb = zzgpj.zzb("type.googleapis.com/google.crypto.tink.AesGcmKey");
        f8439b = zzgoi.zzb(new zzgog() { // from class: com.google.android.gms.internal.ads.zzgkz
            @Override // com.google.android.gms.internal.ads.zzgog
            public final zzgpb zza(zzggj zzggjVar) {
                return zzgld.zzd((zzgie) zzggjVar);
            }
        }, zzgie.class, zzgox.class);
        f8440c = zzgoe.zzb(new zzgoc() { // from class: com.google.android.gms.internal.ads.zzgla
            @Override // com.google.android.gms.internal.ads.zzgoc
            public final zzggj zza(zzgpb zzgpbVar) {
                return zzgld.zzb((zzgox) zzgpbVar);
            }
        }, zzb, zzgox.class);
        f8441d = zzgmw.zzb(new zzgmu() { // from class: com.google.android.gms.internal.ads.zzglb
            @Override // com.google.android.gms.internal.ads.zzgmu
            public final zzgpb zza(zzgfw zzgfwVar, zzggn zzggnVar) {
                return zzgld.zzc((zzghw) zzgfwVar, zzggnVar);
            }
        }, zzghw.class, zzgow.class);
        f8438a = zzgms.zzb(new zzgmq() { // from class: com.google.android.gms.internal.ads.zzglc
            @Override // com.google.android.gms.internal.ads.zzgmq
            public final zzgfw zza(zzgpb zzgpbVar, zzggn zzggnVar) {
                return zzgld.zza((zzgow) zzgpbVar, zzggnVar);
            }
        }, zzb, zzgow.class);
    }

    public static zzgic e(zzgve zzgveVar) {
        int ordinal = zzgveVar.ordinal();
        if (ordinal == 1) {
            return zzgic.zza;
        }
        if (ordinal != 2) {
            if (ordinal == 3) {
                return zzgic.zzc;
            }
            if (ordinal != 4) {
                throw new GeneralSecurityException(awf.ac(zzgveVar.zza(), "Unable to parse OutputPrefixType: "));
            }
        }
        return zzgic.zzb;
    }

    public static zzgve f(zzgic zzgicVar) {
        if (zzgic.zza.equals(zzgicVar)) {
            return zzgve.TINK;
        }
        if (zzgic.zzb.equals(zzgicVar)) {
            return zzgve.CRUNCHY;
        }
        if (zzgic.zzc.equals(zzgicVar)) {
            return zzgve.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzgicVar)));
    }

    public static /* synthetic */ zzghw zza(zzgow zzgowVar, zzggn zzggnVar) {
        if (!zzgowVar.zzg().equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesGcmProtoSerialization.parseKey");
        }
        try {
            zzgsx zzd = zzgsx.zzd(zzgowVar.zze(), zzgyh.zza());
            if (zzd.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzgib zzc = zzgie.zzc();
            zzc.zzb(zzd.zzf().zzd());
            zzc.zza(12);
            zzc.zzc(16);
            zzc.zzd(e(zzgowVar.zzc()));
            zzgie zze = zzc.zze();
            zzghu zza2 = zzghw.zza();
            zza2.zzc(zze);
            zza2.zzb(zzgwv.zzb(zzd.zzf().zzA(), zzggnVar));
            zza2.zza(zzgowVar.zzf());
            return zza2.zzd();
        } catch (zzgzm unused) {
            throw new GeneralSecurityException("Parsing AesGcmKey failed");
        }
    }

    public static /* synthetic */ zzgie zzb(zzgox zzgoxVar) {
        if (!zzgoxVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.AesGcmKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesGcmProtoSerialization.parseParameters: ".concat(String.valueOf(zzgoxVar.zzc().zzi())));
        }
        try {
            zzgta zzf = zzgta.zzf(zzgoxVar.zzc().zzh(), zzgyh.zza());
            if (zzf.zzb() != 0) {
                throw new GeneralSecurityException("Only version 0 parameters are accepted");
            }
            zzgib zzc = zzgie.zzc();
            zzc.zzb(zzf.zza());
            zzc.zza(12);
            zzc.zzc(16);
            zzc.zzd(e(zzgoxVar.zzc().zzg()));
            return zzc.zze();
        } catch (zzgzm e2) {
            throw new GeneralSecurityException("Parsing AesGcmParameters failed: ", e2);
        }
    }

    public static /* synthetic */ zzgow zzc(zzghw zzghwVar, zzggn zzggnVar) {
        zzgsv zzb = zzgsx.zzb();
        byte[] zzd = zzghwVar.zzd().zzd(zzggnVar);
        zzb.zza(zzgxp.zzv(zzd, 0, zzd.length));
        return zzgow.zza("type.googleapis.com/google.crypto.tink.AesGcmKey", ((zzgsx) zzb.zzbr()).zzaN(), zzgty.SYMMETRIC, f(zzghwVar.zzb().zzd()), zzghwVar.zze());
    }

    public static /* synthetic */ zzgox zzd(zzgie zzgieVar) {
        zzguc zza2 = zzgue.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.AesGcmKey");
        zzgsy zzc = zzgta.zzc();
        zzc.zza(zzgieVar.zzb());
        zza2.zzc(((zzgta) zzc.zzbr()).zzaN());
        zza2.zza(f(zzgieVar.zzd()));
        return zzgox.zzb((zzgue) zza2.zzbr());
    }

    public static void zze(zzgnz zzgnzVar) throws GeneralSecurityException {
        zzgnzVar.zzi(f8439b);
        zzgnzVar.zzh(f8440c);
        zzgnzVar.zzg(f8441d);
        zzgnzVar.zzf(f8438a);
    }
}

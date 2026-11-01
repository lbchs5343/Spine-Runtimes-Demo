package com.google.android.gms.internal.ads;

import g.awf;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzgli {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgms f8442a;

    /* renamed from: b, reason: collision with root package name */
    public static final zzgoi f8443b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzgoe f8444c;

    /* renamed from: d, reason: collision with root package name */
    public static final zzgmw f8445d;
    public static final /* synthetic */ int zza = 0;

    static {
        zzgwu zzb = zzgpj.zzb("type.googleapis.com/google.crypto.tink.AesGcmSivKey");
        f8443b = zzgoi.zzb(new zzgog() { // from class: com.google.android.gms.internal.ads.zzgle
            @Override // com.google.android.gms.internal.ads.zzgog
            public final zzgpb zza(zzggj zzggjVar) {
                return zzgli.zzd((zzgip) zzggjVar);
            }
        }, zzgip.class, zzgox.class);
        f8444c = zzgoe.zzb(new zzgoc() { // from class: com.google.android.gms.internal.ads.zzglf
            @Override // com.google.android.gms.internal.ads.zzgoc
            public final zzggj zza(zzgpb zzgpbVar) {
                return zzgli.zzb((zzgox) zzgpbVar);
            }
        }, zzb, zzgox.class);
        f8445d = zzgmw.zzb(new zzgmu() { // from class: com.google.android.gms.internal.ads.zzglg
            @Override // com.google.android.gms.internal.ads.zzgmu
            public final zzgpb zza(zzgfw zzgfwVar, zzggn zzggnVar) {
                return zzgli.zzc((zzgih) zzgfwVar, zzggnVar);
            }
        }, zzgih.class, zzgow.class);
        f8442a = zzgms.zzb(new zzgmq() { // from class: com.google.android.gms.internal.ads.zzglh
            @Override // com.google.android.gms.internal.ads.zzgmq
            public final zzgfw zza(zzgpb zzgpbVar, zzggn zzggnVar) {
                return zzgli.zza((zzgow) zzgpbVar, zzggnVar);
            }
        }, zzb, zzgow.class);
    }

    public static zzgin e(zzgve zzgveVar) {
        int ordinal = zzgveVar.ordinal();
        if (ordinal == 1) {
            return zzgin.zza;
        }
        if (ordinal != 2) {
            if (ordinal == 3) {
                return zzgin.zzc;
            }
            if (ordinal != 4) {
                throw new GeneralSecurityException(awf.ac(zzgveVar.zza(), "Unable to parse OutputPrefixType: "));
            }
        }
        return zzgin.zzb;
    }

    public static zzgve f(zzgin zzginVar) {
        if (zzgin.zza.equals(zzginVar)) {
            return zzgve.TINK;
        }
        if (zzgin.zzb.equals(zzginVar)) {
            return zzgve.CRUNCHY;
        }
        if (zzgin.zzc.equals(zzginVar)) {
            return zzgve.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzginVar)));
    }

    public static /* synthetic */ zzgih zza(zzgow zzgowVar, zzggn zzggnVar) {
        if (!zzgowVar.zzg().equals("type.googleapis.com/google.crypto.tink.AesGcmSivKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesGcmSivProtoSerialization.parseKey");
        }
        try {
            zzgtd zzd = zzgtd.zzd(zzgowVar.zze(), zzgyh.zza());
            if (zzd.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzgim zzc = zzgip.zzc();
            zzc.zza(zzd.zzf().zzd());
            zzc.zzb(e(zzgowVar.zzc()));
            zzgip zzc2 = zzc.zzc();
            zzgif zza2 = zzgih.zza();
            zza2.zzc(zzc2);
            zza2.zzb(zzgwv.zzb(zzd.zzf().zzA(), zzggnVar));
            zza2.zza(zzgowVar.zzf());
            return zza2.zzd();
        } catch (zzgzm unused) {
            throw new GeneralSecurityException("Parsing AesGcmSivKey failed");
        }
    }

    public static /* synthetic */ zzgip zzb(zzgox zzgoxVar) {
        if (!zzgoxVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.AesGcmSivKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesGcmSivProtoSerialization.parseParameters: ".concat(String.valueOf(zzgoxVar.zzc().zzi())));
        }
        try {
            zzgtg zzf = zzgtg.zzf(zzgoxVar.zzc().zzh(), zzgyh.zza());
            if (zzf.zzb() != 0) {
                throw new GeneralSecurityException("Only version 0 parameters are accepted");
            }
            zzgim zzc = zzgip.zzc();
            zzc.zza(zzf.zza());
            zzc.zzb(e(zzgoxVar.zzc().zzg()));
            return zzc.zzc();
        } catch (zzgzm e2) {
            throw new GeneralSecurityException("Parsing AesGcmSivParameters failed: ", e2);
        }
    }

    public static /* synthetic */ zzgow zzc(zzgih zzgihVar, zzggn zzggnVar) {
        zzgtb zzb = zzgtd.zzb();
        byte[] zzd = zzgihVar.zzd().zzd(zzggnVar);
        zzb.zza(zzgxp.zzv(zzd, 0, zzd.length));
        return zzgow.zza("type.googleapis.com/google.crypto.tink.AesGcmSivKey", ((zzgtd) zzb.zzbr()).zzaN(), zzgty.SYMMETRIC, f(zzgihVar.zzb().zzd()), zzgihVar.zze());
    }

    public static /* synthetic */ zzgox zzd(zzgip zzgipVar) {
        zzguc zza2 = zzgue.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.AesGcmSivKey");
        zzgte zzc = zzgtg.zzc();
        zzc.zza(zzgipVar.zzb());
        zza2.zzc(((zzgtg) zzc.zzbr()).zzaN());
        zza2.zza(f(zzgipVar.zzd()));
        return zzgox.zzb((zzgue) zza2.zzbr());
    }

    public static void zze(zzgnz zzgnzVar) throws GeneralSecurityException {
        zzgnzVar.zzi(f8443b);
        zzgnzVar.zzh(f8444c);
        zzgnzVar.zzg(f8445d);
        zzgnzVar.zzf(f8442a);
    }
}

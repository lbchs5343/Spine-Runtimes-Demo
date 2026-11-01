package com.google.android.gms.internal.ads;

import g.awf;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzglp {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgms f8452a;

    /* renamed from: b, reason: collision with root package name */
    public static final zzgoi f8453b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzgoe f8454c;

    /* renamed from: d, reason: collision with root package name */
    public static final zzgmw f8455d;
    public static final /* synthetic */ int zza = 0;

    static {
        zzgwu zzb = zzgpj.zzb("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
        f8453b = zzgoi.zzb(new zzgog() { // from class: com.google.android.gms.internal.ads.zzgll
            @Override // com.google.android.gms.internal.ads.zzgog
            public final zzgpb zza(zzggj zzggjVar) {
                return zzglp.zzd((zzgiv) zzggjVar);
            }
        }, zzgiv.class, zzgox.class);
        f8454c = zzgoe.zzb(new zzgoc() { // from class: com.google.android.gms.internal.ads.zzglm
            @Override // com.google.android.gms.internal.ads.zzgoc
            public final zzggj zza(zzgpb zzgpbVar) {
                return zzglp.zzb((zzgox) zzgpbVar);
            }
        }, zzb, zzgox.class);
        f8455d = zzgmw.zzb(new zzgmu() { // from class: com.google.android.gms.internal.ads.zzgln
            @Override // com.google.android.gms.internal.ads.zzgmu
            public final zzgpb zza(zzgfw zzgfwVar, zzggn zzggnVar) {
                return zzglp.zzc((zzgiq) zzgfwVar, zzggnVar);
            }
        }, zzgiq.class, zzgow.class);
        f8452a = zzgms.zzb(new zzgmq() { // from class: com.google.android.gms.internal.ads.zzglo
            @Override // com.google.android.gms.internal.ads.zzgmq
            public final zzgfw zza(zzgpb zzgpbVar, zzggn zzggnVar) {
                return zzglp.zza((zzgow) zzgpbVar, zzggnVar);
            }
        }, zzb, zzgow.class);
    }

    public static zzgiu e(zzgve zzgveVar) {
        int ordinal = zzgveVar.ordinal();
        if (ordinal == 1) {
            return zzgiu.zza;
        }
        if (ordinal != 2) {
            if (ordinal == 3) {
                return zzgiu.zzc;
            }
            if (ordinal != 4) {
                throw new GeneralSecurityException(awf.ac(zzgveVar.zza(), "Unable to parse OutputPrefixType: "));
            }
        }
        return zzgiu.zzb;
    }

    public static zzgve f(zzgiu zzgiuVar) {
        if (zzgiu.zza.equals(zzgiuVar)) {
            return zzgve.TINK;
        }
        if (zzgiu.zzb.equals(zzgiuVar)) {
            return zzgve.CRUNCHY;
        }
        if (zzgiu.zzc.equals(zzgiuVar)) {
            return zzgve.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(zzgiuVar.toString()));
    }

    public static /* synthetic */ zzgiq zza(zzgow zzgowVar, zzggn zzggnVar) {
        if (!zzgowVar.zzg().equals("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key")) {
            throw new IllegalArgumentException("Wrong type URL in call to ChaCha20Poly1305ProtoSerialization.parseKey");
        }
        try {
            zzgtj zzd = zzgtj.zzd(zzgowVar.zze(), zzgyh.zza());
            if (zzd.zza() == 0) {
                return zzgiq.zza(e(zzgowVar.zzc()), zzgwv.zzb(zzd.zzf().zzA(), zzggnVar), zzgowVar.zzf());
            }
            throw new GeneralSecurityException("Only version 0 keys are accepted");
        } catch (zzgzm unused) {
            throw new GeneralSecurityException("Parsing ChaCha20Poly1305Key failed");
        }
    }

    public static /* synthetic */ zzgiv zzb(zzgox zzgoxVar) {
        if (!zzgoxVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key")) {
            throw new IllegalArgumentException("Wrong type URL in call to ChaCha20Poly1305ProtoSerialization.parseParameters: ".concat(String.valueOf(zzgoxVar.zzc().zzi())));
        }
        try {
            zzgtm.zzc(zzgoxVar.zzc().zzh(), zzgyh.zza());
            return zzgiv.zzc(e(zzgoxVar.zzc().zzg()));
        } catch (zzgzm e2) {
            throw new GeneralSecurityException("Parsing ChaCha20Poly1305Parameters failed: ", e2);
        }
    }

    public static /* synthetic */ zzgow zzc(zzgiq zzgiqVar, zzggn zzggnVar) {
        zzgth zzb = zzgtj.zzb();
        byte[] zzd = zzgiqVar.zzd().zzd(zzggnVar);
        zzb.zza(zzgxp.zzv(zzd, 0, zzd.length));
        return zzgow.zza("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key", ((zzgtj) zzb.zzbr()).zzaN(), zzgty.SYMMETRIC, f(zzgiqVar.zzb().zzb()), zzgiqVar.zze());
    }

    public static /* synthetic */ zzgox zzd(zzgiv zzgivVar) {
        zzguc zza2 = zzgue.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
        zza2.zzc(zzgtm.zzb().zzaN());
        zza2.zza(f(zzgivVar.zzb()));
        return zzgox.zzb((zzgue) zza2.zzbr());
    }

    public static void zze(zzgnz zzgnzVar) throws GeneralSecurityException {
        zzgnzVar.zzi(f8453b);
        zzgnzVar.zzh(f8454c);
        zzgnzVar.zzg(f8455d);
        zzgnzVar.zzf(f8452a);
    }
}

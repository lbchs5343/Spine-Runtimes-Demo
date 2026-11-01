package com.google.android.gms.internal.ads;

import g.awf;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzgme {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgms f8460a;

    /* renamed from: b, reason: collision with root package name */
    public static final zzgoi f8461b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzgoe f8462c;

    /* renamed from: d, reason: collision with root package name */
    public static final zzgmw f8463d;
    public static final /* synthetic */ int zza = 0;

    static {
        zzgwu zzb = zzgpj.zzb("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
        f8461b = zzgoi.zzb(new zzgog() { // from class: com.google.android.gms.internal.ads.zzgma
            @Override // com.google.android.gms.internal.ads.zzgog
            public final zzgpb zza(zzggj zzggjVar) {
                return zzgme.zzd((zzgkm) zzggjVar);
            }
        }, zzgkm.class, zzgox.class);
        f8462c = zzgoe.zzb(new zzgoc() { // from class: com.google.android.gms.internal.ads.zzgmb
            @Override // com.google.android.gms.internal.ads.zzgoc
            public final zzggj zza(zzgpb zzgpbVar) {
                return zzgme.zzb((zzgox) zzgpbVar);
            }
        }, zzb, zzgox.class);
        f8463d = zzgmw.zzb(new zzgmu() { // from class: com.google.android.gms.internal.ads.zzgmc
            @Override // com.google.android.gms.internal.ads.zzgmu
            public final zzgpb zza(zzgfw zzgfwVar, zzggn zzggnVar) {
                return zzgme.zzc((zzgkg) zzgfwVar, zzggnVar);
            }
        }, zzgkg.class, zzgow.class);
        f8460a = zzgms.zzb(new zzgmq() { // from class: com.google.android.gms.internal.ads.zzgmd
            @Override // com.google.android.gms.internal.ads.zzgmq
            public final zzgfw zza(zzgpb zzgpbVar, zzggn zzggnVar) {
                return zzgme.zza((zzgow) zzgpbVar, zzggnVar);
            }
        }, zzb, zzgow.class);
    }

    public static zzgkl e(zzgve zzgveVar) {
        int ordinal = zzgveVar.ordinal();
        if (ordinal == 1) {
            return zzgkl.zza;
        }
        if (ordinal != 2) {
            if (ordinal == 3) {
                return zzgkl.zzc;
            }
            if (ordinal != 4) {
                throw new GeneralSecurityException(awf.ac(zzgveVar.zza(), "Unable to parse OutputPrefixType: "));
            }
        }
        return zzgkl.zzb;
    }

    public static zzgve f(zzgkl zzgklVar) {
        if (zzgkl.zza.equals(zzgklVar)) {
            return zzgve.TINK;
        }
        if (zzgkl.zzb.equals(zzgklVar)) {
            return zzgve.CRUNCHY;
        }
        if (zzgkl.zzc.equals(zzgklVar)) {
            return zzgve.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(zzgklVar.toString()));
    }

    public static /* synthetic */ zzgkg zza(zzgow zzgowVar, zzggn zzggnVar) {
        if (!zzgowVar.zzg().equals("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key")) {
            throw new IllegalArgumentException("Wrong type URL in call to XChaCha20Poly1305ProtoSerialization.parseKey");
        }
        try {
            zzgvk zzd = zzgvk.zzd(zzgowVar.zze(), zzgyh.zza());
            if (zzd.zza() == 0) {
                return zzgkg.zza(e(zzgowVar.zzc()), zzgwv.zzb(zzd.zzf().zzA(), zzggnVar), zzgowVar.zzf());
            }
            throw new GeneralSecurityException("Only version 0 keys are accepted");
        } catch (zzgzm unused) {
            throw new GeneralSecurityException("Parsing XChaCha20Poly1305Key failed");
        }
    }

    public static /* synthetic */ zzgkm zzb(zzgox zzgoxVar) {
        if (!zzgoxVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key")) {
            throw new IllegalArgumentException("Wrong type URL in call to XChaCha20Poly1305ProtoSerialization.parseParameters: ".concat(String.valueOf(zzgoxVar.zzc().zzi())));
        }
        try {
            if (zzgvn.zzd(zzgoxVar.zzc().zzh(), zzgyh.zza()).zza() == 0) {
                return zzgkm.zzc(e(zzgoxVar.zzc().zzg()));
            }
            throw new GeneralSecurityException("Only version 0 parameters are accepted");
        } catch (zzgzm e2) {
            throw new GeneralSecurityException("Parsing XChaCha20Poly1305Parameters failed: ", e2);
        }
    }

    public static /* synthetic */ zzgow zzc(zzgkg zzgkgVar, zzggn zzggnVar) {
        zzgvi zzb = zzgvk.zzb();
        byte[] zzd = zzgkgVar.zzd().zzd(zzggnVar);
        zzb.zza(zzgxp.zzv(zzd, 0, zzd.length));
        return zzgow.zza("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key", ((zzgvk) zzb.zzbr()).zzaN(), zzgty.SYMMETRIC, f(zzgkgVar.zzb().zzb()), zzgkgVar.zze());
    }

    public static /* synthetic */ zzgox zzd(zzgkm zzgkmVar) {
        zzguc zza2 = zzgue.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
        zza2.zzc(zzgvn.zzc().zzaN());
        zza2.zza(f(zzgkmVar.zzb()));
        return zzgox.zzb((zzgue) zza2.zzbr());
    }

    public static void zze(zzgnz zzgnzVar) throws GeneralSecurityException {
        zzgnzVar.zzi(f8461b);
        zzgnzVar.zzh(f8462c);
        zzgnzVar.zzg(f8463d);
        zzgnzVar.zzf(f8460a);
    }
}

package com.google.android.gms.internal.ads;

import g.awf;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzgjv {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgms f8401a;

    /* renamed from: b, reason: collision with root package name */
    public static final zzgoi f8402b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzgoe f8403c;

    /* renamed from: d, reason: collision with root package name */
    public static final zzgmw f8404d;
    public static final /* synthetic */ int zza = 0;

    static {
        zzgwu zzb = zzgpj.zzb("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey");
        f8402b = zzgoi.zzb(new zzgog() { // from class: com.google.android.gms.internal.ads.zzgjr
            @Override // com.google.android.gms.internal.ads.zzgog
            public final zzgpb zza(zzggj zzggjVar) {
                return zzgjv.zzd((zzgjq) zzggjVar);
            }
        }, zzgjq.class, zzgox.class);
        f8403c = zzgoe.zzb(new zzgoc() { // from class: com.google.android.gms.internal.ads.zzgjs
            @Override // com.google.android.gms.internal.ads.zzgoc
            public final zzggj zza(zzgpb zzgpbVar) {
                return zzgjv.zzb((zzgox) zzgpbVar);
            }
        }, zzb, zzgox.class);
        f8404d = zzgmw.zzb(new zzgmu() { // from class: com.google.android.gms.internal.ads.zzgjt
            @Override // com.google.android.gms.internal.ads.zzgmu
            public final zzgpb zza(zzgfw zzgfwVar, zzggn zzggnVar) {
                return zzgjv.zzc((zzgjl) zzgfwVar, zzggnVar);
            }
        }, zzgjl.class, zzgow.class);
        f8401a = zzgms.zzb(new zzgmq() { // from class: com.google.android.gms.internal.ads.zzgju
            @Override // com.google.android.gms.internal.ads.zzgmq
            public final zzgfw zza(zzgpb zzgpbVar, zzggn zzggnVar) {
                return zzgjv.zza((zzgow) zzgpbVar, zzggnVar);
            }
        }, zzb, zzgow.class);
    }

    public static zzgjq e(zzgvd zzgvdVar, zzgve zzgveVar) {
        zzgjn zzgjnVar;
        zzgjo zzgjoVar;
        zzguc zza2 = zzgue.zza();
        zza2.zzb(zzgvdVar.zza().zzi());
        zza2.zzc(zzgvdVar.zza().zzh());
        zza2.zza(zzgve.RAW);
        zzggj zza3 = zzggp.zza(((zzgue) zza2.zzbr()).zzaV());
        if (zza3 instanceof zzgie) {
            zzgjnVar = zzgjn.zza;
        } else if (zza3 instanceof zzgiv) {
            zzgjnVar = zzgjn.zzc;
        } else if (zza3 instanceof zzgkm) {
            zzgjnVar = zzgjn.zzb;
        } else if (zza3 instanceof zzghj) {
            zzgjnVar = zzgjn.zzd;
        } else if (zza3 instanceof zzght) {
            zzgjnVar = zzgjn.zze;
        } else {
            if (!(zza3 instanceof zzgip)) {
                throw new GeneralSecurityException("Unsupported DEK parameters when parsing ".concat(zza3.toString()));
            }
            zzgjnVar = zzgjn.zzf;
        }
        zzgjm zzgjmVar = new zzgjm();
        int ordinal = zzgveVar.ordinal();
        if (ordinal == 1) {
            zzgjoVar = zzgjo.zza;
        } else {
            if (ordinal != 3) {
                throw new GeneralSecurityException(awf.ac(zzgveVar.zza(), "Unable to parse OutputPrefixType: "));
            }
            zzgjoVar = zzgjo.zzb;
        }
        zzgjmVar.zzd(zzgjoVar);
        zzgjmVar.zzc(zzgvdVar.zzg());
        zzgjmVar.zza((zzggt) zza3);
        zzgjmVar.zzb(zzgjnVar);
        return zzgjmVar.zze();
    }

    public static zzgvd f(zzgjq zzgjqVar) {
        try {
            zzgue zzf = zzgue.zzf(zzggp.zzb(zzgjqVar.zzb()), zzgyh.zza());
            zzgvb zzb = zzgvd.zzb();
            zzb.zzb(zzgjqVar.zzd());
            zzb.zza(zzf);
            return (zzgvd) zzb.zzbr();
        } catch (zzgzm e2) {
            throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKeyFormat failed: ", e2);
        }
    }

    public static zzgve g(zzgjo zzgjoVar) {
        if (zzgjo.zza.equals(zzgjoVar)) {
            return zzgve.TINK;
        }
        if (zzgjo.zzb.equals(zzgjoVar)) {
            return zzgve.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzgjoVar)));
    }

    public static /* synthetic */ zzgjl zza(zzgow zzgowVar, zzggn zzggnVar) {
        if (!zzgowVar.zzg().equals("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseKey");
        }
        try {
            zzgva zzd = zzgva.zzd(zzgowVar.zze(), zzgyh.zza());
            if (zzd.zza() == 0) {
                return zzgjl.zza(e(zzd.zzf(), zzgowVar.zzc()), zzgowVar.zzf());
            }
            throw new GeneralSecurityException("KmsEnvelopeAeadKeys are only accepted with version 0, got ".concat(String.valueOf(zzd)));
        } catch (zzgzm e2) {
            throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKey failed: ", e2);
        }
    }

    public static /* synthetic */ zzgjq zzb(zzgox zzgoxVar) {
        if (!zzgoxVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseParameters: ".concat(String.valueOf(zzgoxVar.zzc().zzi())));
        }
        try {
            return e(zzgvd.zzf(zzgoxVar.zzc().zzh(), zzgyh.zza()), zzgoxVar.zzc().zzg());
        } catch (zzgzm e2) {
            throw new GeneralSecurityException("Parsing KmsEnvelopeAeadKeyFormat failed: ", e2);
        }
    }

    public static /* synthetic */ zzgow zzc(zzgjl zzgjlVar, zzggn zzggnVar) {
        zzguy zzb = zzgva.zzb();
        zzb.zza(f(zzgjlVar.zzb()));
        return zzgow.zza("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey", ((zzgva) zzb.zzbr()).zzaN(), zzgty.REMOTE, g(zzgjlVar.zzb().zzc()), zzgjlVar.zzd());
    }

    public static /* synthetic */ zzgox zzd(zzgjq zzgjqVar) {
        zzguc zza2 = zzgue.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey");
        zza2.zzc(f(zzgjqVar).zzaN());
        zza2.zza(g(zzgjqVar.zzc()));
        return zzgox.zzb((zzgue) zza2.zzbr());
    }

    public static void zze(zzgnz zzgnzVar) throws GeneralSecurityException {
        zzgnzVar.zzi(f8402b);
        zzgnzVar.zzh(f8403c);
        zzgnzVar.zzg(f8404d);
        zzgnzVar.zzf(f8401a);
    }
}

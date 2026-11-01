package com.google.android.gms.internal.ads;

import g.awf;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzgrd {

    /* renamed from: a, reason: collision with root package name */
    public static final zzgms f8609a;

    /* renamed from: b, reason: collision with root package name */
    public static final zzgoi f8610b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzgoe f8611c;

    /* renamed from: d, reason: collision with root package name */
    public static final zzgmw f8612d;
    public static final /* synthetic */ int zza = 0;

    static {
        zzgwu zzb = zzgpj.zzb("type.googleapis.com/google.crypto.tink.AesCmacKey");
        f8610b = zzgoi.zzb(new zzgog() { // from class: com.google.android.gms.internal.ads.zzgqz
            @Override // com.google.android.gms.internal.ads.zzgog
            public final zzgpb zza(zzggj zzggjVar) {
                return zzgrd.zzb((zzgpu) zzggjVar);
            }
        }, zzgpu.class, zzgox.class);
        f8611c = zzgoe.zzb(new zzgoc() { // from class: com.google.android.gms.internal.ads.zzgra
            @Override // com.google.android.gms.internal.ads.zzgoc
            public final zzggj zza(zzgpb zzgpbVar) {
                return zzgrd.zzd((zzgox) zzgpbVar);
            }
        }, zzb, zzgox.class);
        f8612d = zzgmw.zzb(new zzgmu() { // from class: com.google.android.gms.internal.ads.zzgrb
            @Override // com.google.android.gms.internal.ads.zzgmu
            public final zzgpb zza(zzgfw zzgfwVar, zzggn zzggnVar) {
                return zzgrd.zza((zzgpm) zzgfwVar, zzggnVar);
            }
        }, zzgpm.class, zzgow.class);
        f8609a = zzgms.zzb(new zzgmq() { // from class: com.google.android.gms.internal.ads.zzgrc
            @Override // com.google.android.gms.internal.ads.zzgmq
            public final zzgfw zza(zzgpb zzgpbVar, zzggn zzggnVar) {
                return zzgrd.zzc((zzgow) zzgpbVar, zzggnVar);
            }
        }, zzb, zzgow.class);
    }

    public static zzgps e(zzgve zzgveVar) {
        int ordinal = zzgveVar.ordinal();
        if (ordinal == 1) {
            return zzgps.zza;
        }
        if (ordinal == 2) {
            return zzgps.zzc;
        }
        if (ordinal == 3) {
            return zzgps.zzd;
        }
        if (ordinal == 4) {
            return zzgps.zzb;
        }
        throw new GeneralSecurityException(awf.ac(zzgveVar.zza(), "Unable to parse OutputPrefixType: "));
    }

    public static zzgve f(zzgps zzgpsVar) {
        if (zzgps.zza.equals(zzgpsVar)) {
            return zzgve.TINK;
        }
        if (zzgps.zzb.equals(zzgpsVar)) {
            return zzgve.CRUNCHY;
        }
        if (zzgps.zzd.equals(zzgpsVar)) {
            return zzgve.RAW;
        }
        if (zzgps.zzc.equals(zzgpsVar)) {
            return zzgve.LEGACY;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzgpsVar)));
    }

    public static zzgow zza(zzgpm zzgpmVar, zzggn zzggnVar) {
        zzgro zzb = zzgrq.zzb();
        zzgpu zzb2 = zzgpmVar.zzb();
        zzgru zzb3 = zzgrw.zzb();
        zzb3.zza(zzb2.zzb());
        zzb.zzb((zzgrw) zzb3.zzbr());
        byte[] zzd = zzgpmVar.zzd().zzd(zzggnVar);
        zzb.zza(zzgxp.zzv(zzd, 0, zzd.length));
        return zzgow.zza("type.googleapis.com/google.crypto.tink.AesCmacKey", ((zzgrq) zzb.zzbr()).zzaN(), zzgty.SYMMETRIC, f(zzgpmVar.zzb().zzf()), zzgpmVar.zze());
    }

    public static zzgox zzb(zzgpu zzgpuVar) {
        zzguc zza2 = zzgue.zza();
        zza2.zzb("type.googleapis.com/google.crypto.tink.AesCmacKey");
        zzgrr zzb = zzgrt.zzb();
        zzgru zzb2 = zzgrw.zzb();
        zzb2.zza(zzgpuVar.zzb());
        zzb.zzb((zzgrw) zzb2.zzbr());
        zzb.zza(zzgpuVar.zzc());
        zza2.zzc(((zzgrt) zzb.zzbr()).zzaN());
        zza2.zza(f(zzgpuVar.zzf()));
        return zzgox.zzb((zzgue) zza2.zzbr());
    }

    public static /* synthetic */ zzgpm zzc(zzgow zzgowVar, zzggn zzggnVar) {
        if (!zzgowVar.zzg().equals("type.googleapis.com/google.crypto.tink.AesCmacKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesCmacProtoSerialization.parseKey");
        }
        try {
            zzgrq zzd = zzgrq.zzd(zzgowVar.zze(), zzgyh.zza());
            if (zzd.zza() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            zzgpr zze = zzgpu.zze();
            zze.zza(zzd.zzg().zzd());
            zze.zzb(zzd.zzf().zza());
            zze.zzc(e(zzgowVar.zzc()));
            zzgpu zzd2 = zze.zzd();
            zzgpk zza2 = zzgpm.zza();
            zza2.zzc(zzd2);
            zza2.zza(zzgwv.zzb(zzd.zzg().zzA(), zzggnVar));
            zza2.zzb(zzgowVar.zzf());
            return zza2.zzd();
        } catch (zzgzm | IllegalArgumentException unused) {
            throw new GeneralSecurityException("Parsing AesCmacKey failed");
        }
    }

    public static /* synthetic */ zzgpu zzd(zzgox zzgoxVar) {
        if (!zzgoxVar.zzc().zzi().equals("type.googleapis.com/google.crypto.tink.AesCmacKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesCmacProtoSerialization.parseParameters: ".concat(String.valueOf(zzgoxVar.zzc().zzi())));
        }
        try {
            zzgrt zzd = zzgrt.zzd(zzgoxVar.zzc().zzh(), zzgyh.zza());
            zzgpr zze = zzgpu.zze();
            zze.zza(zzd.zza());
            zze.zzb(zzd.zzf().zza());
            zze.zzc(e(zzgoxVar.zzc().zzg()));
            return zze.zzd();
        } catch (zzgzm e2) {
            throw new GeneralSecurityException("Parsing AesCmacParameters failed: ", e2);
        }
    }

    public static void zze(zzgnz zzgnzVar) throws GeneralSecurityException {
        zzgnzVar.zzi(f8610b);
        zzgnzVar.zzh(f8611c);
        zzgnzVar.zzg(f8612d);
        zzgnzVar.zzf(f8609a);
    }
}

package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes3.dex */
public final class zzgwr implements zzggi {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f8654a = {0};

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f8655b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgrn f8656c;

    /* renamed from: d, reason: collision with root package name */
    public final int f8657d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f8658e;

    public zzgwr(zzgpm zzgpmVar) {
        this.f8656c = new zzgwo(zzgpmVar.zzd().zzd(zzgfv.zza()));
        this.f8657d = zzgpmVar.zzb().zzb();
        this.f8658e = zzgpmVar.zzc().zzc();
        if (zzgpmVar.zzb().zzf().equals(zzgps.zzc)) {
            this.f8655b = Arrays.copyOf(f8654a, 1);
        } else {
            this.f8655b = new byte[0];
        }
    }

    public zzgwr(zzgqb zzgqbVar) {
        String valueOf = String.valueOf(zzgqbVar.zzb().zzf());
        this.f8656c = new zzgwq("HMAC".concat(valueOf), new SecretKeySpec(zzgqbVar.zzd().zzd(zzgfv.zza()), "HMAC"));
        this.f8657d = zzgqbVar.zzb().zzb();
        this.f8658e = zzgqbVar.zzc().zzc();
        if (zzgqbVar.zzb().zzg().equals(zzgqj.zzc)) {
            this.f8655b = Arrays.copyOf(f8654a, 1);
        } else {
            this.f8655b = new byte[0];
        }
    }

    public zzgwr(zzgrn zzgrnVar, int i) throws GeneralSecurityException {
        this.f8656c = zzgrnVar;
        this.f8657d = i;
        this.f8658e = new byte[0];
        this.f8655b = new byte[0];
        zzgrnVar.zza(new byte[0], i);
    }

    public static zzggi zza(zzgpm zzgpmVar) throws GeneralSecurityException {
        return new zzgwr(zzgpmVar);
    }

    public static zzggi zzb(zzgqb zzgqbVar) throws GeneralSecurityException {
        return new zzgwr(zzgqbVar);
    }

    public final byte[] zzc(byte[] bArr) throws GeneralSecurityException {
        byte[] bArr2 = this.f8655b;
        int length = bArr2.length;
        int i = this.f8657d;
        zzgrn zzgrnVar = this.f8656c;
        byte[] bArr3 = this.f8658e;
        return length > 0 ? zzgvu.zzb(bArr3, zzgrnVar.zza(zzgvu.zzb(bArr, bArr2), i)) : zzgvu.zzb(bArr3, zzgrnVar.zza(bArr, i));
    }
}

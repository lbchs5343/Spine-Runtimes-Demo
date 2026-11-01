package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.util.Arrays;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes3.dex */
public final class zzgvw implements zzgfm {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f8641a;

    /* renamed from: b, reason: collision with root package name */
    public final zzgvp f8642b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgwr f8643c;

    /* renamed from: d, reason: collision with root package name */
    public final int f8644d;

    public zzgvw(zzgvp zzgvpVar, zzgwr zzgwrVar, int i, byte[] bArr) {
        this.f8642b = zzgvpVar;
        this.f8643c = zzgwrVar;
        this.f8644d = i;
        this.f8641a = bArr;
    }

    public static zzgfm zzb(zzgha zzghaVar) throws GeneralSecurityException {
        zzgvp zzgvpVar = new zzgvp(zzghaVar.zzd().zzd(zzgfv.zza()), zzghaVar.zzb().zzd());
        String valueOf = String.valueOf(zzghaVar.zzb().zzg());
        return new zzgvw(zzgvpVar, new zzgwr(new zzgwq("HMAC".concat(valueOf), new SecretKeySpec(zzghaVar.zze().zzd(zzgfv.zza()), "HMAC")), zzghaVar.zzb().zze()), zzghaVar.zzb().zze(), zzghaVar.zzc().zzc());
    }

    @Override // com.google.android.gms.internal.ads.zzgfm
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.f8641a;
        int length = bArr3.length;
        int length2 = bArr.length;
        int i = this.f8644d;
        if (length2 < length + i) {
            throw new GeneralSecurityException("Decryption failed (ciphertext too short).");
        }
        if (!zzgpj.zzc(bArr3, bArr)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        int i2 = length2 - i;
        byte[] copyOfRange = Arrays.copyOfRange(bArr, bArr3.length, i2);
        byte[] copyOfRange2 = Arrays.copyOfRange(bArr, i2, length2);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        if (MessageDigest.isEqual(this.f8643c.zzc(zzgvu.zzb(bArr2, copyOfRange, Arrays.copyOf(ByteBuffer.allocate(8).putLong(bArr2.length * 8).array(), 8))), copyOfRange2)) {
            return this.f8642b.zza(copyOfRange);
        }
        throw new GeneralSecurityException("invalid MAC");
    }
}

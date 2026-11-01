package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzgwt implements zzgfm {

    /* renamed from: a, reason: collision with root package name */
    public final zzglw f8659a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f8660b;

    public zzgwt(byte[] bArr, byte[] bArr2) {
        this.f8659a = new zzglw(bArr);
        this.f8660b = bArr2;
    }

    public static zzgfm zzb(zzgkg zzgkgVar) throws GeneralSecurityException {
        return new zzgwt(zzgkgVar.zzd().zzd(zzgfv.zza()), zzgkgVar.zzc().zzc());
    }

    public final byte[] c(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        if (length < 40) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        return this.f8659a.zzb(ByteBuffer.wrap(bArr, 24, length - 24), Arrays.copyOf(bArr, 24), bArr2);
    }

    @Override // com.google.android.gms.internal.ads.zzgfm
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.f8660b;
        if (bArr3.length == 0) {
            return c(bArr, bArr2);
        }
        if (!zzgpj.zzc(bArr3, bArr)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        return c(Arrays.copyOfRange(bArr, bArr3.length, bArr.length), bArr2);
    }
}

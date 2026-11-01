package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzgvv implements zzgfm {

    /* renamed from: a, reason: collision with root package name */
    public final zzglt f8639a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f8640b;

    public zzgvv(byte[] bArr, byte[] bArr2) {
        this.f8639a = new zzglt(bArr);
        this.f8640b = bArr2;
    }

    public static zzgfm zzb(zzgiq zzgiqVar) throws GeneralSecurityException {
        return new zzgvv(zzgiqVar.zzd().zzd(zzgfv.zza()), zzgiqVar.zzc().zzc());
    }

    public final byte[] c(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        if (length < 28) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        return this.f8639a.zzb(ByteBuffer.wrap(bArr, 12, length - 12), Arrays.copyOf(bArr, 12), bArr2);
    }

    @Override // com.google.android.gms.internal.ads.zzgfm
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.f8640b;
        if (bArr3.length == 0) {
            return c(bArr, bArr2);
        }
        if (!zzgpj.zzc(bArr3, bArr)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        return c(Arrays.copyOfRange(bArr, bArr3.length, bArr.length), bArr2);
    }
}

package com.google.android.gms.internal.ads;

import g.cqw;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes3.dex */
public final class zzgvp implements zzgwm {

    /* renamed from: a, reason: collision with root package name */
    public static final cqw f8626a = new cqw(14);

    /* renamed from: b, reason: collision with root package name */
    public final SecretKeySpec f8627b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8628c;

    /* renamed from: d, reason: collision with root package name */
    public final int f8629d;

    public zzgvp(byte[] bArr, int i) throws GeneralSecurityException {
        if (!zzgmh.zza(2)) {
            throw new GeneralSecurityException("Can not use AES-CTR in FIPS-mode, as BoringCrypto module is not available.");
        }
        zzgws.zza(bArr.length);
        this.f8627b = new SecretKeySpec(bArr, "AES");
        int blockSize = ((Cipher) f8626a.get()).getBlockSize();
        this.f8629d = blockSize;
        if (i > blockSize) {
            throw new GeneralSecurityException("invalid IV size");
        }
        this.f8628c = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgwm
    public final byte[] zza(byte[] bArr) throws GeneralSecurityException {
        int length = bArr.length;
        int i = this.f8628c;
        if (length < i) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        int i2 = this.f8628c;
        int i3 = length - i2;
        byte[] bArr3 = new byte[i3];
        Cipher cipher = (Cipher) f8626a.get();
        byte[] bArr4 = new byte[this.f8629d];
        System.arraycopy(bArr2, 0, bArr4, 0, i);
        cipher.init(2, this.f8627b, new IvParameterSpec(bArr4));
        if (cipher.doFinal(bArr, i2, i3, bArr3, 0) == i3) {
            return bArr3;
        }
        throw new GeneralSecurityException("stored output's length does not match input's length");
    }
}

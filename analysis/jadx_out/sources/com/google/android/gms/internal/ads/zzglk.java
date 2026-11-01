package com.google.android.gms.internal.ads;

import g.cqw;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes3.dex */
public final class zzglk implements zzgfm {

    /* renamed from: e, reason: collision with root package name */
    public final SecretKeySpec f8450e;

    /* renamed from: f, reason: collision with root package name */
    public final byte[] f8451f;

    /* renamed from: d, reason: collision with root package name */
    public static final byte[] f8449d = zzgwl.zza("808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9f");

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f8446a = zzgwl.zza("070000004041424344454647");

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f8447b = zzgwl.zza("a0784d7a4716f3feb4f64e7f4b39bf04");

    /* renamed from: c, reason: collision with root package name */
    public static final cqw f8448c = new cqw(11);

    public zzglk(byte[] bArr, byte[] bArr2) {
        if (!zzgmh.zza(1)) {
            throw new GeneralSecurityException("Can not use ChaCha20Poly1305 in FIPS-mode.");
        }
        if (!zze()) {
            throw new GeneralSecurityException("JCE does not support algorithm: ChaCha20-Poly1305");
        }
        if (bArr.length != 32) {
            throw new InvalidKeyException("The key length in bytes must be 32.");
        }
        this.f8450e = new SecretKeySpec(bArr, "ChaCha20");
        this.f8451f = bArr2;
    }

    public static boolean g(Cipher cipher) {
        try {
            IvParameterSpec ivParameterSpec = new IvParameterSpec(f8446a);
            byte[] bArr = f8449d;
            cipher.init(2, new SecretKeySpec(bArr, "ChaCha20"), ivParameterSpec);
            byte[] bArr2 = f8447b;
            if (cipher.doFinal(bArr2).length != 0) {
                return false;
            }
            cipher.init(2, new SecretKeySpec(bArr, "ChaCha20"), ivParameterSpec);
            return cipher.doFinal(bArr2).length == 0;
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }

    public static zzgfm zzb(zzgiq zzgiqVar) throws GeneralSecurityException {
        return new zzglk(zzgiqVar.zzd().zzd(zzgfv.zza()), zzgiqVar.zzc().zzc());
    }

    public static boolean zze() {
        return f8448c.get() != null;
    }

    @Override // com.google.android.gms.internal.ads.zzgfm
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr == null) {
            throw new NullPointerException("ciphertext is null");
        }
        int length = bArr.length;
        byte[] bArr3 = this.f8451f;
        if (length < bArr3.length + 28) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        if (!zzgpj.zzc(bArr3, bArr)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        byte[] bArr4 = new byte[12];
        System.arraycopy(bArr, bArr3.length, bArr4, 0, 12);
        IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr4);
        Cipher cipher = (Cipher) f8448c.get();
        cipher.init(2, this.f8450e, ivParameterSpec);
        if (bArr2 != null && bArr2.length != 0) {
            cipher.updateAAD(bArr2);
        }
        return cipher.doFinal(bArr, bArr3.length + 12, (length - r8) - 12);
    }
}

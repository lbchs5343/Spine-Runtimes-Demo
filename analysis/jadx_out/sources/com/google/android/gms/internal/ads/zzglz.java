package com.google.android.gms.internal.ads;

import g.bpw;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes3.dex */
public final class zzglz implements zzgfm {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f8458a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f8459b;

    public zzglz(byte[] bArr, byte[] bArr2) {
        if (!zzgmh.zza(1)) {
            throw new GeneralSecurityException("Can not use ChaCha20Poly1305 in FIPS-mode.");
        }
        if (!zzc()) {
            throw new GeneralSecurityException("JCE does not support algorithm: ChaCha20-Poly1305");
        }
        if (bArr.length != 32) {
            throw new InvalidKeyException("The key length in bytes must be 32.");
        }
        this.f8458a = bArr;
        this.f8459b = bArr2;
    }

    public static zzgfm zzb(zzgkg zzgkgVar) throws GeneralSecurityException {
        return new zzglz(zzgkgVar.zzd().zzd(zzgfv.zza()), zzgkgVar.zzc().zzc());
    }

    public static boolean zzc() {
        return ((Cipher) zzglk.f8448c.get()) != null;
    }

    @Override // com.google.android.gms.internal.ads.zzgfm
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr == null) {
            throw new NullPointerException("ciphertext is null");
        }
        int length = bArr.length;
        byte[] bArr3 = this.f8459b;
        if (length < bArr3.length + 40) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        if (!zzgpj.zzc(bArr3, bArr)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        byte[] bArr4 = new byte[24];
        System.arraycopy(bArr, bArr3.length, bArr4, 0, 24);
        int[] e2 = bpw.e(bpw.b(this.f8458a), bpw.b(bArr4));
        ByteBuffer order = ByteBuffer.allocate(e2.length * 4).order(ByteOrder.LITTLE_ENDIAN);
        order.asIntBuffer().put(e2);
        SecretKeySpec secretKeySpec = new SecretKeySpec(order.array(), "ChaCha20");
        byte[] bArr5 = new byte[12];
        System.arraycopy(bArr4, 16, bArr5, 4, 8);
        IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr5);
        Cipher cipher = (Cipher) zzglk.f8448c.get();
        cipher.init(2, secretKeySpec, ivParameterSpec);
        if (bArr2 != null && bArr2.length != 0) {
            cipher.updateAAD(bArr2);
        }
        return cipher.doFinal(bArr, bArr3.length + 24, (length - r11) - 24);
    }
}

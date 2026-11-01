package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import g.cqw;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.AEADBadTagException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes3.dex */
public final class zzgvs implements zzgfm {

    /* renamed from: a, reason: collision with root package name */
    public static final cqw f8630a = new cqw(15);

    /* renamed from: b, reason: collision with root package name */
    public static final cqw f8631b = new cqw(16);

    /* renamed from: c, reason: collision with root package name */
    public final SecretKeySpec f8632c;

    /* renamed from: d, reason: collision with root package name */
    public final int f8633d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f8634e;

    /* renamed from: f, reason: collision with root package name */
    public final byte[] f8635f;

    /* renamed from: g, reason: collision with root package name */
    public final byte[] f8636g;

    public zzgvs(byte[] bArr, int i, byte[] bArr2) {
        if (!zzgmh.zza(1)) {
            throw new GeneralSecurityException("Can not use AES-EAX in FIPS-mode.");
        }
        if (i != 12 && i != 16) {
            throw new IllegalArgumentException("IV size should be either 12 or 16 bytes");
        }
        this.f8633d = i;
        zzgws.zza(bArr.length);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        this.f8632c = secretKeySpec;
        Cipher cipher = (Cipher) f8630a.get();
        cipher.init(1, secretKeySpec);
        byte[] i2 = i(cipher.doFinal(new byte[16]));
        this.f8634e = i2;
        this.f8635f = i(i2);
        this.f8636g = bArr2;
    }

    public static void h(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            bArr[i] = (byte) (bArr[i] ^ bArr2[i]);
        }
    }

    public static byte[] i(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        int i = 0;
        while (i < 15) {
            byte b2 = bArr[i];
            int i2 = i + 1;
            bArr2[i] = (byte) (((b2 + b2) ^ ((bArr[i2] & 255) >>> 7)) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            i = i2;
        }
        byte b3 = bArr[15];
        bArr2[15] = (byte) (((bArr[0] >> 7) & 135) ^ (b3 + b3));
        return bArr2;
    }

    public static zzgfm zzb(zzghm zzghmVar) throws GeneralSecurityException {
        if (zzgmh.zza(1)) {
            return new zzgvs(zzghmVar.zzd().zzd(zzgfv.zza()), zzghmVar.zzb().zzb(), zzghmVar.zzc().zzc());
        }
        throw new GeneralSecurityException("Can not use AES-EAX in FIPS-mode.");
    }

    public final byte[] j(Cipher cipher, int i, byte[] bArr, int i2, int i3) {
        int length;
        byte[] bArr2 = new byte[16];
        bArr2[15] = (byte) i;
        byte[] bArr3 = this.f8634e;
        if (i3 == 0) {
            h(bArr2, bArr3);
            return cipher.doFinal(bArr2);
        }
        byte[] bArr4 = new byte[16];
        cipher.doFinal(bArr2, 0, 16, bArr4);
        byte[] bArr5 = bArr2;
        byte[] bArr6 = bArr4;
        int i4 = 0;
        while (i3 - i4 > 16) {
            for (int i5 = 0; i5 < 16; i5++) {
                bArr6[i5] = (byte) (bArr[(i2 + i4) + i5] ^ bArr6[i5]);
            }
            cipher.doFinal(bArr6, 0, 16, bArr5);
            i4 += 16;
            byte[] bArr7 = bArr5;
            bArr5 = bArr6;
            bArr6 = bArr7;
        }
        byte[] copyOfRange = Arrays.copyOfRange(bArr, i4 + i2, i2 + i3);
        if (copyOfRange.length == 16) {
            h(copyOfRange, bArr3);
        } else {
            byte[] copyOf = Arrays.copyOf(this.f8635f, 16);
            int i6 = 0;
            while (true) {
                length = copyOfRange.length;
                if (i6 >= length) {
                    break;
                }
                copyOf[i6] = (byte) (copyOf[i6] ^ copyOfRange[i6]);
                i6++;
            }
            copyOf[length] = (byte) (copyOf[length] ^ 128);
            copyOfRange = copyOf;
        }
        h(bArr6, copyOfRange);
        cipher.doFinal(bArr6, 0, 16, bArr5);
        return bArr5;
    }

    @Override // com.google.android.gms.internal.ads.zzgfm
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        byte[] bArr3 = this.f8636g;
        int length2 = length - bArr3.length;
        int i = this.f8633d;
        int i2 = (length2 - i) - 16;
        if (i2 < 0) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        if (!zzgpj.zzc(bArr3, bArr)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        Cipher cipher = (Cipher) f8630a.get();
        SecretKeySpec secretKeySpec = this.f8632c;
        cipher.init(1, secretKeySpec);
        byte[] j = j(cipher, 0, bArr, bArr3.length, this.f8633d);
        byte[] bArr4 = bArr2 == null ? new byte[0] : bArr2;
        byte[] j2 = j(cipher, 1, bArr4, 0, bArr4.length);
        byte[] j3 = j(cipher, 2, bArr, bArr3.length + i, i2);
        int i3 = length - 16;
        byte b2 = 0;
        for (int i4 = 0; i4 < 16; i4++) {
            b2 = (byte) (b2 | (((bArr[i3 + i4] ^ j2[i4]) ^ j[i4]) ^ j3[i4]));
        }
        if (b2 != 0) {
            throw new AEADBadTagException("tag mismatch");
        }
        Cipher cipher2 = (Cipher) f8631b.get();
        cipher2.init(1, secretKeySpec, new IvParameterSpec(j));
        return cipher2.doFinal(bArr, bArr3.length + i, i2);
    }
}

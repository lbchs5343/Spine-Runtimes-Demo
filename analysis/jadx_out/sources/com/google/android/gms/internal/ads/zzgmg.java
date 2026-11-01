package com.google.android.gms.internal.ads;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.cqw;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes3.dex */
public final class zzgmg implements zzgfm {

    /* renamed from: g, reason: collision with root package name */
    public final SecretKeySpec f8470g;
    public final byte[] h;

    /* renamed from: e, reason: collision with root package name */
    public static final byte[] f8468e = zzgwl.zza("7a806c");

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f8465b = zzgwl.zza("46bb91c3c5");

    /* renamed from: c, reason: collision with root package name */
    public static final byte[] f8466c = zzgwl.zza("36864200e0eaf5284d884a0e77d31646");

    /* renamed from: d, reason: collision with root package name */
    public static final byte[] f8467d = zzgwl.zza("bae8e37fc83441b16034566b");

    /* renamed from: f, reason: collision with root package name */
    public static final byte[] f8469f = zzgwl.zza("af60eb711bd85bc1e4d3e0a462e074eea428a8");

    /* renamed from: a, reason: collision with root package name */
    public static final cqw f8464a = new cqw(12);

    public zzgmg(byte[] bArr, byte[] bArr2) {
        this.h = bArr2;
        zzgws.zza(bArr.length);
        this.f8470g = new SecretKeySpec(bArr, "AES");
    }

    public static boolean i(Cipher cipher) {
        try {
            byte[] bArr = f8467d;
            cipher.init(2, new SecretKeySpec(f8466c, "AES"), new GCMParameterSpec(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME, bArr, 0, bArr.length));
            cipher.updateAAD(f8465b);
            byte[] bArr2 = f8469f;
            return MessageDigest.isEqual(cipher.doFinal(bArr2, 0, bArr2.length), f8468e);
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }

    public static zzgfm zzb(zzgih zzgihVar) throws GeneralSecurityException {
        return new zzgmg(zzgihVar.zzd().zzd(zzgfv.zza()), zzgihVar.zzc().zzc());
    }

    public final byte[] j(byte[] bArr, byte[] bArr2) {
        Cipher cipher = (Cipher) f8464a.get();
        if (cipher == null) {
            throw new GeneralSecurityException("AES GCM SIV cipher is not available or is invalid.");
        }
        int length = bArr.length;
        if (length < 28) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        cipher.init(2, this.f8470g, new GCMParameterSpec(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME, bArr, 0, 12));
        if (bArr2 != null && bArr2.length != 0) {
            cipher.updateAAD(bArr2);
        }
        return cipher.doFinal(bArr, 12, length - 12);
    }

    @Override // com.google.android.gms.internal.ads.zzgfm
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] bArr3 = this.h;
        if (bArr3.length == 0) {
            return j(bArr, bArr2);
        }
        if (!zzgpj.zzc(bArr3, bArr)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        return j(Arrays.copyOfRange(bArr, bArr3.length, bArr.length), bArr2);
    }
}

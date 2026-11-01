package com.google.android.gms.internal.ads;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.cqw;
import j$.util.Objects;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes3.dex */
public final class zzgvt implements zzgfm {

    /* renamed from: a, reason: collision with root package name */
    public final SecretKeySpec f8637a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f8638b;

    public zzgvt(byte[] bArr, zzgwu zzgwuVar) {
        if (!zzgmh.zza(2)) {
            throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
        }
        cqw cqwVar = zzgky.f8431a;
        zzgws.zza(bArr.length);
        this.f8637a = new SecretKeySpec(bArr, "AES");
        this.f8638b = zzgwuVar.zzc();
    }

    public static zzgfm zzb(zzghw zzghwVar) throws GeneralSecurityException {
        return new zzgvt(zzghwVar.zzd().zzd(zzgfv.zza()), zzghwVar.zzc());
    }

    @Override // com.google.android.gms.internal.ads.zzgfm
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr == null) {
            throw new NullPointerException("ciphertext is null");
        }
        int length = bArr.length;
        byte[] bArr3 = this.f8638b;
        if (length < bArr3.length + 28) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        if (!zzgpj.zzc(bArr3, bArr)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        cqw cqwVar = zzgky.f8431a;
        Objects.equals(System.getProperty("java.vendor"), "The Android Project");
        GCMParameterSpec gCMParameterSpec = new GCMParameterSpec(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME, bArr, bArr3.length, 12);
        Cipher zza = zzgky.zza();
        zza.init(2, this.f8637a, gCMParameterSpec);
        if (bArr2 != null && bArr2.length != 0) {
            zza.updateAAD(bArr2);
        }
        return zza.doFinal(bArr, bArr3.length + 12, (length - r8) - 12);
    }
}

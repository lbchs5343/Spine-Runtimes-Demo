package com.google.android.gms.internal.ads;

import android.util.Base64;
import g.agd;
import g.ti;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public final class zzfgd {
    public zzfgd() {
        try {
            zzggr.zza();
        } catch (GeneralSecurityException e2) {
            agd.e("Failed to Configure Aead. ".concat(e2.toString()));
            ti.f20033a.f20034ab.zzw(e2, "CryptoUtils.registerAead");
        }
    }

    public static final String zza() {
        byte[] bArr;
        try {
            zzggf zzb = zzggf.zzb(zzgfz.zza(zzgnv.zzb().zza("AES128_GCM")));
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                zzgfp.zzb(zzb, zzgfo.zzb(byteArrayOutputStream));
                bArr = byteArrayOutputStream.toByteArray();
            } catch (IOException unused) {
                throw new GeneralSecurityException("Serialize keyset failed");
            }
        } catch (GeneralSecurityException e2) {
            agd.e("Failed to generate key".concat(e2.toString()));
            ti.f20033a.f20034ab.zzw(e2, "CryptoUtils.generateKey");
            bArr = new byte[0];
        }
        return Base64.encodeToString(bArr, 11);
    }

    public static final String zzb(byte[] bArr, byte[] bArr2, String str, zzdsh zzdshVar) {
        zzggf zzggfVar;
        try {
            try {
                zzggfVar = zzgfp.zza(zzgfn.zzb(Base64.decode(str, 11)));
            } catch (IOException unused) {
                throw new GeneralSecurityException("Parse keyset failed");
            }
        } catch (GeneralSecurityException e2) {
            agd.e("Failed to get keysethandle".concat(e2.toString()));
            ti.f20033a.f20034ab.zzw(e2, "CryptoUtils.getHandle");
            zzggfVar = null;
        }
        if (zzggfVar != null) {
            try {
                byte[] zza = ((zzgfm) zzggfVar.zzd(zzgpa.zzd(), zzgfm.class)).zza(bArr, bArr2);
                zzdshVar.zzb().put("ds", "1");
                return new String(zza, "UTF-8");
            } catch (UnsupportedEncodingException | UnsupportedOperationException | GeneralSecurityException e3) {
                agd.e("Failed to decrypt ".concat(e3.toString()));
                ti.f20033a.f20034ab.zzw(e3, "CryptoUtils.decrypt");
                zzdshVar.zzb().put("dsf", e3.toString());
            }
        }
        return null;
    }
}

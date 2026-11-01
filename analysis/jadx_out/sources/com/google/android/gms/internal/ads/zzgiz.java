package com.google.android.gms.internal.ads;

import g.tn;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes3.dex */
public final class zzgiz implements zzgfm {

    /* renamed from: a, reason: collision with root package name */
    public static final Set f8373a;

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f8374b = new byte[0];
    public static final /* synthetic */ int zza = 0;

    /* renamed from: c, reason: collision with root package name */
    public final String f8375c;

    /* renamed from: d, reason: collision with root package name */
    public final zzgfm f8376d;

    static {
        HashSet hashSet = new HashSet();
        hashSet.add("type.googleapis.com/google.crypto.tink.AesGcmKey");
        hashSet.add("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
        hashSet.add("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
        hashSet.add("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        hashSet.add("type.googleapis.com/google.crypto.tink.AesGcmSivKey");
        hashSet.add("type.googleapis.com/google.crypto.tink.AesEaxKey");
        f8373a = Collections.unmodifiableSet(hashSet);
    }

    public zzgiz(zzgue zzgueVar, zzgfm zzgfmVar) {
        if (!f8373a.contains(zzgueVar.zzi())) {
            throw new IllegalArgumentException(tn.ad("Unsupported DEK key type: ", zzgueVar.zzi(), ". Only Tink AEAD key types are supported."));
        }
        this.f8375c = zzgueVar.zzi();
        zzguc zzb = zzgue.zzb(zzgueVar);
        zzb.zza(zzgve.RAW);
        zzggp.zza(((zzgue) zzb.zzbr()).zzaV());
        this.f8376d = zzgfmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgfm
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        try {
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            int i = wrap.getInt();
            if (i <= 0 || i > bArr.length - 4) {
                throw new GeneralSecurityException("invalid ciphertext");
            }
            byte[] bArr3 = new byte[i];
            wrap.get(bArr3, 0, i);
            byte[] bArr4 = new byte[wrap.remaining()];
            wrap.get(bArr4, 0, wrap.remaining());
            byte[] zza2 = this.f8376d.zza(bArr3, f8374b);
            String str = this.f8375c;
            zzgxp zzgxpVar = zzgxp.zzb;
            return ((zzgfm) zzgnw.zza().zzc(zzgnz.zzc().zza(zzgow.zza(str, zzgxp.zzv(zza2, 0, zza2.length), zzgty.SYMMETRIC, zzgve.RAW, null), zzgfv.zza()), zzgfm.class)).zza(bArr4, bArr2);
        } catch (IndexOutOfBoundsException e2) {
            e = e2;
            throw new GeneralSecurityException("invalid ciphertext", e);
        } catch (NegativeArraySizeException e3) {
            e = e3;
            throw new GeneralSecurityException("invalid ciphertext", e);
        } catch (BufferUnderflowException e4) {
            e = e4;
            throw new GeneralSecurityException("invalid ciphertext", e);
        }
    }
}

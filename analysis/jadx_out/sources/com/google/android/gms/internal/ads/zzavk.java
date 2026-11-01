package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes3.dex */
public final class zzavk {

    /* renamed from: a, reason: collision with root package name */
    public static Cipher f4526a;

    /* renamed from: b, reason: collision with root package name */
    public static final Object f4527b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static final Object f4528c = new Object();

    public zzavk(SecureRandom secureRandom) {
    }

    public static final Cipher d() {
        Cipher cipher;
        synchronized (f4528c) {
            try {
                if (f4526a == null) {
                    f4526a = Cipher.getInstance("AES/CBC/PKCS5Padding");
                }
                cipher = f4526a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cipher;
    }

    public final String zza(byte[] bArr, byte[] bArr2) throws zzavj {
        byte[] doFinal;
        byte[] iv;
        int length = bArr.length;
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (f4527b) {
                d().init(1, secretKeySpec, (SecureRandom) null);
                doFinal = d().doFinal(bArr2);
                iv = d().getIV();
            }
            int length2 = doFinal.length + iv.length;
            ByteBuffer allocate = ByteBuffer.allocate(length2);
            allocate.put(iv).put(doFinal);
            allocate.flip();
            byte[] bArr3 = new byte[length2];
            allocate.get(bArr3);
            return zzatt.zza(bArr3, false);
        } catch (InvalidKeyException e2) {
            throw new zzavj(this, e2);
        } catch (NoSuchAlgorithmException e3) {
            throw new zzavj(this, e3);
        } catch (BadPaddingException e4) {
            throw new zzavj(this, e4);
        } catch (IllegalBlockSizeException e5) {
            throw new zzavj(this, e5);
        } catch (NoSuchPaddingException e6) {
            throw new zzavj(this, e6);
        }
    }

    public final byte[] zzb(byte[] bArr, String str) throws zzavj {
        byte[] doFinal;
        int length = bArr.length;
        try {
            byte[] zzb = zzatt.zzb(str, false);
            int length2 = zzb.length;
            if (length2 <= 16) {
                throw new zzavj(this);
            }
            ByteBuffer allocate = ByteBuffer.allocate(length2);
            allocate.put(zzb);
            allocate.flip();
            byte[] bArr2 = new byte[16];
            byte[] bArr3 = new byte[length2 - 16];
            allocate.get(bArr2);
            allocate.get(bArr3);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            synchronized (f4527b) {
                d().init(2, secretKeySpec, new IvParameterSpec(bArr2));
                doFinal = d().doFinal(bArr3);
            }
            return doFinal;
        } catch (IllegalArgumentException e2) {
            throw new zzavj(this, e2);
        } catch (InvalidAlgorithmParameterException e3) {
            throw new zzavj(this, e3);
        } catch (InvalidKeyException e4) {
            throw new zzavj(this, e4);
        } catch (NoSuchAlgorithmException e5) {
            throw new zzavj(this, e5);
        } catch (BadPaddingException e6) {
            throw new zzavj(this, e6);
        } catch (IllegalBlockSizeException e7) {
            throw new zzavj(this, e7);
        } catch (NoSuchPaddingException e8) {
            throw new zzavj(this, e8);
        }
    }
}

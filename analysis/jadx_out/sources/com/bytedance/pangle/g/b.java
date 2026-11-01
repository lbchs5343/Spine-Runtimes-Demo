package com.bytedance.pangle.g;

import android.util.ArrayMap;
import android.util.Pair;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import g.awf;
import g.tn;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;

/* loaded from: classes.dex */
public final class b {

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final X509Certificate[][] f1423a;

        /* renamed from: b, reason: collision with root package name */
        public final byte[] f1424b;

        public a(X509Certificate[][] x509CertificateArr, byte[] bArr) {
            this.f1423a = x509CertificateArr;
            this.f1424b = bArr;
        }
    }

    public static a a(RandomAccessFile randomAccessFile, m mVar) {
        ArrayMap arrayMap = new ArrayMap();
        ArrayList arrayList = new ArrayList();
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            try {
                ByteBuffer a2 = f.a(mVar.f1445a);
                int i = 0;
                while (a2.hasRemaining()) {
                    i++;
                    try {
                        arrayList.add(a(f.a(a2), arrayMap, certificateFactory));
                    } catch (IOException | SecurityException | BufferUnderflowException e2) {
                        throw new SecurityException(awf.b(i, "Failed to parse/verify signer #", " block"), e2);
                    }
                }
                if (i <= 0) {
                    throw new SecurityException("No signers found");
                }
                if (arrayMap.isEmpty()) {
                    throw new SecurityException("No content digests found");
                }
                f.a(arrayMap, randomAccessFile, mVar);
                return new a((X509Certificate[][]) arrayList.toArray(new X509Certificate[arrayList.size()][]), arrayMap.containsKey(3) ? f.a((byte[]) arrayMap.get(3), randomAccessFile.length(), mVar) : null);
            } catch (IOException e3) {
                throw new SecurityException("Failed to read list of signers", e3);
            }
        } catch (CertificateException e4) {
            throw new RuntimeException("Failed to obtain X.509 CertificateFactory", e4);
        }
    }

    private static void a(ByteBuffer byteBuffer) {
        while (byteBuffer.hasRemaining()) {
            ByteBuffer a2 = f.a(byteBuffer);
            if (a2.remaining() < 4) {
                throw new IOException("Remaining buffer too short to contain additional attribute ID. Remaining: " + a2.remaining());
            }
            if (a2.getInt() == -1091571699) {
                if (a2.remaining() < 4) {
                    throw new IOException("V2 Signature Scheme Stripping Protection Attribute  value too small. Expected 4 bytes, but found " + a2.remaining());
                }
                if (a2.getInt() == 3) {
                    throw new SecurityException("V2 signature indicates APK is signed using APK Signature Scheme v3, but none was found. Signature stripped?");
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0058, code lost:
    
        if (com.bytedance.pangle.g.f.a(r10, r6) <= 0) goto L129;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static X509Certificate[] a(ByteBuffer byteBuffer, Map<Integer, byte[]> map, CertificateFactory certificateFactory) {
        ByteBuffer a2 = f.a(byteBuffer);
        ByteBuffer a3 = f.a(byteBuffer);
        byte[] b2 = f.b(byteBuffer);
        ArrayList arrayList = new ArrayList();
        byte[] bArr = null;
        byte[] bArr2 = null;
        int i = -1;
        int i2 = 0;
        while (a3.hasRemaining()) {
            i2++;
            try {
                ByteBuffer a4 = f.a(a3);
                if (a4.remaining() < 8) {
                    throw new SecurityException("Signature record too short");
                }
                int i3 = a4.getInt();
                arrayList.add(Integer.valueOf(i3));
                if (i3 != 513 && i3 != 514 && i3 != 769 && i3 != 1057 && i3 != 1059 && i3 != 1061) {
                    switch (i3) {
                        case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FALLBACK_SW_DEC /* 257 */:
                        case MediaPlayer.MEDIA_PLAYER_OPTION_RANGE_MODE /* 258 */:
                        case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME /* 259 */:
                        case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_TIME /* 260 */:
                            break;
                        default:
                            continue;
                    }
                }
                bArr2 = f.b(a4);
                i = i3;
            } catch (IOException e2) {
                e = e2;
                throw new SecurityException("Failed to parse signature record #".concat(String.valueOf(i2)), e);
            } catch (BufferUnderflowException e3) {
                e = e3;
                throw new SecurityException("Failed to parse signature record #".concat(String.valueOf(i2)), e);
            }
        }
        if (i == -1) {
            if (i2 == 0) {
                throw new SecurityException("No signatures found");
            }
            throw new SecurityException("No supported signatures found");
        }
        String c2 = f.c(i);
        Pair<String, ? extends AlgorithmParameterSpec> d2 = f.d(i);
        String str = (String) d2.first;
        AlgorithmParameterSpec algorithmParameterSpec = (AlgorithmParameterSpec) d2.second;
        try {
            PublicKey generatePublic = KeyFactory.getInstance(c2).generatePublic(new X509EncodedKeySpec(b2));
            Signature signature = Signature.getInstance(str);
            signature.initVerify(generatePublic);
            if (algorithmParameterSpec != null) {
                signature.setParameter(algorithmParameterSpec);
            }
            signature.update(a2);
            if (!signature.verify(bArr2)) {
                throw new SecurityException(awf.c(str, " signature did not verify"));
            }
            a2.clear();
            ByteBuffer a5 = f.a(a2);
            ArrayList arrayList2 = new ArrayList();
            int i4 = 0;
            while (a5.hasRemaining()) {
                i4++;
                try {
                    ByteBuffer a6 = f.a(a5);
                    if (a6.remaining() < 8) {
                        throw new IOException("Record too short");
                    }
                    int i5 = a6.getInt();
                    arrayList2.add(Integer.valueOf(i5));
                    if (i5 == i) {
                        bArr = f.b(a6);
                    }
                } catch (IOException e4) {
                    e = e4;
                    throw new IOException("Failed to parse digest record #".concat(String.valueOf(i4)), e);
                } catch (BufferUnderflowException e5) {
                    e = e5;
                    throw new IOException("Failed to parse digest record #".concat(String.valueOf(i4)), e);
                }
            }
            if (!arrayList.equals(arrayList2)) {
                throw new SecurityException("Signature algorithms don't match between digests and signatures records");
            }
            int a7 = f.a(i);
            byte[] put = map.put(Integer.valueOf(a7), bArr);
            if (put != null && !MessageDigest.isEqual(put, bArr)) {
                throw new SecurityException(awf.ad(new StringBuilder(), f.b(a7), " contents digest does not match the digest specified by a preceding signer"));
            }
            ByteBuffer a8 = f.a(a2);
            ArrayList arrayList3 = new ArrayList();
            int i6 = 0;
            while (a8.hasRemaining()) {
                i6++;
                byte[] b3 = f.b(a8);
                try {
                    arrayList3.add(new p((X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(b3)), b3));
                } catch (CertificateException e6) {
                    throw new SecurityException("Failed to decode certificate #".concat(String.valueOf(i6)), e6);
                }
            }
            if (arrayList3.isEmpty()) {
                throw new SecurityException("No certificates listed");
            }
            if (!Arrays.equals(b2, ((X509Certificate) arrayList3.get(0)).getPublicKey().getEncoded())) {
                throw new SecurityException("Public key mismatch between certificate and signature record");
            }
            a(f.a(a2));
            return (X509Certificate[]) arrayList3.toArray(new X509Certificate[arrayList3.size()]);
        } catch (InvalidAlgorithmParameterException e7) {
            e = e7;
            throw new SecurityException(tn.ad("Failed to verify ", str, " signature"), e);
        } catch (InvalidKeyException e8) {
            e = e8;
            throw new SecurityException(tn.ad("Failed to verify ", str, " signature"), e);
        } catch (NoSuchAlgorithmException e9) {
            e = e9;
            throw new SecurityException(tn.ad("Failed to verify ", str, " signature"), e);
        } catch (SignatureException e10) {
            e = e10;
            throw new SecurityException(tn.ad("Failed to verify ", str, " signature"), e);
        } catch (InvalidKeySpecException e11) {
            e = e11;
            throw new SecurityException(tn.ad("Failed to verify ", str, " signature"), e);
        }
    }
}

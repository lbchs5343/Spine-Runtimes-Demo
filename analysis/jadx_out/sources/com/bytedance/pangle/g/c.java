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
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class c {

    public static class a extends Exception {
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final List<X509Certificate> f1425a;

        /* renamed from: b, reason: collision with root package name */
        public final List<Integer> f1426b;

        public b(List<X509Certificate> list, List<Integer> list2) {
            this.f1425a = list;
            this.f1426b = list2;
        }
    }

    /* renamed from: com.bytedance.pangle.g.c$c, reason: collision with other inner class name */
    public static class C0098c {

        /* renamed from: a, reason: collision with root package name */
        public final X509Certificate[] f1427a;

        /* renamed from: b, reason: collision with root package name */
        public final b f1428b;

        /* renamed from: c, reason: collision with root package name */
        public byte[] f1429c;

        public C0098c(X509Certificate[] x509CertificateArr, b bVar) {
            this.f1427a = x509CertificateArr;
            this.f1428b = bVar;
        }
    }

    private static b a(ByteBuffer byteBuffer, CertificateFactory certificateFactory) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i = 0;
        try {
            byteBuffer.getInt();
            HashSet hashSet = new HashSet();
            int i2 = -1;
            p pVar = null;
            while (byteBuffer.hasRemaining()) {
                i++;
                ByteBuffer a2 = f.a(byteBuffer);
                ByteBuffer a3 = f.a(a2);
                int i3 = a2.getInt();
                int i4 = a2.getInt();
                byte[] b2 = f.b(a2);
                if (pVar != null) {
                    Pair<String, ? extends AlgorithmParameterSpec> d2 = f.d(i2);
                    PublicKey publicKey = pVar.getPublicKey();
                    Signature signature = Signature.getInstance((String) d2.first);
                    signature.initVerify(publicKey);
                    Object obj = d2.second;
                    if (obj != null) {
                        signature.setParameter((AlgorithmParameterSpec) obj);
                    }
                    signature.update(a3);
                    if (!signature.verify(b2)) {
                        throw new SecurityException("Unable to verify signature of certificate #" + i + " using " + ((String) d2.first) + " when verifying Proof-of-rotation record");
                    }
                }
                a3.rewind();
                byte[] b3 = f.b(a3);
                int i5 = a3.getInt();
                if (pVar != null && i2 != i5) {
                    throw new SecurityException("Signing algorithm ID mismatch for certificate #" + i + " when verifying Proof-of-rotation record");
                }
                pVar = new p((X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(b3)), b3);
                if (hashSet.contains(pVar)) {
                    throw new SecurityException("Encountered duplicate entries in Proof-of-rotation record at certificate #" + i + ".  All signing certificates should be unique");
                }
                hashSet.add(pVar);
                arrayList.add(pVar);
                arrayList2.add(Integer.valueOf(i3));
                i2 = i4;
            }
            return new b(arrayList, arrayList2);
        } catch (IOException | BufferUnderflowException e2) {
            throw new IOException("Failed to parse Proof-of-rotation record", e2);
        } catch (InvalidAlgorithmParameterException e3) {
            e = e3;
            throw new SecurityException(awf.b(0, "Failed to verify signature over signed data for certificate #", " when verifying Proof-of-rotation record"), e);
        } catch (InvalidKeyException e4) {
            e = e4;
            throw new SecurityException(awf.b(0, "Failed to verify signature over signed data for certificate #", " when verifying Proof-of-rotation record"), e);
        } catch (NoSuchAlgorithmException e5) {
            e = e5;
            throw new SecurityException(awf.b(0, "Failed to verify signature over signed data for certificate #", " when verifying Proof-of-rotation record"), e);
        } catch (SignatureException e6) {
            e = e6;
            throw new SecurityException(awf.b(0, "Failed to verify signature over signed data for certificate #", " when verifying Proof-of-rotation record"), e);
        } catch (CertificateException e7) {
            throw new SecurityException(awf.b(0, "Failed to decode certificate #", " when verifying Proof-of-rotation record"), e7);
        }
    }

    public static C0098c a(RandomAccessFile randomAccessFile, m mVar) {
        ArrayMap arrayMap = new ArrayMap();
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            try {
                ByteBuffer a2 = f.a(mVar.f1445a);
                int i = 0;
                C0098c c0098c = null;
                while (a2.hasRemaining()) {
                    try {
                        c0098c = a(f.a(a2), arrayMap, certificateFactory);
                        i++;
                    } catch (a unused) {
                    } catch (IOException e2) {
                        e = e2;
                        throw new SecurityException(awf.b(i, "Failed to parse/verify signer #", " block"), e);
                    } catch (SecurityException e3) {
                        e = e3;
                        throw new SecurityException(awf.b(i, "Failed to parse/verify signer #", " block"), e);
                    } catch (BufferUnderflowException e4) {
                        e = e4;
                        throw new SecurityException(awf.b(i, "Failed to parse/verify signer #", " block"), e);
                    }
                }
                if (i <= 0 || c0098c == null) {
                    throw new SecurityException("No signers found");
                }
                if (i != 1) {
                    throw new SecurityException("APK Signature Scheme V3 only supports one signer: multiple signers found.");
                }
                if (arrayMap.isEmpty()) {
                    throw new SecurityException("No content digests found");
                }
                f.a(arrayMap, randomAccessFile, mVar);
                if (arrayMap.containsKey(3)) {
                    c0098c.f1429c = f.a((byte[]) arrayMap.get(3), randomAccessFile.length(), mVar);
                }
                return c0098c;
            } catch (IOException e5) {
                throw new SecurityException("Failed to read list of signers", e5);
            }
        } catch (CertificateException e6) {
            throw new RuntimeException("Failed to obtain X.509 CertificateFactory", e6);
        }
    }

    private static C0098c a(ByteBuffer byteBuffer, List<X509Certificate> list, CertificateFactory certificateFactory) {
        X509Certificate[] x509CertificateArr = (X509Certificate[]) list.toArray(new X509Certificate[list.size()]);
        b bVar = null;
        while (byteBuffer.hasRemaining()) {
            ByteBuffer a2 = f.a(byteBuffer);
            if (a2.remaining() < 4) {
                throw new IOException("Remaining buffer too short to contain additional attribute ID. Remaining: " + a2.remaining());
            }
            if (a2.getInt() == 1000370060) {
                if (bVar != null) {
                    throw new SecurityException("Encountered multiple Proof-of-rotation records when verifying APK Signature Scheme v3 signature");
                }
                bVar = a(a2, certificateFactory);
                try {
                    if (bVar.f1425a.size() > 0) {
                        if (!Arrays.equals(bVar.f1425a.get(r1.size() - 1).getEncoded(), x509CertificateArr[0].getEncoded())) {
                            throw new SecurityException("Terminal certificate in Proof-of-rotation record does not match APK signing certificate");
                        }
                    } else {
                        continue;
                    }
                } catch (CertificateEncodingException e2) {
                    throw new SecurityException("Failed to encode certificate when comparing Proof-of-rotation record and signing certificate", e2);
                }
            }
        }
        return new C0098c(x509CertificateArr, bVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0062, code lost:
    
        if (com.bytedance.pangle.g.f.a(r14, r10) <= 0) goto L137;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static C0098c a(ByteBuffer byteBuffer, Map<Integer, byte[]> map, CertificateFactory certificateFactory) {
        ByteBuffer a2 = f.a(byteBuffer);
        int i = byteBuffer.getInt();
        int i2 = byteBuffer.getInt();
        ByteBuffer a3 = f.a(byteBuffer);
        byte[] b2 = f.b(byteBuffer);
        ArrayList arrayList = new ArrayList();
        byte[] bArr = null;
        byte[] bArr2 = null;
        int i3 = -1;
        int i4 = 0;
        while (a3.hasRemaining()) {
            i4++;
            try {
                ByteBuffer a4 = f.a(a3);
                if (a4.remaining() < 8) {
                    throw new SecurityException("Signature record too short");
                }
                int i5 = a4.getInt();
                arrayList.add(Integer.valueOf(i5));
                if (i5 != 513 && i5 != 514 && i5 != 769 && i5 != 1057 && i5 != 1059 && i5 != 1061) {
                    switch (i5) {
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
                i3 = i5;
            } catch (IOException e2) {
                e = e2;
                throw new SecurityException("Failed to parse signature record #".concat(String.valueOf(i4)), e);
            } catch (BufferUnderflowException e3) {
                e = e3;
                throw new SecurityException("Failed to parse signature record #".concat(String.valueOf(i4)), e);
            }
        }
        if (i3 == -1) {
            if (i4 == 0) {
                throw new SecurityException("No signatures found");
            }
            throw new SecurityException("No supported signatures found");
        }
        String c2 = f.c(i3);
        Pair<String, ? extends AlgorithmParameterSpec> d2 = f.d(i3);
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
            int i6 = 0;
            while (a5.hasRemaining()) {
                i6++;
                try {
                    ByteBuffer a6 = f.a(a5);
                    if (a6.remaining() < 8) {
                        throw new IOException("Record too short");
                    }
                    int i7 = a6.getInt();
                    arrayList2.add(Integer.valueOf(i7));
                    if (i7 == i3) {
                        bArr = f.b(a6);
                    }
                } catch (IOException e4) {
                    e = e4;
                    throw new IOException("Failed to parse digest record #".concat(String.valueOf(i6)), e);
                } catch (BufferUnderflowException e5) {
                    e = e5;
                    throw new IOException("Failed to parse digest record #".concat(String.valueOf(i6)), e);
                }
            }
            if (!arrayList.equals(arrayList2)) {
                throw new SecurityException("Signature algorithms don't match between digests and signatures records");
            }
            int a7 = f.a(i3);
            byte[] put = map.put(Integer.valueOf(a7), bArr);
            if (put != null && !MessageDigest.isEqual(put, bArr)) {
                throw new SecurityException(awf.ad(new StringBuilder(), f.b(a7), " contents digest does not match the digest specified by a preceding signer"));
            }
            ByteBuffer a8 = f.a(a2);
            ArrayList arrayList3 = new ArrayList();
            int i8 = 0;
            while (a8.hasRemaining()) {
                i8++;
                byte[] b3 = f.b(a8);
                try {
                    arrayList3.add(new p((X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(b3)), b3));
                } catch (CertificateException e6) {
                    throw new SecurityException("Failed to decode certificate #".concat(String.valueOf(i8)), e6);
                }
            }
            if (arrayList3.isEmpty()) {
                throw new SecurityException("No certificates listed");
            }
            if (!Arrays.equals(b2, ((X509Certificate) arrayList3.get(0)).getPublicKey().getEncoded())) {
                throw new SecurityException("Public key mismatch between certificate and signature record");
            }
            if (a2.getInt() != i) {
                throw new SecurityException("minSdkVersion mismatch between signed and unsigned in v3 signer block.");
            }
            if (a2.getInt() == i2) {
                return a(f.a(a2), arrayList3, certificateFactory);
            }
            throw new SecurityException("maxSdkVersion mismatch between signed and unsigned in v3 signer block.");
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

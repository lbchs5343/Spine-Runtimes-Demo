package com.google.android.gms.internal.ads;

import android.util.Pair;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.ss.android.download.api.constant.BaseConstants;
import g.ars;
import g.awf;
import g.cxf;
import g.dxp;
import g.fum;
import g.gra;
import g.tn;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.security.DigestException;
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
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class zzaov {
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0048, code lost:
    
        r11 = g(r6);
        r12 = g(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0050, code lost:
    
        if (r11 == 1) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0052, code lost:
    
        if (r12 == 1) goto L141;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static X509Certificate[] a(ByteBuffer byteBuffer, HashMap hashMap, CertificateFactory certificateFactory) {
        String str;
        Pair create;
        ByteBuffer c2 = c(byteBuffer);
        ByteBuffer c3 = c(byteBuffer);
        byte[] j = j(byteBuffer);
        ArrayList arrayList = new ArrayList();
        byte[] bArr = null;
        byte[] bArr2 = null;
        int i = -1;
        int i2 = 0;
        while (c3.hasRemaining()) {
            i2++;
            try {
                ByteBuffer c4 = c(c3);
                if (c4.remaining() < 8) {
                    throw new SecurityException("Signature record too short");
                }
                int i3 = c4.getInt();
                arrayList.add(Integer.valueOf(i3));
                if (i3 != 513 && i3 != 514 && i3 != 769) {
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
                bArr2 = j(c4);
                i = i3;
            } catch (IOException e2) {
                e = e2;
                throw new SecurityException(awf.ac(i2, "Failed to parse signature record #"), e);
            } catch (BufferUnderflowException e3) {
                e = e3;
                throw new SecurityException(awf.ac(i2, "Failed to parse signature record #"), e);
            }
        }
        if (i == -1) {
            if (i2 == 0) {
                throw new SecurityException("No signatures found");
            }
            throw new SecurityException("No supported signatures found");
        }
        if (i == 513 || i == 514) {
            str = "EC";
        } else if (i != 769) {
            switch (i) {
                case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FALLBACK_SW_DEC /* 257 */:
                case MediaPlayer.MEDIA_PLAYER_OPTION_RANGE_MODE /* 258 */:
                case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME /* 259 */:
                case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_TIME /* 260 */:
                    str = "RSA";
                    break;
                default:
                    throw new IllegalArgumentException("Unknown signature algorithm: 0x".concat(String.valueOf(Long.toHexString(i))));
            }
        } else {
            str = "DSA";
        }
        if (i == 513) {
            create = Pair.create("SHA256withECDSA", null);
        } else if (i == 514) {
            create = Pair.create("SHA512withECDSA", null);
        } else if (i != 769) {
            switch (i) {
                case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FALLBACK_SW_DEC /* 257 */:
                    create = Pair.create("SHA256withRSA/PSS", new PSSParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA256, 32, 1));
                    break;
                case MediaPlayer.MEDIA_PLAYER_OPTION_RANGE_MODE /* 258 */:
                    create = Pair.create("SHA512withRSA/PSS", new PSSParameterSpec("SHA-512", "MGF1", MGF1ParameterSpec.SHA512, 64, 1));
                    break;
                case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME /* 259 */:
                    create = Pair.create("SHA256withRSA", null);
                    break;
                case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_TIME /* 260 */:
                    create = Pair.create("SHA512withRSA", null);
                    break;
                default:
                    throw new IllegalArgumentException("Unknown signature algorithm: 0x".concat(String.valueOf(Long.toHexString(i))));
            }
        } else {
            create = Pair.create("SHA256withDSA", null);
        }
        String str2 = (String) create.first;
        AlgorithmParameterSpec algorithmParameterSpec = (AlgorithmParameterSpec) create.second;
        try {
            PublicKey generatePublic = KeyFactory.getInstance(str).generatePublic(new X509EncodedKeySpec(j));
            Signature signature = Signature.getInstance(str2);
            signature.initVerify(generatePublic);
            if (algorithmParameterSpec != null) {
                signature.setParameter(algorithmParameterSpec);
            }
            signature.update(c2);
            if (!signature.verify(bArr2)) {
                throw new SecurityException(String.valueOf(str2).concat(" signature did not verify"));
            }
            c2.clear();
            ByteBuffer c5 = c(c2);
            ArrayList arrayList2 = new ArrayList();
            int i4 = 0;
            while (c5.hasRemaining()) {
                i4++;
                try {
                    ByteBuffer c6 = c(c5);
                    if (c6.remaining() < 8) {
                        throw new IOException("Record too short");
                    }
                    int i5 = c6.getInt();
                    arrayList2.add(Integer.valueOf(i5));
                    if (i5 == i) {
                        bArr = j(c6);
                    }
                } catch (IOException e4) {
                    e = e4;
                    throw new IOException(awf.ac(i4, "Failed to parse digest record #"), e);
                } catch (BufferUnderflowException e5) {
                    e = e5;
                    throw new IOException(awf.ac(i4, "Failed to parse digest record #"), e);
                }
            }
            if (!arrayList.equals(arrayList2)) {
                throw new SecurityException("Signature algorithms don't match between digests and signatures records");
            }
            int g2 = g(i);
            byte[] bArr3 = (byte[]) hashMap.put(Integer.valueOf(g2), bArr);
            if (bArr3 != null && !MessageDigest.isEqual(bArr3, bArr)) {
                throw new SecurityException(i(g2).concat(" contents digest does not match the digest specified by a preceding signer"));
            }
            ByteBuffer c7 = c(c2);
            ArrayList arrayList3 = new ArrayList();
            int i6 = 0;
            while (c7.hasRemaining()) {
                i6++;
                byte[] j2 = j(c7);
                try {
                    arrayList3.add(new ars((X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(j2)), j2));
                } catch (CertificateException e6) {
                    throw new SecurityException(awf.ac(i6, "Failed to decode certificate #"), e6);
                }
            }
            if (arrayList3.isEmpty()) {
                throw new SecurityException("No certificates listed");
            }
            if (Arrays.equals(j, ((X509Certificate) arrayList3.get(0)).getPublicKey().getEncoded())) {
                return (X509Certificate[]) arrayList3.toArray(new X509Certificate[arrayList3.size()]);
            }
            throw new SecurityException("Public key mismatch between certificate and signature record");
        } catch (InvalidAlgorithmParameterException e7) {
            e = e7;
            throw new SecurityException(tn.ad("Failed to verify ", str2, " signature"), e);
        } catch (InvalidKeyException e8) {
            e = e8;
            throw new SecurityException(tn.ad("Failed to verify ", str2, " signature"), e);
        } catch (NoSuchAlgorithmException e9) {
            e = e9;
            throw new SecurityException(tn.ad("Failed to verify ", str2, " signature"), e);
        } catch (SignatureException e10) {
            e = e10;
            throw new SecurityException(tn.ad("Failed to verify ", str2, " signature"), e);
        } catch (InvalidKeySpecException e11) {
            e = e11;
            throw new SecurityException(tn.ad("Failed to verify ", str2, " signature"), e);
        }
    }

    public static ByteBuffer b(ByteBuffer byteBuffer, int i) {
        int limit = byteBuffer.limit();
        int position = byteBuffer.position();
        int i2 = i + position;
        if (i2 < position || i2 > limit) {
            throw new BufferUnderflowException();
        }
        byteBuffer.limit(i2);
        try {
            ByteBuffer slice = byteBuffer.slice();
            slice.order(byteBuffer.order());
            byteBuffer.position(i2);
            return slice;
        } finally {
            byteBuffer.limit(limit);
        }
    }

    public static ByteBuffer c(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() < 4) {
            throw new IOException(awf.ac(byteBuffer.remaining(), "Remaining buffer too short to contain length of length-prefixed field. Remaining: "));
        }
        int i = byteBuffer.getInt();
        if (i < 0) {
            throw new IllegalArgumentException("Negative length");
        }
        if (i <= byteBuffer.remaining()) {
            return b(byteBuffer, i);
        }
        throw new IOException(tn.t(i, byteBuffer.remaining(), "Length-prefixed field longer than remaining buffer. Field length: ", ", remaining: "));
    }

    public static int d(int i) {
        if (i == 1) {
            return 32;
        }
        if (i == 2) {
            return 64;
        }
        throw new IllegalArgumentException(awf.ac(i, "Unknown content digest algorthm: "));
    }

    public static void e(int i, byte[] bArr) {
        bArr[1] = (byte) (i & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        bArr[2] = (byte) ((i >>> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        bArr[3] = (byte) ((i >>> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        bArr[4] = (byte) (i >> 24);
    }

    public static byte[][] f(int[] iArr, fum[] fumVarArr) {
        long j;
        int i;
        int length;
        int i2 = 0;
        long j2 = 0;
        while (true) {
            j = BaseConstants.MB_VALUE;
            if (i2 >= 3) {
                break;
            }
            j2 += (fumVarArr[i2].zza() + 1048575) / BaseConstants.MB_VALUE;
            i2++;
        }
        if (j2 >= 2097151) {
            throw new DigestException("Too many chunks: " + j2);
        }
        byte[][] bArr = new byte[iArr.length][];
        int i3 = 0;
        while (true) {
            length = iArr.length;
            if (i3 >= length) {
                break;
            }
            int i4 = (int) j2;
            byte[] bArr2 = new byte[(d(iArr[i3]) * i4) + 5];
            bArr2[0] = 90;
            e(i4, bArr2);
            bArr[i3] = bArr2;
            i3++;
        }
        byte[] bArr3 = new byte[5];
        bArr3[0] = -91;
        MessageDigest[] messageDigestArr = new MessageDigest[length];
        for (int i5 = 0; i5 < iArr.length; i5++) {
            String i6 = i(iArr[i5]);
            try {
                messageDigestArr[i5] = MessageDigest.getInstance(i6);
            } catch (NoSuchAlgorithmException e2) {
                throw new RuntimeException(i6.concat(" digest not supported"), e2);
            }
        }
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        for (i = 3; i7 < i; i = 3) {
            fum fumVar = fumVarArr[i7];
            int i10 = i7;
            long zza = fumVar.zza();
            long j3 = 0;
            while (zza > 0) {
                int i11 = i8;
                int min = (int) Math.min(zza, j);
                e(min, bArr3);
                for (int i12 = 0; i12 < length; i12++) {
                    messageDigestArr[i12].update(bArr3);
                }
                try {
                    fumVar.b(messageDigestArr, j3, min);
                    int i13 = 0;
                    while (i13 < iArr.length) {
                        int i14 = iArr[i13];
                        byte[] bArr4 = bArr[i13];
                        int d2 = d(i14);
                        fum fumVar2 = fumVar;
                        MessageDigest messageDigest = messageDigestArr[i13];
                        long j4 = zza;
                        int digest = messageDigest.digest(bArr4, (i11 * d2) + 5, d2);
                        if (digest != d2) {
                            throw new RuntimeException("Unexpected output size of " + messageDigest.getAlgorithm() + " digest: " + digest);
                        }
                        i13++;
                        fumVar = fumVar2;
                        zza = j4;
                    }
                    fum fumVar3 = fumVar;
                    long j5 = min;
                    j3 += j5;
                    i8 = i11 + 1;
                    zza -= j5;
                    fumVar = fumVar3;
                    j = BaseConstants.MB_VALUE;
                } catch (IOException e3) {
                    throw new DigestException(tn.t(i11, i9, "Failed to digest chunk #", " of section #"), e3);
                }
            }
            i9++;
            i7 = i10 + 1;
            j = BaseConstants.MB_VALUE;
        }
        byte[][] bArr5 = new byte[iArr.length][];
        for (int i15 = 0; i15 < iArr.length; i15++) {
            int i16 = iArr[i15];
            byte[] bArr6 = bArr[i15];
            String i17 = i(i16);
            try {
                bArr5[i15] = MessageDigest.getInstance(i17).digest(bArr6);
            } catch (NoSuchAlgorithmException e4) {
                throw new RuntimeException(i17.concat(" digest not supported"), e4);
            }
        }
        return bArr5;
    }

    public static int g(int i) {
        if (i == 513) {
            return 1;
        }
        if (i == 514) {
            return 2;
        }
        if (i == 769) {
            return 1;
        }
        switch (i) {
            case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FALLBACK_SW_DEC /* 257 */:
            case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME /* 259 */:
                return 1;
            case MediaPlayer.MEDIA_PLAYER_OPTION_RANGE_MODE /* 258 */:
            case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_TIME /* 260 */:
                return 2;
            default:
                throw new IllegalArgumentException("Unknown signature algorithm: 0x".concat(String.valueOf(Long.toHexString(i))));
        }
    }

    public static X509Certificate[][] h(FileChannel fileChannel, dxp dxpVar) {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            try {
                ByteBuffer c2 = c((ByteBuffer) dxpVar.f15028a);
                int i = 0;
                while (c2.hasRemaining()) {
                    i++;
                    try {
                        arrayList.add(a(c(c2), hashMap, certificateFactory));
                    } catch (IOException | SecurityException | BufferUnderflowException e2) {
                        throw new SecurityException(awf.b(i, "Failed to parse/verify signer #", " block"), e2);
                    }
                }
                if (i <= 0) {
                    throw new SecurityException("No signers found");
                }
                if (hashMap.isEmpty()) {
                    throw new SecurityException("No content digests found");
                }
                long j = dxpVar.f15030c;
                long j2 = dxpVar.f15031d;
                long j3 = dxpVar.f15032e;
                ByteBuffer byteBuffer = (ByteBuffer) dxpVar.f15029b;
                if (hashMap.isEmpty()) {
                    throw new SecurityException("No digests provided");
                }
                gra graVar = new gra(fileChannel, 0L, j);
                gra graVar2 = new gra(fileChannel, j2, j3 - j2);
                ByteBuffer duplicate = byteBuffer.duplicate();
                duplicate.order(ByteOrder.LITTLE_ENDIAN);
                zzaow.zzd(duplicate, j);
                cxf cxfVar = new cxf(duplicate, 1);
                int size = hashMap.size();
                int[] iArr = new int[size];
                Iterator it = hashMap.keySet().iterator();
                int i2 = 0;
                while (it.hasNext()) {
                    iArr[i2] = ((Integer) it.next()).intValue();
                    i2++;
                }
                try {
                    byte[][] f2 = f(iArr, new fum[]{graVar, graVar2, cxfVar});
                    for (int i3 = 0; i3 < size; i3++) {
                        int i4 = iArr[i3];
                        if (!MessageDigest.isEqual((byte[]) hashMap.get(Integer.valueOf(i4)), f2[i3])) {
                            throw new SecurityException(i(i4).concat(" digest of contents did not verify"));
                        }
                    }
                    return (X509Certificate[][]) arrayList.toArray(new X509Certificate[arrayList.size()][]);
                } catch (DigestException e3) {
                    throw new SecurityException("Failed to compute digest(s) of contents", e3);
                }
            } catch (IOException e4) {
                throw new SecurityException("Failed to read list of signers", e4);
            }
        } catch (CertificateException e5) {
            throw new RuntimeException("Failed to obtain X.509 CertificateFactory", e5);
        }
    }

    public static String i(int i) {
        if (i == 1) {
            return "SHA-256";
        }
        if (i == 2) {
            return "SHA-512";
        }
        throw new IllegalArgumentException(awf.ac(i, "Unknown content digest algorthm: "));
    }

    public static byte[] j(ByteBuffer byteBuffer) {
        int i = byteBuffer.getInt();
        if (i < 0) {
            throw new IOException("Negative length");
        }
        if (i > byteBuffer.remaining()) {
            throw new IOException(tn.t(i, byteBuffer.remaining(), "Underflow while reading length-prefixed value. Length: ", ", available: "));
        }
        byte[] bArr = new byte[i];
        byteBuffer.get(bArr);
        return bArr;
    }

    public static X509Certificate[][] zza(String str) throws zzaor, SecurityException, IOException {
        RandomAccessFile randomAccessFile;
        Pair a2;
        RandomAccessFile randomAccessFile2 = new RandomAccessFile(str, "r");
        try {
            int i = 0;
            if (randomAccessFile2.length() < 22) {
                a2 = null;
            } else {
                a2 = zzaow.a(randomAccessFile2, 0);
                if (a2 == null) {
                    a2 = zzaow.a(randomAccessFile2, 65535);
                }
            }
            try {
                if (a2 == null) {
                    throw new zzaor("Not an APK file: ZIP End of Central Directory record not found in file with " + randomAccessFile2.length() + " bytes");
                }
                ByteBuffer byteBuffer = (ByteBuffer) a2.first;
                long longValue = ((Long) a2.second).longValue();
                long j = longValue - 20;
                if (j >= 0) {
                    randomAccessFile2.seek(j);
                    if (randomAccessFile2.readInt() == 1347094023) {
                        throw new zzaor("ZIP64 APK not supported");
                    }
                }
                long zza = zzaow.zza(byteBuffer);
                if (zza >= longValue) {
                    throw new zzaor("ZIP Central Directory offset out of range: " + zza + ". ZIP End of Central Directory offset: " + longValue);
                }
                if (zza + zzaow.zzb(byteBuffer) != longValue) {
                    throw new zzaor("ZIP Central Directory is not immediately followed by End of Central Directory");
                }
                if (zza < 32) {
                    throw new zzaor("APK too small for APK Signing Block. ZIP Central Directory offset: " + zza);
                }
                ByteBuffer allocate = ByteBuffer.allocate(24);
                ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                allocate.order(byteOrder);
                randomAccessFile2.seek(zza - allocate.capacity());
                randomAccessFile2.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
                if (allocate.getLong(8) != 2334950737559900225L || allocate.getLong(16) != 3617552046287187010L) {
                    throw new zzaor("No APK Signing Block before ZIP Central Directory");
                }
                long j2 = allocate.getLong(0);
                if (j2 < allocate.capacity() || j2 > 2147483639) {
                    throw new zzaor("APK Signing Block size out of range: " + j2);
                }
                int i2 = (int) (8 + j2);
                long j3 = zza - i2;
                if (j3 < 0) {
                    throw new zzaor("APK Signing Block offset out of range: " + j3);
                }
                ByteBuffer allocate2 = ByteBuffer.allocate(i2);
                allocate2.order(byteOrder);
                randomAccessFile2.seek(j3);
                randomAccessFile2.readFully(allocate2.array(), allocate2.arrayOffset(), allocate2.capacity());
                randomAccessFile = randomAccessFile2;
                long j4 = allocate2.getLong(0);
                if (j4 != j2) {
                    throw new zzaor("APK Signing Block sizes in header and footer do not match: " + j4 + " vs " + j2);
                }
                Pair create = Pair.create(allocate2, Long.valueOf(j3));
                ByteBuffer byteBuffer2 = (ByteBuffer) create.first;
                long longValue2 = ((Long) create.second).longValue();
                if (byteBuffer2.order() != byteOrder) {
                    throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
                }
                int capacity = byteBuffer2.capacity() - 24;
                if (capacity < 8) {
                    throw new IllegalArgumentException("end < start: " + capacity + " < 8");
                }
                int capacity2 = byteBuffer2.capacity();
                if (capacity > byteBuffer2.capacity()) {
                    throw new IllegalArgumentException("end > capacity: " + capacity + " > " + capacity2);
                }
                int limit = byteBuffer2.limit();
                int position = byteBuffer2.position();
                try {
                    byteBuffer2.position(0);
                    byteBuffer2.limit(capacity);
                    byteBuffer2.position(8);
                    ByteBuffer slice = byteBuffer2.slice();
                    slice.order(byteBuffer2.order());
                    while (slice.hasRemaining()) {
                        i++;
                        if (slice.remaining() < 8) {
                            throw new zzaor("Insufficient data to read size of APK Signing Block entry #" + i);
                        }
                        long j5 = slice.getLong();
                        if (j5 < 4 || j5 > 2147483647L) {
                            throw new zzaor("APK Signing Block entry #" + i + " size out of range: " + j5);
                        }
                        int i3 = (int) j5;
                        int position2 = slice.position() + i3;
                        if (i3 > slice.remaining()) {
                            throw new zzaor("APK Signing Block entry #" + i + " size out of range: " + i3 + ", available: " + slice.remaining());
                        }
                        if (slice.getInt() == 1896449818) {
                            X509Certificate[][] h = h(randomAccessFile.getChannel(), new dxp(b(slice, i3 - 4), longValue2, zza, longValue, byteBuffer));
                            randomAccessFile.close();
                            try {
                                randomAccessFile.close();
                            } catch (IOException unused) {
                            }
                            return h;
                        }
                        long j6 = zza;
                        long j7 = longValue;
                        slice.position(position2);
                        longValue = j7;
                        zza = j6;
                    }
                    throw new zzaor("No APK Signature Scheme v2 block in APK Signing Block");
                } finally {
                    byteBuffer2.position(0);
                    byteBuffer2.limit(limit);
                    byteBuffer2.position(position);
                }
            } catch (Throwable th) {
                th = th;
                try {
                    randomAccessFile.close();
                } catch (IOException unused2) {
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = randomAccessFile2;
        }
    }
}

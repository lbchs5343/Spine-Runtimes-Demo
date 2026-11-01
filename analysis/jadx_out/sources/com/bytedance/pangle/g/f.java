package com.bytedance.pangle.g;

import android.util.ArrayMap;
import android.util.Pair;
import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.ss.android.download.api.constant.BaseConstants;
import g.awf;
import g.tn;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.DigestException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
final class f {

    /* renamed from: a, reason: collision with root package name */
    static final HashMap<String, SparseArray<m>> f1430a = new HashMap<>();

    public static class a implements j {

        /* renamed from: a, reason: collision with root package name */
        private final MessageDigest[] f1431a;

        public a(MessageDigest[] messageDigestArr) {
            this.f1431a = messageDigestArr;
        }

        @Override // com.bytedance.pangle.g.j
        public final void a(ByteBuffer byteBuffer) {
            ByteBuffer slice = byteBuffer.slice();
            for (MessageDigest messageDigest : this.f1431a) {
                slice.position(0);
                messageDigest.update(slice);
            }
        }
    }

    public static int a(int i) {
        if (i == 513) {
            return 1;
        }
        if (i == 514) {
            return 2;
        }
        if (i == 769) {
            return 1;
        }
        if (i == 1057 || i == 1059 || i == 1061) {
            return 3;
        }
        switch (i) {
            case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FALLBACK_SW_DEC /* 257 */:
            case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME /* 259 */:
                return 1;
            case MediaPlayer.MEDIA_PLAYER_OPTION_RANGE_MODE /* 258 */:
            case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_TIME /* 260 */:
                return 2;
            default:
                throw new IllegalArgumentException("Unknown signature algorithm: 0x" + Long.toHexString(i));
        }
    }

    public static int a(int i, int i2) {
        int a2 = a(i);
        int a3 = a(i2);
        if (a2 == 1) {
            if (a3 == 1) {
                return 0;
            }
            if (a3 == 2 || a3 == 3) {
                return -1;
            }
            throw new IllegalArgumentException("Unknown digestAlgorithm2: ".concat(String.valueOf(a3)));
        }
        if (a2 == 2) {
            if (a3 != 1) {
                if (a3 == 2) {
                    return 0;
                }
                if (a3 != 3) {
                    throw new IllegalArgumentException("Unknown digestAlgorithm2: ".concat(String.valueOf(a3)));
                }
            }
            return 1;
        }
        if (a2 != 3) {
            throw new IllegalArgumentException("Unknown digestAlgorithm1: ".concat(String.valueOf(a2)));
        }
        if (a3 == 1) {
            return 1;
        }
        if (a3 == 2) {
            return -1;
        }
        if (a3 == 3) {
            return 0;
        }
        throw new IllegalArgumentException("Unknown digestAlgorithm2: ".concat(String.valueOf(a3)));
    }

    public static ByteBuffer a(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() < 4) {
            throw new IOException("Remaining buffer too short to contain length of length-prefixed field. Remaining: " + byteBuffer.remaining());
        }
        int i = byteBuffer.getInt();
        if (i < 0) {
            throw new IllegalArgumentException("Negative length");
        }
        if (i <= byteBuffer.remaining()) {
            return b(byteBuffer, i);
        }
        StringBuilder z = tn.z(i, "Length-prefixed field longer than remaining buffer. Field length: ", ", remaining: ");
        z.append(byteBuffer.remaining());
        throw new IOException(z.toString());
    }

    private static ByteBuffer a(ByteBuffer byteBuffer, int i) {
        if (i < 8) {
            throw new IllegalArgumentException(awf.b(i, "end < start: ", " < 8"));
        }
        int capacity = byteBuffer.capacity();
        if (i > byteBuffer.capacity()) {
            throw new IllegalArgumentException(tn.t(i, capacity, "end > capacity: ", " > "));
        }
        int limit = byteBuffer.limit();
        int position = byteBuffer.position();
        try {
            byteBuffer.position(0);
            byteBuffer.limit(i);
            byteBuffer.position(8);
            ByteBuffer slice = byteBuffer.slice();
            slice.order(byteBuffer.order());
            return slice;
        } finally {
            byteBuffer.position(0);
            byteBuffer.limit(limit);
            byteBuffer.position(position);
        }
    }

    private static void a(int i, byte[] bArr) {
        bArr[1] = (byte) (i & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        bArr[2] = (byte) ((i >>> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        bArr[3] = (byte) ((i >>> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        bArr[4] = (byte) ((i >>> 24) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
    }

    public static void a(String str, RandomAccessFile randomAccessFile, int... iArr) {
        Pair<ByteBuffer, Long> a2;
        long j;
        f1430a.put(str, new SparseArray<>());
        Pair pair = null;
        if (randomAccessFile.length() < 22) {
            a2 = null;
        } else {
            a2 = s.a(randomAccessFile, 0);
            if (a2 == null) {
                a2 = s.a(randomAccessFile, 65535);
            }
        }
        if (a2 == null) {
            throw new n("Not an APK file: ZIP End of Central Directory record not found");
        }
        ByteBuffer byteBuffer = (ByteBuffer) a2.first;
        long longValue = ((Long) a2.second).longValue();
        long j2 = longValue - 20;
        if (j2 >= 0) {
            randomAccessFile.seek(j2);
            if (randomAccessFile.readInt() == 1347094023) {
                throw new n("ZIP64 APK not supported");
            }
        }
        s.a(byteBuffer);
        long a3 = s.a(byteBuffer, byteBuffer.position() + 16);
        if (a3 > longValue) {
            StringBuilder l = awf.l(a3, "ZIP Central Directory offset out of range: ", ". ZIP End of Central Directory offset: ");
            l.append(longValue);
            throw new n(l.toString());
        }
        s.a(byteBuffer);
        if (s.a(byteBuffer, byteBuffer.position() + 12) + a3 != longValue) {
            throw new n("ZIP Central Directory is not immediately followed by End of Central Directory");
        }
        if (a3 < 32) {
            throw new n("APK too small for APK Signing Block. ZIP Central Directory offset: ".concat(String.valueOf(a3)));
        }
        ByteBuffer allocate = ByteBuffer.allocate(24);
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        allocate.order(byteOrder);
        randomAccessFile.seek(a3 - allocate.capacity());
        randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
        if (allocate.getLong(8) == 2334950737559900225L && allocate.getLong(16) == 3617552046287187010L) {
            long j3 = allocate.getLong(0);
            if (j3 < allocate.capacity() || j3 > 2147483639) {
                throw new n("APK Signing Block size out of range: ".concat(String.valueOf(j3)));
            }
            int i = (int) (8 + j3);
            long j4 = a3 - i;
            if (j4 < 0) {
                throw new n("APK Signing Block offset out of range: ".concat(String.valueOf(j4)));
            }
            ByteBuffer allocate2 = ByteBuffer.allocate(i);
            allocate2.order(byteOrder);
            randomAccessFile.seek(j4);
            randomAccessFile.readFully(allocate2.array(), allocate2.arrayOffset(), allocate2.capacity());
            long j5 = allocate2.getLong(0);
            if (j5 != j3) {
                StringBuilder l2 = awf.l(j5, "APK Signing Block sizes in header and footer do not match: ", " vs ");
                l2.append(j3);
                throw new n(l2.toString());
            }
            pair = Pair.create(allocate2, Long.valueOf(j4));
        }
        if (pair == null) {
            return;
        }
        ByteBuffer byteBuffer2 = (ByteBuffer) pair.first;
        long longValue2 = ((Long) pair.second).longValue();
        if (byteBuffer2.order() != byteOrder) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
        ByteBuffer a4 = a(byteBuffer2, byteBuffer2.capacity() - 24);
        HashSet hashSet = new HashSet();
        for (int i2 = 0; i2 < 2; i2++) {
            hashSet.add(Integer.valueOf(iArr[i2]));
        }
        while (a4.hasRemaining() && a4.remaining() >= 8) {
            long j6 = a4.getLong();
            if (j6 < 4 || j6 > 2147483647L) {
                return;
            }
            int i3 = (int) j6;
            int position = a4.position() + i3;
            if (i3 > a4.remaining()) {
                return;
            }
            int i4 = a4.getInt();
            if (hashSet.contains(Integer.valueOf(i4))) {
                j = longValue2;
                f1430a.get(str).put(i4, new m(b(a4, i3 - 4), j, a3, longValue, byteBuffer));
            } else {
                j = longValue2;
            }
            a4.position(position);
            longValue2 = j;
        }
    }

    private static void a(Map<Integer, byte[]> map, FileDescriptor fileDescriptor, m mVar) {
        l lVar = new l(fileDescriptor, 0L, mVar.f1446b);
        long j = mVar.f1447c;
        l lVar2 = new l(fileDescriptor, j, mVar.f1448d - j);
        ByteBuffer duplicate = mVar.f1449e.duplicate();
        duplicate.order(ByteOrder.LITTLE_ENDIAN);
        long j2 = mVar.f1446b;
        s.a(duplicate);
        int position = duplicate.position() + 16;
        if (j2 < 0 || j2 > 4294967295L) {
            throw new IllegalArgumentException("uint32 value of out range: ".concat(String.valueOf(j2)));
        }
        duplicate.putInt(duplicate.position() + position, (int) j2);
        h hVar = new h(duplicate);
        int size = map.size();
        int[] iArr = new int[size];
        Iterator<Integer> it = map.keySet().iterator();
        int i = 0;
        while (it.hasNext()) {
            iArr[i] = it.next().intValue();
            i++;
        }
        try {
            byte[][] a2 = a(iArr, new k[]{lVar, lVar2, hVar});
            for (int i2 = 0; i2 < size; i2++) {
                int i3 = iArr[i2];
                if (!MessageDigest.isEqual(map.get(Integer.valueOf(i3)), a2[i2])) {
                    throw new SecurityException(awf.ad(new StringBuilder(), b(i3), " digest of contents did not verify"));
                }
            }
        } catch (DigestException e2) {
            throw new SecurityException("Failed to compute digest(s) of contents", e2);
        }
    }

    public static void a(Map<Integer, byte[]> map, RandomAccessFile randomAccessFile, m mVar) {
        boolean z = true;
        if (map.isEmpty()) {
            throw new SecurityException("No digests provided");
        }
        ArrayMap arrayMap = new ArrayMap();
        if (map.containsKey(1)) {
            arrayMap.put(1, map.get(1));
        }
        if (map.containsKey(2)) {
            arrayMap.put(2, map.get(2));
        }
        boolean z2 = false;
        if (!arrayMap.isEmpty()) {
            try {
                a(arrayMap, randomAccessFile.getFD(), mVar);
                z = false;
            } catch (IOException e2) {
                throw new SecurityException("Cannot get FD", e2);
            }
        }
        if (map.containsKey(3)) {
            try {
                if (!Arrays.equals(a(map.get(3), randomAccessFile.length(), mVar), g.a(randomAccessFile, mVar, new i() { // from class: com.bytedance.pangle.g.f.1
                    @Override // com.bytedance.pangle.g.i
                    public final ByteBuffer a(int i) {
                        return ByteBuffer.allocate(i);
                    }
                }).f1434b)) {
                    throw new SecurityException("APK verity digest of contents did not verify");
                }
            } catch (IOException | DigestException | NoSuchAlgorithmException e3) {
                throw new SecurityException("Error during verification", e3);
            }
        } else {
            z2 = z;
        }
        if (z2) {
            throw new SecurityException("No known digest exists for integrity check");
        }
    }

    public static byte[] a(byte[] bArr, long j, m mVar) {
        if (bArr.length != 40) {
            throw new SecurityException("Verity digest size is wrong: " + bArr.length);
        }
        ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
        order.position(32);
        if (order.getLong() == j - (mVar.f1447c - mVar.f1446b)) {
            return Arrays.copyOfRange(bArr, 0, 32);
        }
        throw new SecurityException("APK content size did not verify");
    }

    private static byte[][] a(int[] iArr, k[] kVarArr) {
        long j;
        int i;
        int i2 = 0;
        long j2 = 0;
        while (true) {
            j = BaseConstants.MB_VALUE;
            if (i2 >= 3) {
                break;
            }
            j2 += (kVarArr[i2].a() + 1048575) / BaseConstants.MB_VALUE;
            i2++;
        }
        if (j2 >= 2097151) {
            throw new DigestException("Too many chunks: ".concat(String.valueOf(j2)));
        }
        int i3 = (int) j2;
        byte[][] bArr = new byte[iArr.length][];
        for (int i4 = 0; i4 < iArr.length; i4++) {
            byte[] bArr2 = new byte[(e(iArr[i4]) * i3) + 5];
            bArr2[0] = 90;
            a(i3, bArr2);
            bArr[i4] = bArr2;
        }
        byte[] bArr3 = new byte[5];
        bArr3[0] = -91;
        int length = iArr.length;
        MessageDigest[] messageDigestArr = new MessageDigest[length];
        for (int i5 = 0; i5 < iArr.length; i5++) {
            String b2 = b(iArr[i5]);
            try {
                messageDigestArr[i5] = MessageDigest.getInstance(b2);
            } catch (NoSuchAlgorithmException e2) {
                throw new RuntimeException(awf.c(b2, " digest not supported"), e2);
            }
        }
        a aVar = new a(messageDigestArr);
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        for (i = 3; i6 < i; i = 3) {
            k kVar = kVarArr[i6];
            MessageDigest[] messageDigestArr2 = messageDigestArr;
            long a2 = kVar.a();
            int i9 = i8;
            long j3 = 0;
            while (a2 > 0) {
                a aVar2 = aVar;
                int min = (int) Math.min(a2, j);
                a(min, bArr3);
                for (int i10 = 0; i10 < length; i10++) {
                    messageDigestArr2[i10].update(bArr3);
                }
                long j4 = j3;
                a aVar3 = aVar2;
                try {
                    kVar.a(aVar3, j4, min);
                    k kVar2 = kVar;
                    int i11 = 0;
                    while (i11 < iArr.length) {
                        int i12 = iArr[i11];
                        byte[] bArr4 = bArr[i11];
                        a aVar4 = aVar3;
                        int e3 = e(i12);
                        byte[] bArr5 = bArr3;
                        MessageDigest messageDigest = messageDigestArr2[i11];
                        byte[][] bArr6 = bArr;
                        int digest = messageDigest.digest(bArr4, (i9 * e3) + 5, e3);
                        if (digest != e3) {
                            throw new RuntimeException("Unexpected output size of " + messageDigest.getAlgorithm() + " digest: " + digest);
                        }
                        i11++;
                        bArr3 = bArr5;
                        aVar3 = aVar4;
                        bArr = bArr6;
                    }
                    a aVar5 = aVar3;
                    long j5 = min;
                    a2 -= j5;
                    i9++;
                    j3 = j4 + j5;
                    kVar = kVar2;
                    bArr3 = bArr3;
                    aVar = aVar5;
                    j = BaseConstants.MB_VALUE;
                } catch (IOException e4) {
                    throw new DigestException(tn.t(i9, i7, "Failed to digest chunk #", " of section #"), e4);
                }
            }
            i7++;
            i6++;
            i8 = i9;
            messageDigestArr = messageDigestArr2;
            j = BaseConstants.MB_VALUE;
        }
        byte[][] bArr7 = bArr;
        byte[][] bArr8 = new byte[iArr.length][];
        for (int i13 = 0; i13 < iArr.length; i13++) {
            int i14 = iArr[i13];
            byte[] bArr9 = bArr7[i13];
            String b3 = b(i14);
            try {
                bArr8[i13] = MessageDigest.getInstance(b3).digest(bArr9);
            } catch (NoSuchAlgorithmException e5) {
                throw new RuntimeException(awf.c(b3, " digest not supported"), e5);
            }
        }
        return bArr8;
    }

    public static String b(int i) {
        if (i == 1) {
            return "SHA-256";
        }
        if (i == 2) {
            return "SHA-512";
        }
        if (i == 3) {
            return "SHA-256";
        }
        throw new IllegalArgumentException("Unknown content digest algorthm: ".concat(String.valueOf(i)));
    }

    private static ByteBuffer b(ByteBuffer byteBuffer, int i) {
        if (i < 0) {
            throw new IllegalArgumentException("size: ".concat(String.valueOf(i)));
        }
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

    public static byte[] b(ByteBuffer byteBuffer) {
        int i = byteBuffer.getInt();
        if (i < 0) {
            throw new IOException("Negative length");
        }
        if (i <= byteBuffer.remaining()) {
            byte[] bArr = new byte[i];
            byteBuffer.get(bArr);
            return bArr;
        }
        StringBuilder z = tn.z(i, "Underflow while reading length-prefixed value. Length: ", ", available: ");
        z.append(byteBuffer.remaining());
        throw new IOException(z.toString());
    }

    public static String c(int i) {
        if (i == 513 || i == 514) {
            return "EC";
        }
        if (i == 769) {
            return "DSA";
        }
        if (i == 1057) {
            return "RSA";
        }
        if (i == 1059) {
            return "EC";
        }
        if (i == 1061) {
            return "DSA";
        }
        switch (i) {
            case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FALLBACK_SW_DEC /* 257 */:
            case MediaPlayer.MEDIA_PLAYER_OPTION_RANGE_MODE /* 258 */:
            case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME /* 259 */:
            case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_TIME /* 260 */:
                return "RSA";
            default:
                throw new IllegalArgumentException("Unknown signature algorithm: 0x" + Long.toHexString(i));
        }
    }

    public static Pair<String, ? extends AlgorithmParameterSpec> d(int i) {
        if (i != 513) {
            if (i == 514) {
                return Pair.create("SHA512withECDSA", null);
            }
            if (i != 769) {
                if (i != 1057) {
                    if (i != 1059) {
                        if (i != 1061) {
                            switch (i) {
                                case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FALLBACK_SW_DEC /* 257 */:
                                    return Pair.create("SHA256withRSA/PSS", new PSSParameterSpec("SHA-256", "MGF1", MGF1ParameterSpec.SHA256, 32, 1));
                                case MediaPlayer.MEDIA_PLAYER_OPTION_RANGE_MODE /* 258 */:
                                    return Pair.create("SHA512withRSA/PSS", new PSSParameterSpec("SHA-512", "MGF1", MGF1ParameterSpec.SHA512, 64, 1));
                                case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME /* 259 */:
                                    break;
                                case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_TIME /* 260 */:
                                    return Pair.create("SHA512withRSA", null);
                                default:
                                    throw new IllegalArgumentException("Unknown signature algorithm: 0x" + Long.toHexString(i));
                            }
                        }
                    }
                }
                return Pair.create("SHA256withRSA", null);
            }
            return Pair.create("SHA256withDSA", null);
        }
        return Pair.create("SHA256withECDSA", null);
    }

    private static int e(int i) {
        if (i == 1) {
            return 32;
        }
        if (i == 2) {
            return 64;
        }
        if (i == 3) {
            return 32;
        }
        throw new IllegalArgumentException("Unknown content digest algorthm: ".concat(String.valueOf(i)));
    }
}

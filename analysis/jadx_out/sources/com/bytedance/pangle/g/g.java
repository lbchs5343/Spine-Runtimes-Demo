package com.bytedance.pangle.g;

import java.io.FileDescriptor;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import java.util.ArrayList;

/* loaded from: classes.dex */
abstract class g {

    /* renamed from: a, reason: collision with root package name */
    private static final byte[] f1432a = new byte[8];

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final ByteBuffer f1433a;

        /* renamed from: b, reason: collision with root package name */
        public final byte[] f1434b;

        public a(ByteBuffer byteBuffer, byte[] bArr) {
            this.f1433a = byteBuffer;
            this.f1434b = bArr;
        }
    }

    public static class b implements j {

        /* renamed from: a, reason: collision with root package name */
        private int f1435a;

        /* renamed from: b, reason: collision with root package name */
        private final ByteBuffer f1436b;

        /* renamed from: c, reason: collision with root package name */
        private final MessageDigest f1437c;

        /* renamed from: d, reason: collision with root package name */
        private final byte[] f1438d;

        /* renamed from: e, reason: collision with root package name */
        private final byte[] f1439e;

        private b(byte[] bArr, ByteBuffer byteBuffer) {
            this.f1438d = new byte[32];
            this.f1439e = bArr;
            this.f1436b = byteBuffer.slice();
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            this.f1437c = messageDigest;
            messageDigest.update(bArr);
            this.f1435a = 0;
        }

        public /* synthetic */ b(byte[] bArr, ByteBuffer byteBuffer, byte b2) {
            this(bArr, byteBuffer);
        }

        public final void a() {
            if (this.f1435a == 0) {
                return;
            }
            throw new IllegalStateException("Buffer is not empty: " + this.f1435a);
        }

        @Override // com.bytedance.pangle.g.j
        public final void a(ByteBuffer byteBuffer) {
            byteBuffer.position();
            int remaining = byteBuffer.remaining();
            while (remaining > 0) {
                int min = Math.min(remaining, 4096 - this.f1435a);
                byteBuffer.limit(byteBuffer.position() + min);
                this.f1437c.update(byteBuffer);
                remaining -= min;
                int i = this.f1435a + min;
                this.f1435a = i;
                if (i == 4096) {
                    MessageDigest messageDigest = this.f1437c;
                    byte[] bArr = this.f1438d;
                    messageDigest.digest(bArr, 0, bArr.length);
                    this.f1436b.put(this.f1438d);
                    this.f1437c.update(this.f1439e);
                    this.f1435a = 0;
                }
            }
        }

        public final void b() {
            int position = this.f1436b.position() % 4096;
            if (position == 0) {
                return;
            }
            this.f1436b.put(ByteBuffer.allocate(4096 - position));
        }
    }

    public static a a(RandomAccessFile randomAccessFile, m mVar, i iVar) {
        RandomAccessFile randomAccessFile2;
        int[] a2 = a(randomAccessFile.length() - (mVar.f1447c - mVar.f1446b));
        int i = a2[a2.length - 1];
        int i2 = i + 4096;
        ByteBuffer a3 = iVar.a(i2);
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        a3.order(byteOrder);
        ByteBuffer a4 = a(a3, 0, i);
        int i3 = i + 64;
        ByteBuffer a5 = a(a3, i, i3);
        ByteBuffer a6 = a(a3, i3, i2);
        byte[] bArr = new byte[32];
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        wrap.order(byteOrder);
        long j = mVar.f1446b;
        if (j % 4096 != 0) {
            throw new IllegalArgumentException("APK Signing Block does not start at the page  boundary: " + mVar.f1446b);
        }
        long j2 = mVar.f1447c;
        if ((j2 - j) % 4096 != 0) {
            throw new IllegalArgumentException("Size of APK Signing Block is not a multiple of 4096: " + (mVar.f1447c - mVar.f1446b));
        }
        long j3 = j2 - j;
        int[] a7 = a(randomAccessFile.length() - j3);
        if (a4 != null) {
            randomAccessFile2 = randomAccessFile;
            wrap.put(a(randomAccessFile2, mVar, f1432a, a7, a4));
            wrap.flip();
        } else {
            randomAccessFile2 = randomAccessFile;
        }
        if (a5 != null) {
            a5.order(byteOrder);
            long length = randomAccessFile2.length();
            byte[] bArr2 = f1432a;
            if (bArr2.length != 8) {
                throw new IllegalArgumentException("salt is not 8 bytes long");
            }
            a5.put("TrueBrew".getBytes());
            a5.put((byte) 1);
            a5.put((byte) 0);
            a5.put((byte) 12);
            a5.put((byte) 7);
            a5.putShort((short) 1);
            a5.putShort((short) 1);
            a5.putInt(0);
            a5.putInt(0);
            a5.putLong(length);
            a5.put((byte) 2);
            a5.put((byte) 0);
            a5.put(bArr2);
            a(a5, 22);
            a5.flip();
        }
        if (a6 != null) {
            a6.order(byteOrder);
            long j4 = mVar.f1446b;
            long j5 = mVar.f1448d;
            a6.putInt(24);
            a6.putShort((short) 1);
            a(a6, 2);
            a6.putLong(j4);
            a6.putLong(j3);
            a6.putInt(20);
            a6.putShort((short) 2);
            a(a6, 2);
            a6.putLong(j5 + 16);
            a6.putInt(c(j4));
            a(a6, 4);
            a6.flip();
        }
        a3.position(a6.limit() + i3);
        a3.putInt(a6.limit() + 68);
        a3.flip();
        return new a(a3, bArr);
    }

    private static ByteBuffer a(ByteBuffer byteBuffer, int i, int i2) {
        ByteBuffer duplicate = byteBuffer.duplicate();
        duplicate.position(0);
        duplicate.limit(i2);
        duplicate.position(i);
        return duplicate.slice();
    }

    private static void a(j jVar, k kVar, int i) {
        long a2 = kVar.a();
        long j = 0;
        while (a2 > 0) {
            int min = (int) Math.min(a2, i);
            kVar.a(jVar, j, min);
            long j2 = min;
            j += j2;
            a2 -= j2;
        }
    }

    private static void a(ByteBuffer byteBuffer, int i) {
        byteBuffer.position(byteBuffer.position() + i);
    }

    private static byte[] a(RandomAccessFile randomAccessFile, m mVar, byte[] bArr, int[] iArr, ByteBuffer byteBuffer) {
        byte b2 = 0;
        b bVar = new b(bArr, a(byteBuffer, iArr[iArr.length - 2], iArr[iArr.length - 1]), b2);
        a(bVar, new l(randomAccessFile.getFD(), 0L, mVar.f1446b), 1048576);
        long j = mVar.f1448d;
        FileDescriptor fd = randomAccessFile.getFD();
        long j2 = mVar.f1447c;
        a(bVar, new l(fd, j2, (16 + j) - j2), 1048576);
        ByteBuffer order = ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN);
        order.putInt(c(mVar.f1446b));
        order.flip();
        bVar.a(order);
        long j3 = j + 20;
        a(bVar, new l(randomAccessFile.getFD(), j3, randomAccessFile.length() - j3), 1048576);
        int length = (int) (randomAccessFile.length() % 4096);
        if (length != 0) {
            bVar.a(ByteBuffer.allocate(4096 - length));
        }
        bVar.a();
        bVar.b();
        for (int length2 = iArr.length - 3; length2 >= 0; length2--) {
            int i = length2 + 1;
            ByteBuffer a2 = a(byteBuffer, iArr[i], iArr[length2 + 2]);
            ByteBuffer a3 = a(byteBuffer, iArr[length2], iArr[i]);
            h hVar = new h(a2);
            b bVar2 = new b(bArr, a3, b2);
            a(bVar2, hVar, 4096);
            bVar2.a();
            bVar2.b();
        }
        byte[] bArr2 = new byte[32];
        b bVar3 = new b(bArr, ByteBuffer.wrap(bArr2), b2);
        bVar3.a(a(byteBuffer, 0, 4096));
        bVar3.a();
        return bArr2;
    }

    private static int[] a(long j) {
        ArrayList arrayList = new ArrayList();
        do {
            j = b(j) * 32;
            arrayList.add(Long.valueOf(b(j) * 4096));
        } while (j > 4096);
        int[] iArr = new int[arrayList.size() + 1];
        int i = 0;
        iArr[0] = 0;
        while (i < arrayList.size()) {
            int i2 = i + 1;
            iArr[i2] = iArr[i] + c(((Long) arrayList.get((arrayList.size() - i) - 1)).longValue());
            i = i2;
        }
        return iArr;
    }

    private static long b(long j) {
        return (j + 4095) / 4096;
    }

    private static int c(long j) {
        int i = (int) j;
        if (i == j) {
            return i;
        }
        throw new ArithmeticException("integer overflow");
    }
}

package com.bytedance.pangle.e;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.tn;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class h implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    private final FileInputStream f1371a;

    /* renamed from: b, reason: collision with root package name */
    private a f1372b;

    /* renamed from: c, reason: collision with root package name */
    private b[] f1373c;

    /* renamed from: d, reason: collision with root package name */
    private c[] f1374d;

    /* renamed from: e, reason: collision with root package name */
    private final Map<String, c> f1375e = new HashMap();

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final byte[] f1376a;

        /* renamed from: b, reason: collision with root package name */
        public final short f1377b;

        /* renamed from: c, reason: collision with root package name */
        public final short f1378c;

        /* renamed from: d, reason: collision with root package name */
        public final int f1379d;

        /* renamed from: e, reason: collision with root package name */
        public final long f1380e;

        /* renamed from: f, reason: collision with root package name */
        public final long f1381f;

        /* renamed from: g, reason: collision with root package name */
        public final long f1382g;
        public final int h;
        public final short i;
        public final short j;
        public final short k;
        public final short l;
        public final short m;
        public final short n;

        private a(FileChannel fileChannel) {
            byte[] bArr = new byte[16];
            this.f1376a = bArr;
            fileChannel.position(0L);
            fileChannel.read(ByteBuffer.wrap(bArr));
            if (bArr[0] != Byte.MAX_VALUE || bArr[1] != 69 || bArr[2] != 76 || bArr[3] != 70) {
                throw new IOException(String.format("bad elf magic: %x %x %x %x.", Byte.valueOf(bArr[0]), Byte.valueOf(bArr[1]), Byte.valueOf(bArr[2]), Byte.valueOf(bArr[3])));
            }
            h.a(bArr[4], 2, "bad elf class: " + ((int) bArr[4]));
            h.a(bArr[5], 2, "bad elf data encoding: " + ((int) bArr[5]));
            ByteBuffer allocate = ByteBuffer.allocate(bArr[4] == 1 ? 36 : 48);
            allocate.order(bArr[5] == 1 ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN);
            h.b(fileChannel, allocate, "failed to read rest part of ehdr.");
            this.f1377b = allocate.getShort();
            this.f1378c = allocate.getShort();
            int i = allocate.getInt();
            this.f1379d = i;
            h.a(i, 1, "bad elf version: " + i);
            byte b2 = bArr[4];
            if (b2 == 1) {
                this.f1380e = allocate.getInt();
                this.f1381f = allocate.getInt();
                this.f1382g = allocate.getInt();
            } else {
                if (b2 != 2) {
                    throw new IOException("Unexpected elf class: " + ((int) bArr[4]));
                }
                this.f1380e = allocate.getLong();
                this.f1381f = allocate.getLong();
                this.f1382g = allocate.getLong();
            }
            this.h = allocate.getInt();
            this.i = allocate.getShort();
            this.j = allocate.getShort();
            this.k = allocate.getShort();
            this.l = allocate.getShort();
            this.m = allocate.getShort();
            this.n = allocate.getShort();
        }

        public /* synthetic */ a(FileChannel fileChannel, byte b2) {
            this(fileChannel);
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final int f1383a;

        /* renamed from: b, reason: collision with root package name */
        public final int f1384b;

        /* renamed from: c, reason: collision with root package name */
        public final long f1385c;

        /* renamed from: d, reason: collision with root package name */
        public final long f1386d;

        /* renamed from: e, reason: collision with root package name */
        public final long f1387e;

        /* renamed from: f, reason: collision with root package name */
        public final long f1388f;

        /* renamed from: g, reason: collision with root package name */
        public final long f1389g;
        public final long h;

        private b(ByteBuffer byteBuffer, int i) {
            if (i == 1) {
                this.f1383a = byteBuffer.getInt();
                this.f1385c = byteBuffer.getInt();
                this.f1386d = byteBuffer.getInt();
                this.f1387e = byteBuffer.getInt();
                this.f1388f = byteBuffer.getInt();
                this.f1389g = byteBuffer.getInt();
                this.f1384b = byteBuffer.getInt();
                this.h = byteBuffer.getInt();
                return;
            }
            if (i != 2) {
                throw new IOException("Unexpected elf class: ".concat(String.valueOf(i)));
            }
            this.f1383a = byteBuffer.getInt();
            this.f1384b = byteBuffer.getInt();
            this.f1385c = byteBuffer.getLong();
            this.f1386d = byteBuffer.getLong();
            this.f1387e = byteBuffer.getLong();
            this.f1388f = byteBuffer.getLong();
            this.f1389g = byteBuffer.getLong();
            this.h = byteBuffer.getLong();
        }

        public /* synthetic */ b(ByteBuffer byteBuffer, int i, byte b2) {
            this(byteBuffer, i);
        }
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public final int f1390a;

        /* renamed from: b, reason: collision with root package name */
        public final int f1391b;

        /* renamed from: c, reason: collision with root package name */
        public final long f1392c;

        /* renamed from: d, reason: collision with root package name */
        public final long f1393d;

        /* renamed from: e, reason: collision with root package name */
        public final long f1394e;

        /* renamed from: f, reason: collision with root package name */
        public final long f1395f;

        /* renamed from: g, reason: collision with root package name */
        public final int f1396g;
        public final int h;
        public final long i;
        public final long j;
        public String k;

        private c(ByteBuffer byteBuffer, int i) {
            if (i == 1) {
                this.f1390a = byteBuffer.getInt();
                this.f1391b = byteBuffer.getInt();
                this.f1392c = byteBuffer.getInt();
                this.f1393d = byteBuffer.getInt();
                this.f1394e = byteBuffer.getInt();
                this.f1395f = byteBuffer.getInt();
                this.f1396g = byteBuffer.getInt();
                this.h = byteBuffer.getInt();
                this.i = byteBuffer.getInt();
                this.j = byteBuffer.getInt();
            } else {
                if (i != 2) {
                    throw new IOException("Unexpected elf class: ".concat(String.valueOf(i)));
                }
                this.f1390a = byteBuffer.getInt();
                this.f1391b = byteBuffer.getInt();
                this.f1392c = byteBuffer.getLong();
                this.f1393d = byteBuffer.getLong();
                this.f1394e = byteBuffer.getLong();
                this.f1395f = byteBuffer.getLong();
                this.f1396g = byteBuffer.getInt();
                this.h = byteBuffer.getInt();
                this.i = byteBuffer.getLong();
                this.j = byteBuffer.getLong();
            }
            this.k = null;
        }

        public /* synthetic */ c(ByteBuffer byteBuffer, int i, byte b2) {
            this(byteBuffer, i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private h(File file) {
        c[] cVarArr;
        this.f1372b = null;
        this.f1373c = null;
        this.f1374d = null;
        FileInputStream fileInputStream = new FileInputStream(file);
        this.f1371a = fileInputStream;
        FileChannel channel = fileInputStream.getChannel();
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        this.f1372b = new a(channel, 0 == true ? 1 : 0);
        ByteBuffer allocate = ByteBuffer.allocate(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
        allocate.limit(this.f1372b.j);
        allocate.order(this.f1372b.f1376a[5] == 1 ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN);
        channel.position(this.f1372b.f1381f);
        this.f1373c = new b[this.f1372b.k];
        for (int i = 0; i < this.f1373c.length; i++) {
            b(channel, allocate, "failed to read phdr.");
            this.f1373c[i] = new b(allocate, this.f1372b.f1376a[4], objArr2 == true ? 1 : 0);
        }
        channel.position(this.f1372b.f1382g);
        allocate.limit(this.f1372b.l);
        this.f1374d = new c[this.f1372b.m];
        int i2 = 0;
        while (true) {
            cVarArr = this.f1374d;
            if (i2 >= cVarArr.length) {
                break;
            }
            b(channel, allocate, "failed to read shdr.");
            this.f1374d[i2] = new c(allocate, this.f1372b.f1376a[4], objArr == true ? 1 : 0);
            i2++;
        }
        short s = this.f1372b.n;
        if (s > 0) {
            c cVar = cVarArr[s];
            ByteBuffer allocate2 = ByteBuffer.allocate((int) cVar.f1395f);
            this.f1371a.getChannel().position(cVar.f1394e);
            b(this.f1371a.getChannel(), allocate2, "failed to read section: " + cVar.k);
            for (c cVar2 : this.f1374d) {
                allocate2.position(cVar2.f1390a);
                String a2 = a(allocate2);
                cVar2.k = a2;
                this.f1375e.put(a2, cVar2);
            }
        }
    }

    private static String a(ByteBuffer byteBuffer) {
        byte[] array = byteBuffer.array();
        int position = byteBuffer.position();
        while (byteBuffer.hasRemaining() && array[byteBuffer.position()] != 0) {
            byteBuffer.position(byteBuffer.position() + 1);
        }
        byteBuffer.position(byteBuffer.position() + 1);
        return new String(array, position, (byteBuffer.position() - position) - 1, Charset.forName("ASCII"));
    }

    public static /* synthetic */ void a(int i, int i2, String str) {
        if (i <= 0 || i > i2) {
            throw new IOException(str);
        }
    }

    public static boolean a(File file) {
        try {
            com.bytedance.pangle.util.g.a(new h(file));
            return true;
        } catch (IOException unused) {
            com.bytedance.pangle.util.g.a((Closeable) null);
            return false;
        } catch (Throwable th) {
            com.bytedance.pangle.util.g.a((Closeable) null);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(FileChannel fileChannel, ByteBuffer byteBuffer, String str) {
        byteBuffer.rewind();
        int read = fileChannel.read(byteBuffer);
        if (read == byteBuffer.limit()) {
            byteBuffer.flip();
            return;
        }
        StringBuilder l = tn.l(str, " Rest bytes insufficient, expect to read ");
        l.append(byteBuffer.limit());
        l.append(" bytes but only ");
        l.append(read);
        l.append(" bytes were read.");
        throw new IOException(l.toString());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f1371a.close();
        this.f1375e.clear();
        this.f1373c = null;
        this.f1374d = null;
    }
}

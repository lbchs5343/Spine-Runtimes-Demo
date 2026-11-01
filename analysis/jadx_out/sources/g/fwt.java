package g;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Set;

/* loaded from: classes.dex */
public final class fwt implements blx {

    /* renamed from: b, reason: collision with root package name */
    public static final dba f17536b = dsr.k(fwt.class);

    /* renamed from: c, reason: collision with root package name */
    public FileChannel f17537c;

    /* renamed from: d, reason: collision with root package name */
    public RandomAccessFile f17538d;

    /* renamed from: e, reason: collision with root package name */
    public int f17539e = -2;

    /* renamed from: f, reason: collision with root package name */
    public final ctk f17540f;

    /* renamed from: g, reason: collision with root package name */
    public eqm f17541g;
    public final Set h;
    public final boolean i;
    public final File j;
    public ByteBuffer k;
    public final fdy l;
    public final boolean m;

    public fwt(File file, fdy fdyVar) {
        this.j = file;
        this.l = fdyVar;
        ctk ctkVar = (ctk) fdyVar.f16634c;
        this.f17540f = ctkVar;
        Set set = (Set) fdyVar.f16632a;
        this.h = set;
        this.i = set.contains(evu.REPORT_TAMPERING);
        this.m = ctkVar.bw();
    }

    public static void n(cht chtVar) {
        int i = chtVar.k;
        long j = chtVar.l;
        dba dbaVar = f17536b;
        if (i != 0) {
            if (i != 8) {
                dbaVar.t(Integer.valueOf(i), "Unknown compress method: {} in entry: {}", chtVar);
            }
        } else {
            long j2 = chtVar.i;
            if (j2 != j) {
                dbaVar.q("Not equal sizes for STORE method: compressed: {}, uncompressed: {}, entry: {}", Long.valueOf(j2), Long.valueOf(j), chtVar);
            }
        }
    }

    @Override // g.blx
    public final eqm a() {
        Set set = this.h;
        p();
        try {
            int bx = this.f17540f.bx();
            if (bx == -1) {
                bx = he.UNDEFINED_ITEM_ID;
            }
            return new eqm(this, set.contains(evu.IGNORE_CENTRAL_DIR_ENTRIES) ? o(bx) : r(bx));
        } catch (Exception e2) {
            boolean contains = set.contains(evu.DONT_USE_FALLBACK);
            File file = this.j;
            if (!contains) {
                f17536b.t(file, "Zip open failed, switching to fallback parser, zip: {}", e2);
                return u();
            }
            throw new IOException("Failed to open zip: " + file + ", error: " + e2.getMessage(), e2);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            FileChannel fileChannel = this.f17537c;
            if (fileChannel != null) {
                fileChannel.close();
            }
            RandomAccessFile randomAccessFile = this.f17538d;
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
            eqm eqmVar = this.f17541g;
            if (eqmVar != null) {
                eqmVar.close();
            }
            this.f17537c = null;
            this.f17538d = null;
            this.k = null;
            this.f17539e = -2;
            this.f17541g = null;
        } catch (Throwable th) {
            this.f17537c = null;
            this.f17538d = null;
            this.k = null;
            this.f17539e = -2;
            this.f17541g = null;
            throw th;
        }
    }

    public final ArrayList o(int i) {
        int position;
        ArrayList arrayList = new ArrayList();
        while (true) {
            ByteBuffer byteBuffer = this.k;
            while (true) {
                position = byteBuffer.position();
                if (position + 4 > byteBuffer.limit()) {
                    position = -1;
                    break;
                }
                if (byteBuffer.get() == 80) {
                    byteBuffer.position(position);
                    if (byteBuffer.getInt() == 67324752) {
                        break;
                    }
                }
            }
            if (position == -1) {
                return arrayList;
            }
            cht q = q(position);
            boolean bv = this.f17540f.bv(q);
            if (!bv) {
                f17536b.p(q, "Zip entry '{}' is invalid and excluded from processing");
            }
            if (bv) {
                arrayList.add(q);
                if (arrayList.size() > i) {
                    throw new IllegalStateException("Max entries count limit exceeded: " + arrayList.size());
                }
            }
        }
    }

    public final void p() {
        if (this.k != null) {
            return;
        }
        RandomAccessFile randomAccessFile = new RandomAccessFile(this.j, "r");
        this.f17538d = randomAccessFile;
        long length = randomAccessFile.length();
        if (length >= 2147483647L) {
            throw new IOException("Zip file is too big");
        }
        int i = (int) length;
        if (i < 104857600) {
            byte[] bArr = new byte[i];
            this.f17538d.readFully(bArr);
            this.k = ByteBuffer.wrap(bArr).asReadOnlyBuffer();
            this.f17538d.close();
            this.f17538d = null;
        } else {
            FileChannel channel = this.f17538d.getChannel();
            this.f17537c = channel;
            this.k = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
        }
        this.k.order(ByteOrder.LITTLE_ENDIAN);
    }

    public final cht q(int i) {
        ByteBuffer byteBuffer = this.k;
        byteBuffer.position(i + 8);
        int i2 = byteBuffer.getShort() & 65535;
        byteBuffer.position(i + 18);
        int i3 = byteBuffer.getInt();
        int i4 = byteBuffer.getInt();
        int i5 = byteBuffer.getShort() & 65535;
        int i6 = 65535 & byteBuffer.getShort();
        byte[] bArr = new byte[i5];
        byteBuffer.get(bArr);
        String str = new String(bArr, StandardCharsets.UTF_8);
        int i7 = i + 30 + i5 + i6;
        byteBuffer.position(i7 + i3);
        return new cht(this, str, i, i7, i2, i3, i4);
    }

    public final ArrayList r(int i) {
        int i2;
        int i3;
        fwt fwtVar = this;
        int v = fwtVar.v();
        if (v < 0) {
            throw new RuntimeException("End of central directory not found");
        }
        ByteBuffer byteBuffer = fwtVar.k;
        byteBuffer.position(v + 10);
        short s = 65535;
        int i4 = byteBuffer.getShort() & 65535;
        byteBuffer.position(v + 16);
        int i5 = byteBuffer.getInt();
        if (i4 > i) {
            throw new IllegalStateException(awf.ac(i4, "Max entries count limit exceeded: "));
        }
        ArrayList arrayList = new ArrayList(i4);
        byteBuffer.position(i5);
        int i6 = 0;
        while (i6 < i4) {
            ByteBuffer byteBuffer2 = fwtVar.k;
            int position = byteBuffer2.position();
            byteBuffer2.position(position + 28);
            int i7 = byteBuffer2.getShort() & s;
            int i8 = byteBuffer2.getShort() & s;
            int i9 = byteBuffer2.getShort() & s;
            byteBuffer2.position(position + 42);
            int i10 = position + 46 + i7 + i8 + i9;
            cht q = fwtVar.q(byteBuffer2.getInt());
            long j = q.i;
            long j2 = q.l;
            int i11 = q.k;
            boolean z = fwtVar.i;
            dba dbaVar = f17536b;
            if (z) {
                byteBuffer2.position(position + 10);
                int i12 = byteBuffer2.getShort() & 65535;
                if (i12 != i11) {
                    dbaVar.q("Compression method differ in CD {} and LFH {} for {}", Integer.valueOf(i12), Integer.valueOf(i11), q);
                }
                byteBuffer2.position(position + 20);
                int i13 = byteBuffer2.getInt();
                int i14 = byteBuffer2.getInt();
                i2 = i6;
                if (i13 != j) {
                    dbaVar.q("Compressed size differ in CD {} and LFH {} for {}", Integer.valueOf(i13), Long.valueOf(j), q);
                }
                if (i14 != j2) {
                    dbaVar.q("Uncompressed size differ in CD {} and LFH {} for {}", Integer.valueOf(i14), Long.valueOf(j2), q);
                }
            } else {
                i2 = i6;
            }
            if (j > 0 && j2 > 0 && j <= j2) {
                i3 = i10;
            } else {
                ByteBuffer byteBuffer3 = fwtVar.k;
                byteBuffer3.position(position + 10);
                int i15 = byteBuffer3.getShort() & 65535;
                byteBuffer3.position(position + 20);
                fwtVar = this;
                i3 = i10;
                q = new cht(fwtVar, q.j, position, q.f12904b, i15, byteBuffer3.getInt(), byteBuffer3.getInt());
            }
            byteBuffer2.position(i3);
            boolean bv = fwtVar.f17540f.bv(q);
            if (!bv) {
                dbaVar.p(q, "Zip entry '{}' is invalid and excluded from processing");
            }
            if (bv) {
                arrayList.add(q);
            }
            i6 = i2 + 1;
            s = 65535;
        }
        return arrayList;
    }

    public final void s(cht chtVar, Exception exc) {
        ByteBuffer byteBuffer = this.k;
        byteBuffer.position(chtVar.f12903a + 6);
        if ((byteBuffer.getShort() & 1) != 0) {
            throw new RuntimeException("Entry is encrypted, failed to decompress: " + chtVar, exc);
        }
        if (!this.h.contains(evu.DONT_USE_FALLBACK)) {
            f17536b.t(chtVar, "Entry '{}' parse failed, switching to fallback parser", exc);
            return;
        }
        throw new RuntimeException("Failed to decompress zip entry: " + chtVar + ", error: " + exc.getMessage(), exc);
    }

    public final ffs t(cht chtVar) {
        f17536b.v(chtVar, "useFallbackParser used for {}");
        ffs ffsVar = (ffs) u().f15997b.get(chtVar.j);
        if (ffsVar != null) {
            return ffsVar;
        }
        throw new RuntimeException("Fallback parser can't find entry: " + chtVar);
    }

    public final String toString() {
        return "JadxZipParser{" + this.j + '}';
    }

    public final eqm u() {
        File file = this.j;
        if (this.f17541g == null) {
            try {
                this.f17541g = new fzz(file, this.l).a();
            } catch (Exception e2) {
                throw new RuntimeException("Fallback parser failed to open file: " + file, e2);
            }
        }
        return this.f17541g;
    }

    public final int v() {
        int i = this.f17539e;
        if (i != -2) {
            return i;
        }
        ByteBuffer byteBuffer = this.k;
        int limit = byteBuffer.limit();
        int i2 = limit - 22;
        int max = Math.max(0, limit - 65557);
        do {
            byteBuffer.position(i2);
            if (byteBuffer.getInt() == 101010256) {
                this.f17539e = i2;
                return i2;
            }
            i2--;
        } while (i2 >= max);
        throw new IOException("End of central directory record not found");
    }
}

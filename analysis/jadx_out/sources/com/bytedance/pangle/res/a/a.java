package com.bytedance.pangle.res.a;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.ByteArrayInputStream;
import java.io.EOFException;
import java.math.BigInteger;
import java.util.HashSet;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public class a {

    /* renamed from: f, reason: collision with root package name */
    private static final Logger f1547f = Logger.getLogger(a.class.getName());

    /* renamed from: a, reason: collision with root package name */
    private final byte[] f1548a;

    /* renamed from: b, reason: collision with root package name */
    private final h f1549b;

    /* renamed from: c, reason: collision with root package name */
    private final g f1550c;

    /* renamed from: d, reason: collision with root package name */
    private final e f1551d;

    /* renamed from: e, reason: collision with root package name */
    private C0101a f1552e;

    /* renamed from: com.bytedance.pangle.res.a.a$a, reason: collision with other inner class name */
    public static class C0101a {

        /* renamed from: a, reason: collision with root package name */
        public final short f1553a;

        /* renamed from: b, reason: collision with root package name */
        public final int f1554b;

        /* renamed from: c, reason: collision with root package name */
        public final int f1555c;

        /* renamed from: d, reason: collision with root package name */
        public final int f1556d;

        /* renamed from: e, reason: collision with root package name */
        public final int f1557e;

        private C0101a(short s, int i, int i2, int i3) {
            this.f1553a = s;
            this.f1554b = i;
            this.f1555c = i2;
            this.f1556d = i3;
            this.f1557e = i3 + i2;
        }

        public static C0101a a(g gVar, e eVar) {
            int a2 = eVar.a();
            try {
                return new C0101a(gVar.readShort(), gVar.readShort(), gVar.readInt(), a2);
            } catch (EOFException unused) {
                return new C0101a((short) -1, 0, 0, eVar.a());
            }
        }
    }

    public a(byte[] bArr, h hVar) {
        e eVar = new e(new ByteArrayInputStream(bArr));
        this.f1551d = eVar;
        this.f1550c = new g(new i(eVar));
        this.f1548a = bArr;
        this.f1549b = hVar;
    }

    private String a(int i) {
        int i2;
        short s;
        StringBuilder sb = new StringBuilder(16);
        while (true) {
            i2 = i - 1;
            if (i == 0 || this.f1550c.readByte() == 0) {
                break;
            }
            sb.append((char) s);
            i = i2;
        }
        this.f1550c.skipBytes(i2);
        return sb.toString();
    }

    private void b() {
        b(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SEEK_EXACT);
        int readInt = this.f1550c.readInt();
        for (int i = 0; i < readInt; i++) {
            this.f1550c.readInt();
            this.f1550c.skipBytes(256);
        }
        while (j().f1553a == 513) {
            c();
        }
    }

    private void b(int i) {
        if (this.f1552e.f1553a != i) {
            throw new RuntimeException(String.format("Invalid chunk type: expected=0x%08x, got=0x%08x", Integer.valueOf(i), Short.valueOf(this.f1552e.f1553a)));
        }
    }

    private void c() {
        d();
        short s = j().f1553a;
        while (s == 514) {
            d();
            s = j().f1553a;
        }
        while (s == 513) {
            e();
            if (this.f1551d.a() < this.f1552e.f1557e) {
                f1547f.warning("Unknown data detected. Skipping: " + (this.f1552e.f1557e - this.f1551d.a()) + " byte(s)");
                e eVar = this.f1551d;
                eVar.skip((long) (this.f1552e.f1557e - eVar.a()));
            }
            s = j().f1553a;
        }
    }

    private void d() {
        b(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_EXPIRED_LICENSE);
        this.f1550c.readUnsignedByte();
        this.f1550c.skipBytes(3);
        this.f1550c.skipBytes(this.f1550c.readInt() * 4);
    }

    private void e() {
        b(MediaPlayer.MEDIA_PLAYER_OPTION_MODULE_ID);
        this.f1550c.readUnsignedByte();
        this.f1550c.readByte();
        this.f1550c.skipBytes(2);
        int readInt = this.f1550c.readInt();
        int readInt2 = this.f1550c.readInt();
        i();
        int i = (this.f1552e.f1556d + readInt2) - (readInt * 4);
        if (i != this.f1551d.a()) {
            f1547f.warning("Invalid data detected. Skipping: " + (i - this.f1551d.a()) + " byte(s)");
            this.f1550c.skipBytes(i - this.f1551d.a());
        }
        int[] a2 = this.f1550c.a(readInt);
        HashSet hashSet = new HashSet();
        for (int i2 : a2) {
            if (i2 != -1 && !hashSet.contains(Integer.valueOf(i2))) {
                f();
                hashSet.add(Integer.valueOf(i2));
            }
        }
    }

    private void f() {
        if (this.f1550c.readShort() < 0) {
            throw new RuntimeException("Entry size is under 0 bytes.");
        }
        short readShort = this.f1550c.readShort();
        this.f1550c.readInt();
        if ((readShort & 1) == 0) {
            h();
        } else {
            g();
        }
    }

    private void g() {
        int a2 = k.a(this.f1550c);
        k.a(this.f1548a, this.f1550c.readInt(), a2, this.f1549b);
        int readInt = this.f1550c.readInt();
        for (int i = 0; i < readInt; i++) {
            int a3 = k.a(this.f1550c);
            k.a(this.f1548a, this.f1550c.readInt(), a3, this.f1549b);
            h();
        }
    }

    private void h() {
        this.f1550c.a();
        this.f1550c.b();
        byte readByte = this.f1550c.readByte();
        int a2 = k.a(this.f1550c);
        int readInt = this.f1550c.readInt();
        if (readByte == 1) {
            k.a(this.f1548a, readInt, a2, this.f1549b);
        }
        if (readByte == 2) {
            k.a(this.f1548a, readInt, a2, this.f1549b);
        }
    }

    private void i() {
        int i = 56;
        int readInt = this.f1550c.readInt();
        int i2 = 28;
        if (readInt < 28) {
            throw new RuntimeException("Config size < 28");
        }
        this.f1550c.readShort();
        this.f1550c.readShort();
        this.f1550c.readByte();
        this.f1550c.readByte();
        this.f1550c.readByte();
        this.f1550c.readByte();
        this.f1550c.readByte();
        this.f1550c.readByte();
        this.f1550c.readUnsignedShort();
        this.f1550c.readByte();
        this.f1550c.readByte();
        this.f1550c.readByte();
        this.f1550c.skipBytes(1);
        this.f1550c.readShort();
        this.f1550c.readShort();
        this.f1550c.readShort();
        this.f1550c.skipBytes(2);
        if (readInt >= 32) {
            this.f1550c.readByte();
            this.f1550c.readByte();
            this.f1550c.readShort();
            i2 = 32;
        }
        if (readInt >= 36) {
            this.f1550c.readShort();
            this.f1550c.readShort();
            i2 = 36;
        }
        if (readInt >= 48) {
            a(4).toCharArray();
            a(8).toCharArray();
            i2 = 48;
        }
        if (readInt >= 52) {
            this.f1550c.readByte();
            this.f1550c.readByte();
            this.f1550c.skipBytes(2);
            i2 = 52;
        }
        if (readInt >= 56) {
            this.f1550c.skipBytes(4);
        } else {
            i = i2;
        }
        int i3 = readInt - 56;
        if (i3 > 0) {
            byte[] bArr = new byte[i3];
            i += i3;
            this.f1550c.readFully(bArr);
            BigInteger bigInteger = new BigInteger(1, bArr);
            if (bigInteger.equals(BigInteger.ZERO)) {
                f1547f.fine(String.format("Config flags size > %d, but exceeding bytes are all zero, so it should be ok.", 56));
            } else {
                f1547f.warning(String.format("Config flags size > %d. Size = %d. Exceeding bytes: 0x%X.", 56, Integer.valueOf(readInt), bigInteger));
            }
        }
        int i4 = readInt - i;
        if (i4 > 0) {
            this.f1550c.skipBytes(i4);
        }
    }

    private C0101a j() {
        C0101a a2 = C0101a.a(this.f1550c, this.f1551d);
        this.f1552e = a2;
        return a2;
    }

    public final void a() {
        j();
        b(2);
        int readInt = this.f1550c.readInt();
        l.a(this.f1550c);
        j();
        for (int i = 0; i < readInt; i++) {
            b(512);
            this.f1550c.readInt();
            this.f1550c.skipBytes(256);
            this.f1550c.skipBytes(4);
            this.f1550c.skipBytes(4);
            this.f1550c.skipBytes(4);
            this.f1550c.skipBytes(4);
            if (this.f1552e.f1554b == 288 && this.f1550c.readInt() > 0) {
                throw new RuntimeException("don't support");
            }
            l.a(this.f1550c);
            l.a(this.f1550c);
            j();
            boolean z = true;
            while (z) {
                short s = this.f1552e.f1553a;
                if (s == 514) {
                    c();
                } else if (s != 515) {
                    z = false;
                } else {
                    b();
                }
            }
        }
    }
}

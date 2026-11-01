package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public final class gvn implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f18815a;

    /* renamed from: b, reason: collision with root package name */
    public final day f18816b;

    /* renamed from: c, reason: collision with root package name */
    public final dsy f18817c;

    /* renamed from: d, reason: collision with root package name */
    public final ebo f18818d;

    static {
        Logger logger = Logger.getLogger(aby.class.getName());
        bff.e(logger, "getLogger(Http2::class.java.name)");
        f18815a = logger;
    }

    public gvn(deb debVar) {
        bff.p(debVar, abn.EXTRA_SOURCE);
        this.f18817c = debVar;
        ebo eboVar = new ebo(debVar);
        this.f18818d = eboVar;
        this.f18816b = new day(eboVar);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f18817c.close();
    }

    public final void e(dvj dvjVar, int i, int i2, int i3) {
        int i4;
        if (i3 == 0) {
            throw new IOException("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0");
        }
        if ((i2 & 8) != 0) {
            byte readByte = this.f18817c.readByte();
            byte[] bArr = erq.f16043c;
            i4 = readByte & 255;
        } else {
            i4 = 0;
        }
        int readInt = this.f18817c.readInt() & he.UNDEFINED_ITEM_ID;
        List g2 = g(fso.z(i - 4, i2, i4), i4, i2, i3);
        ug ugVar = dvjVar.f14891b;
        synchronized (ugVar) {
            if (ugVar.f20093f.contains(Integer.valueOf(readInt))) {
                ugVar.ai(readInt, amc.PROTOCOL_ERROR);
                return;
            }
            ugVar.f20093f.add(Integer.valueOf(readInt));
            ugVar.t.l(new bge(ugVar.j + '[' + readInt + "] onRequest", ugVar, readInt, g2, 1), 0L);
        }
    }

    public final void f(dvj dvjVar, int i, int i2) {
        amc amcVar;
        Object[] array;
        if (i < 8) {
            throw new IOException(awf.ac(i, "TYPE_GOAWAY length < 8: "));
        }
        if (i2 != 0) {
            throw new IOException("TYPE_GOAWAY streamId != 0");
        }
        int readInt = this.f18817c.readInt();
        int readInt2 = this.f18817c.readInt();
        int i3 = i - 8;
        amc.Companion.getClass();
        amc[] values = amc.values();
        int length = values.length;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                amcVar = null;
                break;
            }
            amcVar = values[i4];
            if (amcVar.b() == readInt2) {
                break;
            } else {
                i4++;
            }
        }
        if (amcVar == null) {
            throw new IOException(awf.ac(readInt2, "TYPE_GOAWAY unexpected error code: "));
        }
        gei geiVar = gei.n;
        if (i3 > 0) {
            geiVar = this.f18817c.t(i3);
        }
        bff.p(geiVar, "debugData");
        geiVar.d();
        ug ugVar = dvjVar.f14891b;
        synchronized (ugVar) {
            array = ugVar.u.values().toArray(new btb[0]);
            ugVar.z = true;
        }
        for (btb btbVar : (btb[]) array) {
            if (btbVar.f12173g > readInt && btbVar.o()) {
                btbVar.p(amc.REFUSED_STREAM);
                dvjVar.f14891b.ad(btbVar.f12173g);
            }
        }
    }

    public final List g(int i, int i2, int i3, int i4) {
        ebo eboVar = this.f18818d;
        eboVar.f15250d = i;
        eboVar.f15252g = i;
        eboVar.h = i2;
        eboVar.f15248a = i3;
        eboVar.f15249b = i4;
        day dayVar = this.f18816b;
        deb debVar = dayVar.f13900f;
        ArrayList arrayList = dayVar.f13899e;
        while (!debVar.i()) {
            byte readByte = debVar.readByte();
            byte[] bArr = erq.f16043c;
            int i5 = readByte & 255;
            if (i5 == 128) {
                throw new IOException("index == 0");
            }
            if ((readByte & 128) == 128) {
                int i6 = dayVar.i(i5, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE);
                int i7 = i6 - 1;
                if (i7 >= 0) {
                    heb[] hebVarArr = bhe.f11573a;
                    if (i7 <= hebVarArr.length - 1) {
                        arrayList.add(hebVarArr[i7]);
                    }
                }
                int length = dayVar.f13896b + 1 + (i7 - bhe.f11573a.length);
                if (length >= 0) {
                    heb[] hebVarArr2 = dayVar.f13895a;
                    if (length < hebVarArr2.length) {
                        heb hebVar = hebVarArr2[length];
                        bff.d(hebVar);
                        arrayList.add(hebVar);
                    }
                }
                throw new IOException(awf.ac(i6, "Header index too large "));
            }
            if (i5 == 64) {
                heb[] hebVarArr3 = bhe.f11573a;
                gei h = dayVar.h();
                bhe.c(h);
                dayVar.l(new heb(h, dayVar.h()));
            } else if ((readByte & 64) == 64) {
                dayVar.l(new heb(dayVar.k(dayVar.i(i5, 63) - 1), dayVar.h()));
            } else if ((readByte & 32) == 32) {
                int i8 = dayVar.i(i5, 31);
                dayVar.f13897c = i8;
                if (i8 < 0 || i8 > 4096) {
                    throw new IOException("Invalid dynamic table size update " + dayVar.f13897c);
                }
                int i9 = dayVar.f13901g;
                if (i8 < i9) {
                    if (i8 == 0) {
                        fuv.be(r7, null, 0, dayVar.f13895a.length);
                        dayVar.f13896b = dayVar.f13895a.length - 1;
                        dayVar.f13898d = 0;
                        dayVar.f13901g = 0;
                    } else {
                        dayVar.j(i9 - i8);
                    }
                }
            } else if (i5 == 16 || i5 == 0) {
                heb[] hebVarArr4 = bhe.f11573a;
                gei h2 = dayVar.h();
                bhe.c(h2);
                arrayList.add(new heb(h2, dayVar.h()));
            } else {
                arrayList.add(new heb(dayVar.k(dayVar.i(i5, 15) - 1), dayVar.h()));
            }
        }
        List bf = gsv.bf(arrayList);
        arrayList.clear();
        return bf;
    }

    public final void h(dvj dvjVar, int i, int i2, int i3) {
        if (i3 == 0) {
            throw new IOException("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0");
        }
        int i4 = 0;
        int i5 = 1;
        boolean z = (i2 & 1) != 0;
        if ((i2 & 8) != 0) {
            byte readByte = this.f18817c.readByte();
            byte[] bArr = erq.f16043c;
            i4 = readByte & 255;
        }
        if ((i2 & 32) != 0) {
            dsy dsyVar = this.f18817c;
            dsyVar.readInt();
            dsyVar.readByte();
            byte[] bArr2 = erq.f16043c;
            i -= 5;
        }
        List g2 = g(fso.z(i, i2, i4), i4, i2, i3);
        ug ugVar = dvjVar.f14891b;
        if (i3 != 0 && (i3 & 1) == 0) {
            ugVar.t.l(new bge(ugVar.j + '[' + i3 + "] onHeaders", ugVar, i3, g2, z), 0L);
            return;
        }
        synchronized (ugVar) {
            btb ab2 = ugVar.ab(i3);
            if (ab2 != null) {
                ab2.w(erq.q(g2), z);
                return;
            }
            if (ugVar.z) {
                return;
            }
            if (i3 <= ugVar.o) {
                return;
            }
            if (i3 % 2 == ugVar.p % 2) {
                return;
            }
            btb btbVar = new btb(i3, ugVar, false, z, erq.q(g2));
            ugVar.o = i3;
            ugVar.u.put(Integer.valueOf(i3), btbVar);
            ugVar.f20092e.l().l(new fyc(i5, ugVar, btbVar, ugVar.j + '[' + i3 + "] onStream"), 0L);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:83:0x0139, code lost:
    
        throw new java.io.IOException(g.awf.ac(r15, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean i(boolean z, dvj dvjVar) {
        amc amcVar;
        int i = 0;
        try {
            this.f18817c.v(9L);
            int u = erq.u(this.f18817c);
            if (u > 16384) {
                throw new IOException(awf.ac(u, "FRAME_SIZE_ERROR: "));
            }
            int readByte = this.f18817c.readByte() & 255;
            byte readByte2 = this.f18817c.readByte();
            int i2 = readByte2 & 255;
            int readInt = this.f18817c.readInt();
            int i3 = Integer.MAX_VALUE & readInt;
            Logger logger = f18815a;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(aby.e(i3, u, readByte, i2, true));
            }
            if (z && readByte != 4) {
                StringBuilder sb = new StringBuilder("Expected a SETTINGS frame but was ");
                String[] strArr = aby.f9952c;
                sb.append(readByte < strArr.length ? strArr[readByte] : erq.h("0x%02x", Integer.valueOf(readByte)));
                throw new IOException(sb.toString());
            }
            switch (readByte) {
                case 0:
                    j(dvjVar, u, i2, i3);
                    return true;
                case 1:
                    h(dvjVar, u, i2, i3);
                    return true;
                case 2:
                    if (u != 5) {
                        throw new IOException(awf.b(u, "TYPE_PRIORITY length: ", " != 5"));
                    }
                    if (i3 == 0) {
                        throw new IOException("TYPE_PRIORITY streamId == 0");
                    }
                    dsy dsyVar = this.f18817c;
                    dsyVar.readInt();
                    dsyVar.readByte();
                    return true;
                case 3:
                    if (u != 4) {
                        throw new IOException(awf.b(u, "TYPE_RST_STREAM length: ", " != 4"));
                    }
                    if (i3 == 0) {
                        throw new IOException("TYPE_RST_STREAM streamId == 0");
                    }
                    int readInt2 = this.f18817c.readInt();
                    amc.Companion.getClass();
                    amc[] values = amc.values();
                    int length = values.length;
                    while (true) {
                        if (i < length) {
                            amcVar = values[i];
                            if (amcVar.b() != readInt2) {
                                i++;
                            }
                        } else {
                            amcVar = null;
                        }
                    }
                    if (amcVar == null) {
                        throw new IOException(awf.ac(readInt2, "TYPE_RST_STREAM unexpected error code: "));
                    }
                    ug ugVar = dvjVar.f14891b;
                    if (i3 == 0 || (readInt & 1) != 0) {
                        btb ad = ugVar.ad(i3);
                        if (ad != null) {
                            ad.p(amcVar);
                        }
                        return true;
                    }
                    ugVar.t.l(new etb(ugVar.j + '[' + i3 + "] onReset", ugVar, i3, amcVar), 0L);
                    return true;
                case 4:
                    dsy dsyVar2 = this.f18817c;
                    if (i3 != 0) {
                        throw new IOException("TYPE_SETTINGS streamId != 0");
                    }
                    if ((readByte2 & 1) != 0) {
                        if (u != 0) {
                            throw new IOException("FRAME_SIZE_ERROR ack frame should be empty!");
                        }
                        return true;
                    }
                    if (u % 6 != 0) {
                        throw new IOException(awf.ac(u, "TYPE_SETTINGS length % 6 != 0: "));
                    }
                    che cheVar = new che();
                    fqr ap = afo.ap(afo.ah(0, u), 6);
                    int i4 = ap.f17256b;
                    int i5 = ap.f17257c;
                    int i6 = ap.f17255a;
                    int i7 = 2;
                    if ((i6 > 0 && i4 <= i5) || (i6 < 0 && i5 <= i4)) {
                        while (true) {
                            short readShort = dsyVar2.readShort();
                            byte[] bArr = erq.f16043c;
                            int i8 = readShort & 65535;
                            int readInt3 = dsyVar2.readInt();
                            if (i8 != 2) {
                                if (i8 == 3) {
                                    i8 = 4;
                                } else if (i8 != 4) {
                                    if (i8 == 5 && (readInt3 < 16384 || readInt3 > 16777215)) {
                                    }
                                } else {
                                    if (readInt3 < 0) {
                                        throw new IOException("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1");
                                    }
                                    i8 = 7;
                                }
                            } else if (readInt3 != 0 && readInt3 != 1) {
                                throw new IOException("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1");
                            }
                            cheVar.e(i8, readInt3);
                            if (i4 != i5) {
                                i4 += i6;
                            }
                        }
                    }
                    ug ugVar2 = dvjVar.f14891b;
                    ugVar2.f20089b.l(new fyc(i7, dvjVar, cheVar, awf.ad(new StringBuilder(), ugVar2.j, " applyAndAckSettings")), 0L);
                    return true;
                case 5:
                    e(dvjVar, u, i2, i3);
                    return true;
                case 6:
                    k(dvjVar, u, i2, i3);
                    return true;
                case 7:
                    f(dvjVar, u, i3);
                    return true;
                case 8:
                    if (u != 4) {
                        throw new IOException(awf.ac(u, "TYPE_WINDOW_UPDATE length !=4: "));
                    }
                    long readInt4 = 2147483647L & this.f18817c.readInt();
                    if (readInt4 == 0) {
                        throw new IOException("windowSizeIncrement was 0");
                    }
                    if (i3 == 0) {
                        ug ugVar3 = dvjVar.f14891b;
                        synchronized (ugVar3) {
                            ugVar3.m += readInt4;
                            ugVar3.notifyAll();
                        }
                        return true;
                    }
                    btb ab2 = dvjVar.f14891b.ab(i3);
                    if (ab2 != null) {
                        synchronized (ab2) {
                            ab2.h += readInt4;
                            if (readInt4 > 0) {
                                ab2.notifyAll();
                            }
                        }
                        return true;
                    }
                    return true;
                default:
                    this.f18817c.skip(u);
                    return true;
            }
        } catch (EOFException unused) {
            return false;
        }
    }

    public final void j(dvj dvjVar, int i, int i2, int i3) {
        int i4;
        boolean z;
        long j;
        boolean z2;
        if (i3 == 0) {
            throw new IOException("PROTOCOL_ERROR: TYPE_DATA streamId == 0");
        }
        boolean z3 = (i2 & 1) != 0;
        if ((i2 & 32) != 0) {
            throw new IOException("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA");
        }
        if ((i2 & 8) != 0) {
            byte readByte = this.f18817c.readByte();
            byte[] bArr = erq.f16043c;
            i4 = readByte & 255;
        } else {
            i4 = 0;
        }
        int z4 = fso.z(i, i2, i4);
        dsy dsyVar = this.f18817c;
        bff.p(dsyVar, abn.EXTRA_SOURCE);
        ug ugVar = dvjVar.f14891b;
        long j2 = 0;
        if (i3 == 0 || (i3 & 1) != 0) {
            btb ab2 = ugVar.ab(i3);
            if (ab2 == null) {
                dvjVar.f14891b.ai(i3, amc.PROTOCOL_ERROR);
                long j3 = z4;
                dvjVar.f14891b.aa(j3);
                dsyVar.skip(j3);
            } else {
                byte[] bArr2 = erq.f16043c;
                eoi eoiVar = ab2.j;
                long j4 = z4;
                eoiVar.getClass();
                long j5 = j4;
                while (true) {
                    if (j5 <= j2) {
                        eoiVar.i(j4);
                        break;
                    }
                    synchronized (eoiVar.h) {
                        z = eoiVar.f15898g;
                        j = j2;
                        z2 = eoiVar.f15895b.f13080b + j5 > eoiVar.f15897f;
                    }
                    if (z2) {
                        dsyVar.skip(j5);
                        eoiVar.h.r(amc.FLOW_CONTROL_ERROR);
                        break;
                    }
                    if (z) {
                        dsyVar.skip(j5);
                        break;
                    }
                    long c2 = dsyVar.c(eoiVar.f15894a, j5);
                    if (c2 == -1) {
                        throw new EOFException();
                    }
                    j5 -= c2;
                    btb btbVar = eoiVar.h;
                    synchronized (btbVar) {
                        try {
                            if (eoiVar.f15896d) {
                                eoiVar.f15894a.aa();
                            } else {
                                clq clqVar = eoiVar.f15895b;
                                boolean z5 = clqVar.f13080b == j;
                                clqVar.ae(eoiVar.f15894a);
                                if (z5) {
                                    btbVar.notifyAll();
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    j2 = j;
                }
                if (z3) {
                    ab2.w(erq.f16045e, true);
                }
            }
        } else {
            clq clqVar2 = new clq();
            long j6 = z4;
            dsyVar.v(j6);
            dsyVar.c(clqVar2, j6);
            ugVar.t.l(new dxq(ugVar.j + '[' + i3 + "] onData", ugVar, i3, clqVar2, z4, z3), 0L);
        }
        this.f18817c.skip(i4);
    }

    public final void k(dvj dvjVar, int i, int i2, int i3) {
        if (i != 8) {
            throw new IOException(awf.ac(i, "TYPE_PING length != 8: "));
        }
        if (i3 != 0) {
            throw new IOException("TYPE_PING streamId != 0");
        }
        int readInt = this.f18817c.readInt();
        int readInt2 = this.f18817c.readInt();
        if (!((i2 & 1) != 0)) {
            dvjVar.f14891b.f20089b.l(new ghv(awf.ad(new StringBuilder(), dvjVar.f14891b.j, " ping"), dvjVar.f14891b, readInt, readInt2), 0L);
            return;
        }
        ug ugVar = dvjVar.f14891b;
        synchronized (ugVar) {
            try {
                if (readInt == 1) {
                    ugVar.k++;
                } else if (readInt == 2) {
                    ugVar.v++;
                } else if (readInt == 3) {
                    ugVar.notifyAll();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

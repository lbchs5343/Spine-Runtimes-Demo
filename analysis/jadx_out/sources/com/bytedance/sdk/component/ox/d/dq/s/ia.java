package com.bytedance.sdk.component.ox.d.dq.s;

import com.bytedance.sdk.component.ox.d.dq.s.p;
import com.bytedance.sdk.component.ox.dq.gh;
import com.bytedance.sdk.component.ox.dq.r;
import g.he;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
final class ia implements Closeable {
    static final Logger dq = Logger.getLogger(s.class.getName());

    /* renamed from: d, reason: collision with root package name */
    final p.dq f2085d;
    private final com.bytedance.sdk.component.ox.dq.s ox;
    private final dq p;
    private final boolean s;

    public interface d {
        void dq(int i, int i2, List<ox> list) throws IOException;

        void dq(int i, long j);

        void dq(int i, com.bytedance.sdk.component.ox.d.dq.s.d dVar);

        void dq(int i, com.bytedance.sdk.component.ox.d.dq.s.d dVar, com.bytedance.sdk.component.ox.dq.iw iwVar);

        void dq(boolean z, int i, int i2);

        void dq(boolean z, int i, int i2, List<ox> list);

        void dq(boolean z, int i, com.bytedance.sdk.component.ox.dq.s sVar, int i2) throws IOException;

        void dq(boolean z, q qVar);
    }

    public static final class dq implements gh {

        /* renamed from: d, reason: collision with root package name */
        byte f2086d;
        int dq;
        private final com.bytedance.sdk.component.ox.dq.s iw;
        int ox;
        int p;
        short s;

        public dq(com.bytedance.sdk.component.ox.dq.s sVar) {
            this.iw = sVar;
        }

        private void d() throws IOException {
            int i = this.ox;
            int dq = ia.dq(this.iw);
            this.p = dq;
            this.dq = dq;
            byte ia = (byte) (this.iw.ia() & 255);
            this.f2086d = (byte) (this.iw.ia() & 255);
            Logger logger = ia.dq;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(s.dq(true, this.ox, this.dq, ia, this.f2086d));
            }
            int o = this.iw.o() & he.UNDEFINED_ITEM_ID;
            this.ox = o;
            if (ia != 9) {
                throw s.d("%s != TYPE_CONTINUATION", Byte.valueOf(ia));
            }
            if (o != i) {
                throw s.d("TYPE_CONTINUATION streamId changed", new Object[0]);
            }
        }

        @Override // com.bytedance.sdk.component.ox.dq.gh, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // com.bytedance.sdk.component.ox.dq.gh
        public long dq(com.bytedance.sdk.component.ox.dq.ox oxVar, long j) throws IOException {
            while (true) {
                int i = this.p;
                if (i != 0) {
                    long dq = this.iw.dq(oxVar, Math.min(j, i));
                    if (dq == -1) {
                        return -1L;
                    }
                    this.p = (int) (this.p - dq);
                    return dq;
                }
                this.iw.ia(this.s);
                this.s = (short) 0;
                if ((this.f2086d & 4) != 0) {
                    return -1L;
                }
                d();
            }
        }

        @Override // com.bytedance.sdk.component.ox.dq.gh
        public r dq() {
            return this.iw.dq();
        }
    }

    public ia(com.bytedance.sdk.component.ox.dq.s sVar, boolean z) {
        this.ox = sVar;
        this.s = z;
        dq dqVar = new dq(sVar);
        this.p = dqVar;
        this.f2085d = new p.dq(4096, dqVar);
    }

    private void d(d dVar, int i, byte b2, int i2) throws IOException {
        if (i2 == 0) {
            throw s.d("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
        }
        boolean z = (b2 & 1) != 0;
        if ((b2 & 32) != 0) {
            throw s.d("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
        }
        short ia = (b2 & 8) != 0 ? (short) (this.ox.ia() & 255) : (short) 0;
        dVar.dq(z, i2, this.ox, dq(i, b2, ia));
        this.ox.ia(ia);
    }

    public static int dq(int i, byte b2, short s) throws IOException {
        if ((b2 & 8) != 0) {
            i--;
        }
        if (s <= i) {
            return (short) (i - s);
        }
        throw s.d("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i));
    }

    public static int dq(com.bytedance.sdk.component.ox.dq.s sVar) throws IOException {
        return (sVar.ia() & 255) | ((sVar.ia() & 255) << 16) | ((sVar.ia() & 255) << 8);
    }

    private List<ox> dq(int i, short s, byte b2, int i2) throws IOException {
        dq dqVar = this.p;
        dqVar.p = i;
        dqVar.dq = i;
        dqVar.s = s;
        dqVar.f2086d = b2;
        dqVar.ox = i2;
        this.f2085d.dq();
        return this.f2085d.d();
    }

    private void dq(d dVar, int i) throws IOException {
        this.ox.o();
        this.ox.ia();
    }

    private void dq(d dVar, int i, byte b2, int i2) throws IOException {
        if (i2 == 0) {
            throw s.d("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
        }
        boolean z = (b2 & 1) != 0;
        short ia = (b2 & 8) != 0 ? (short) (this.ox.ia() & 255) : (short) 0;
        if ((b2 & 32) != 0) {
            dq(dVar, i2);
            i -= 5;
        }
        dVar.dq(z, i2, -1, dq(dq(i, b2, ia), ia, b2, i2));
    }

    private void ia(d dVar, int i, byte b2, int i2) throws IOException {
        if (i < 8) {
            throw s.d("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i));
        }
        if (i2 != 0) {
            throw s.d("TYPE_GOAWAY streamId != 0", new Object[0]);
        }
        int o = this.ox.o();
        int o2 = this.ox.o();
        int i3 = i - 8;
        com.bytedance.sdk.component.ox.d.dq.s.d dq2 = com.bytedance.sdk.component.ox.d.dq.s.d.dq(o2);
        if (dq2 == null) {
            throw s.d("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(o2));
        }
        com.bytedance.sdk.component.ox.dq.iw iwVar = com.bytedance.sdk.component.ox.dq.iw.f2156d;
        if (i3 > 0) {
            iwVar = this.ox.ox(i3);
        }
        dVar.dq(o, dq2, iwVar);
    }

    private void iw(d dVar, int i, byte b2, int i2) throws IOException {
        if (i2 == 0) {
            throw s.d("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
        }
        short ia = (b2 & 8) != 0 ? (short) (this.ox.ia() & 255) : (short) 0;
        dVar.dq(i2, this.ox.o() & he.UNDEFINED_ITEM_ID, dq(dq(i - 4, b2, ia), ia, b2, i2));
    }

    private void kk(d dVar, int i, byte b2, int i2) throws IOException {
        if (i != 4) {
            throw s.d("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i));
        }
        long o = this.ox.o() & 2147483647L;
        if (o == 0) {
            throw s.d("windowSizeIncrement was 0", Long.valueOf(o));
        }
        dVar.dq(i2, o);
    }

    private void mn(d dVar, int i, byte b2, int i2) throws IOException {
        if (i != 8) {
            throw s.d("TYPE_PING length != 8: %s", Integer.valueOf(i));
        }
        if (i2 != 0) {
            throw s.d("TYPE_PING streamId != 0", new Object[0]);
        }
        dVar.dq((b2 & 1) != 0, this.ox.o(), this.ox.o());
    }

    private void ox(d dVar, int i, byte b2, int i2) throws IOException {
        if (i != 5) {
            throw s.d("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i));
        }
        if (i2 == 0) {
            throw s.d("TYPE_PRIORITY streamId == 0", new Object[0]);
        }
        dq(dVar, i2);
    }

    private void p(d dVar, int i, byte b2, int i2) throws IOException {
        if (i != 4) {
            throw s.d("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i));
        }
        if (i2 == 0) {
            throw s.d("TYPE_RST_STREAM streamId == 0", new Object[0]);
        }
        int o = this.ox.o();
        com.bytedance.sdk.component.ox.d.dq.s.d dq2 = com.bytedance.sdk.component.ox.d.dq.s.d.dq(o);
        if (dq2 == null) {
            throw s.d("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(o));
        }
        dVar.dq(i2, dq2);
    }

    private void s(d dVar, int i, byte b2, int i2) throws IOException {
        if (i2 != 0) {
            throw s.d("TYPE_SETTINGS streamId != 0", new Object[0]);
        }
        if ((b2 & 1) != 0) {
            if (i != 0) {
                throw s.d("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
            }
            return;
        }
        if (i % 6 != 0) {
            throw s.d("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i));
        }
        q qVar = new q();
        for (int i3 = 0; i3 < i; i3 += 6) {
            short kk = this.ox.kk();
            int o = this.ox.o();
            if (kk != 2) {
                if (kk == 3) {
                    kk = 4;
                } else if (kk == 4) {
                    if (o < 0) {
                        throw s.d("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                    }
                    kk = 7;
                } else if (kk == 5 && (o < 16384 || o > 16777215)) {
                    throw s.d("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(o));
                }
            } else if (o != 0 && o != 1) {
                throw s.d("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
            }
            qVar.dq(kk, o);
        }
        dVar.dq(false, qVar);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.ox.close();
    }

    public void dq(d dVar) throws IOException {
        if (this.s) {
            if (!dq(true, dVar)) {
                throw s.d("Required SETTINGS preface not received", new Object[0]);
            }
            return;
        }
        com.bytedance.sdk.component.ox.dq.s sVar = this.ox;
        com.bytedance.sdk.component.ox.dq.iw iwVar = s.dq;
        com.bytedance.sdk.component.ox.dq.iw ox = sVar.ox(iwVar.mn());
        Logger logger = dq;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(com.bytedance.sdk.component.ox.d.dq.ox.dq("<< CONNECTION %s", ox.s()));
        }
        if (!iwVar.equals(ox)) {
            throw s.d("Expected a connection header but was %s", ox.dq());
        }
    }

    public boolean dq(boolean z, d dVar) throws IOException {
        try {
            this.ox.dq(9L);
            int dq2 = dq(this.ox);
            if (dq2 < 0 || dq2 > 16384) {
                throw s.d("FRAME_SIZE_ERROR: %s", Integer.valueOf(dq2));
            }
            byte ia = (byte) (this.ox.ia() & 255);
            if (z && ia != 4) {
                throw s.d("Expected a SETTINGS frame but was %s", Byte.valueOf(ia));
            }
            byte ia2 = (byte) (this.ox.ia() & 255);
            int o = this.ox.o() & he.UNDEFINED_ITEM_ID;
            Logger logger = dq;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(s.dq(true, o, dq2, ia, ia2));
            }
            switch (ia) {
                case 0:
                    d(dVar, dq2, ia2, o);
                    return true;
                case 1:
                    dq(dVar, dq2, ia2, o);
                    return true;
                case 2:
                    ox(dVar, dq2, ia2, o);
                    return true;
                case 3:
                    p(dVar, dq2, ia2, o);
                    return true;
                case 4:
                    s(dVar, dq2, ia2, o);
                    return true;
                case 5:
                    iw(dVar, dq2, ia2, o);
                    return true;
                case 6:
                    mn(dVar, dq2, ia2, o);
                    return true;
                case 7:
                    ia(dVar, dq2, ia2, o);
                    return true;
                case 8:
                    kk(dVar, dq2, ia2, o);
                    return true;
                default:
                    this.ox.ia(dq2);
                    return true;
            }
        } catch (IOException unused) {
            return false;
        }
    }
}

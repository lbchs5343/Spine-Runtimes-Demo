package com.bytedance.sdk.component.ox.d.dq.s;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.component.ox.d.dq.s.p;
import g.he;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
final class o implements Closeable {

    /* renamed from: d, reason: collision with root package name */
    private static final Logger f2099d = Logger.getLogger(s.class.getName());
    final p.d dq;
    private int iw;
    private boolean mn;
    private final com.bytedance.sdk.component.ox.dq.p ox;
    private final boolean p;
    private final com.bytedance.sdk.component.ox.dq.ox s;

    public o(com.bytedance.sdk.component.ox.dq.p pVar, boolean z) {
        this.ox = pVar;
        this.p = z;
        com.bytedance.sdk.component.ox.dq.ox oxVar = new com.bytedance.sdk.component.ox.dq.ox();
        this.s = oxVar;
        this.dq = new p.d(oxVar);
        this.iw = 16384;
    }

    private void d(int i, long j) throws IOException {
        while (j > 0) {
            int min = (int) Math.min(this.iw, j);
            long j2 = min;
            j -= j2;
            dq(i, min, (byte) 9, j == 0 ? (byte) 4 : (byte) 0);
            this.ox.a_(this.s, j2);
        }
    }

    private static void dq(com.bytedance.sdk.component.ox.dq.p pVar, int i) throws IOException {
        pVar.kk((i >>> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        pVar.kk((i >>> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        pVar.kk(i & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.mn = true;
        this.ox.close();
    }

    public synchronized void d() throws IOException {
        if (this.mn) {
            throw new IOException("closed");
        }
        this.ox.flush();
    }

    public synchronized void d(q qVar) throws IOException {
        try {
            if (this.mn) {
                throw new IOException("closed");
            }
            int i = 0;
            dq(0, qVar.d() * 6, (byte) 4, (byte) 0);
            while (i < 10) {
                if (qVar.dq(i)) {
                    this.ox.ia(i == 4 ? 3 : i == 7 ? 4 : i);
                    this.ox.mn(qVar.d(i));
                }
                i++;
            }
            this.ox.flush();
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void dq() throws IOException {
        try {
            if (this.mn) {
                throw new IOException("closed");
            }
            if (this.p) {
                Logger logger = f2099d;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(com.bytedance.sdk.component.ox.d.dq.ox.dq(">> CONNECTION %s", s.dq.s()));
                }
                this.ox.ox(s.dq.ia());
                this.ox.flush();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void dq(int i, byte b2, com.bytedance.sdk.component.ox.dq.ox oxVar, int i2) throws IOException {
        dq(i, i2, (byte) 0, b2);
        if (i2 > 0) {
            this.ox.a_(oxVar, i2);
        }
    }

    public void dq(int i, int i2, byte b2, byte b3) throws IOException {
        Logger logger = f2099d;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(s.dq(false, i, i2, b2, b3));
        }
        int i3 = this.iw;
        if (i2 > i3) {
            throw s.dq("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i3), Integer.valueOf(i2));
        }
        if ((Integer.MIN_VALUE & i) != 0) {
            throw s.dq("reserved bit set: %s", Integer.valueOf(i));
        }
        dq(this.ox, i2);
        this.ox.kk(b2 & 255);
        this.ox.kk(b3 & 255);
        this.ox.mn(i & he.UNDEFINED_ITEM_ID);
    }

    public synchronized void dq(int i, int i2, List<ox> list) throws IOException {
        if (this.mn) {
            throw new IOException("closed");
        }
        this.dq.dq(list);
        long d2 = this.s.d();
        int min = (int) Math.min(this.iw - 4, d2);
        long j = min;
        dq(i, min + 4, (byte) 5, d2 == j ? (byte) 4 : (byte) 0);
        this.ox.mn(i2 & he.UNDEFINED_ITEM_ID);
        this.ox.a_(this.s, j);
        if (d2 > j) {
            d(i, d2 - j);
        }
    }

    public synchronized void dq(int i, long j) throws IOException {
        if (this.mn) {
            throw new IOException("closed");
        }
        if (j == 0 || j > 2147483647L) {
            throw s.dq("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j));
        }
        dq(i, 4, (byte) 8, (byte) 0);
        this.ox.mn((int) j);
        this.ox.flush();
    }

    public synchronized void dq(int i, d dVar) throws IOException {
        if (this.mn) {
            throw new IOException("closed");
        }
        if (dVar.mn == -1) {
            throw new IllegalArgumentException();
        }
        dq(i, 4, (byte) 3, (byte) 0);
        this.ox.mn(dVar.mn);
        this.ox.flush();
    }

    public synchronized void dq(int i, d dVar, byte[] bArr) throws IOException {
        try {
            if (this.mn) {
                throw new IOException("closed");
            }
            if (dVar.mn == -1) {
                throw s.dq("errorCode.httpCode == -1", new Object[0]);
            }
            dq(0, bArr.length + 8, (byte) 7, (byte) 0);
            this.ox.mn(i);
            this.ox.mn(dVar.mn);
            if (bArr.length > 0) {
                this.ox.ox(bArr);
            }
            this.ox.flush();
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void dq(q qVar) throws IOException {
        try {
            if (this.mn) {
                throw new IOException("closed");
            }
            this.iw = qVar.p(this.iw);
            if (qVar.ox() != -1) {
                this.dq.dq(qVar.ox());
            }
            dq(0, 0, (byte) 4, (byte) 1);
            this.ox.flush();
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void dq(boolean z, int i, int i2) throws IOException {
        if (this.mn) {
            throw new IOException("closed");
        }
        dq(0, 8, (byte) 6, z ? (byte) 1 : (byte) 0);
        this.ox.mn(i);
        this.ox.mn(i2);
        this.ox.flush();
    }

    public synchronized void dq(boolean z, int i, int i2, List<ox> list) throws IOException {
        if (this.mn) {
            throw new IOException("closed");
        }
        dq(z, i, list);
    }

    public synchronized void dq(boolean z, int i, com.bytedance.sdk.component.ox.dq.ox oxVar, int i2) throws IOException {
        if (this.mn) {
            throw new IOException("closed");
        }
        dq(i, z ? (byte) 1 : (byte) 0, oxVar, i2);
    }

    public void dq(boolean z, int i, List<ox> list) throws IOException {
        if (this.mn) {
            throw new IOException("closed");
        }
        this.dq.dq(list);
        long d2 = this.s.d();
        int min = (int) Math.min(this.iw, d2);
        long j = min;
        byte b2 = d2 == j ? (byte) 4 : (byte) 0;
        if (z) {
            b2 = (byte) (b2 | 1);
        }
        dq(i, min, (byte) 1, b2);
        this.ox.a_(this.s, j);
        if (d2 > j) {
            d(i, d2 - j);
        }
    }

    public int ox() {
        return this.iw;
    }
}

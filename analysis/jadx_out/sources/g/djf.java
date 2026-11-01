package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public final class djf implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f14266a = Logger.getLogger(aby.class.getName());

    /* renamed from: b, reason: collision with root package name */
    public int f14267b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f14268c;

    /* renamed from: d, reason: collision with root package name */
    public final brz f14269d;

    /* renamed from: e, reason: collision with root package name */
    public final cbs f14270e;

    /* renamed from: f, reason: collision with root package name */
    public final clq f14271f;

    public djf(ago agoVar) {
        bff.p(agoVar, "sink");
        this.f14270e = agoVar;
        clq clqVar = new clq();
        this.f14271f = clqVar;
        this.f14267b = 16384;
        this.f14269d = new brz(clqVar);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.f14268c = true;
        this.f14270e.close();
    }

    public final synchronized void flush() {
        if (this.f14268c) {
            throw new IOException("closed");
        }
        this.f14270e.flush();
    }

    public final synchronized void g(int i, amc amcVar) {
        bff.p(amcVar, MediationConstant.KEY_ERROR_CODE);
        if (this.f14268c) {
            throw new IOException("closed");
        }
        if (amcVar.b() == -1) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        h(i, 4, 3, 0);
        this.f14270e.writeInt(amcVar.b());
        this.f14270e.flush();
    }

    public final void h(int i, int i2, int i3, int i4) {
        Level level = Level.FINE;
        Logger logger = f14266a;
        if (logger.isLoggable(level)) {
            logger.fine(aby.e(i, i2, i3, i4, false));
        }
        if (i2 > this.f14267b) {
            throw new IllegalArgumentException(("FRAME_SIZE_ERROR length > " + this.f14267b + ": " + i2).toString());
        }
        if ((Integer.MIN_VALUE & i) != 0) {
            throw new IllegalArgumentException(awf.ac(i, "reserved bit set: ").toString());
        }
        byte[] bArr = erq.f16043c;
        cbs cbsVar = this.f14270e;
        bff.p(cbsVar, "<this>");
        cbsVar.writeByte((i2 >>> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        cbsVar.writeByte((i2 >>> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        cbsVar.writeByte(i2 & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        cbsVar.writeByte(i3 & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        cbsVar.writeByte(i4 & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        cbsVar.writeInt(i & he.UNDEFINED_ITEM_ID);
    }

    public final synchronized void i(int i, amc amcVar, byte[] bArr) {
        bff.p(amcVar, MediationConstant.KEY_ERROR_CODE);
        if (this.f14268c) {
            throw new IOException("closed");
        }
        if (amcVar.b() == -1) {
            throw new IllegalArgumentException("errorCode.httpCode == -1");
        }
        h(0, bArr.length + 8, 7, 0);
        this.f14270e.writeInt(i);
        this.f14270e.writeInt(amcVar.b());
        if (bArr.length != 0) {
            this.f14270e.write(bArr);
        }
        this.f14270e.flush();
    }

    public final synchronized void j(boolean z, int i, ArrayList arrayList) {
        if (this.f14268c) {
            throw new IOException("closed");
        }
        this.f14269d.i(arrayList);
        long j = this.f14271f.f13080b;
        long min = Math.min(this.f14267b, j);
        int i2 = j == min ? 4 : 0;
        if (z) {
            i2 |= 1;
        }
        h(i, (int) min, 1, i2);
        this.f14270e.f(this.f14271f, min);
        if (j > min) {
            long j2 = j - min;
            while (j2 > 0) {
                long min2 = Math.min(this.f14267b, j2);
                j2 -= min2;
                h(i, (int) min2, 9, j2 == 0 ? 4 : 0);
                this.f14270e.f(this.f14271f, min2);
            }
        }
    }

    public final synchronized void k(che cheVar) {
        try {
            bff.p(cheVar, "peerSettings");
            if (this.f14268c) {
                throw new IOException("closed");
            }
            int i = this.f14267b;
            int i2 = cheVar.f12870a;
            if ((i2 & 32) != 0) {
                i = cheVar.f12871b[5];
            }
            this.f14267b = i;
            if (((i2 & 2) != 0 ? cheVar.f12871b[1] : -1) != -1) {
                brz brzVar = this.f14269d;
                int i3 = (i2 & 2) != 0 ? cheVar.f12871b[1] : -1;
                brzVar.getClass();
                int min = Math.min(i3, 16384);
                int i4 = brzVar.f12101b;
                if (i4 != min) {
                    if (min < i4) {
                        brzVar.f12105f = Math.min(brzVar.f12105f, min);
                    }
                    brzVar.f12106g = true;
                    brzVar.f12101b = min;
                    int i5 = brzVar.f12100a;
                    if (min < i5) {
                        if (min == 0) {
                            heb[] hebVarArr = brzVar.f12102c;
                            fuv.be(hebVarArr, null, 0, hebVarArr.length);
                            brzVar.f12104e = brzVar.f12102c.length - 1;
                            brzVar.h = 0;
                            brzVar.f12100a = 0;
                        } else {
                            brzVar.k(i5 - min);
                        }
                    }
                }
            }
            h(0, 0, 4, 1);
            this.f14270e.flush();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void l(che cheVar) {
        try {
            bff.p(cheVar, "settings");
            if (this.f14268c) {
                throw new IOException("closed");
            }
            h(0, Integer.bitCount(cheVar.f12870a) * 6, 4, 0);
            int i = 0;
            while (i < 10) {
                boolean z = true;
                if (((1 << i) & cheVar.f12870a) == 0) {
                    z = false;
                }
                if (z) {
                    this.f14270e.writeShort(i != 4 ? i != 7 ? i : 4 : 3);
                    this.f14270e.writeInt(cheVar.f12871b[i]);
                }
                i++;
            }
            this.f14270e.flush();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void m(boolean z, int i, clq clqVar, int i2) {
        if (this.f14268c) {
            throw new IOException("closed");
        }
        h(i, i2, 0, z ? 1 : 0);
        if (i2 > 0) {
            cbs cbsVar = this.f14270e;
            bff.d(clqVar);
            cbsVar.f(clqVar, i2);
        }
    }

    public final synchronized void n(int i, long j) {
        if (this.f14268c) {
            throw new IOException("closed");
        }
        if (j == 0 || j > 2147483647L) {
            throw new IllegalArgumentException(("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: " + j).toString());
        }
        h(i, 4, 8, 0);
        this.f14270e.writeInt((int) j);
        this.f14270e.flush();
    }

    public final synchronized void o(int i, int i2, boolean z) {
        if (this.f14268c) {
            throw new IOException("closed");
        }
        h(0, 8, 6, z ? 1 : 0);
        this.f14270e.writeInt(i);
        this.f14270e.writeInt(i2);
        this.f14270e.flush();
    }
}

package com.ss.android.socialbase.downloader.network;

import android.net.TrafficStats;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    private static final String f9449d = "d";
    public static volatile boolean dq = false;
    private static volatile d ia = null;
    private static long mn = -1;
    private long iw;
    private final no ox = no.dq();
    private final AtomicInteger p = new AtomicInteger();
    private final dq s = new dq(com.ss.android.socialbase.downloader.ia.s.dq());

    public class dq extends Handler {
        public dq(Looper looper) {
            super(looper);
        }

        public void d() {
            removeMessages(1);
        }

        public void dq() {
            sendEmptyMessage(1);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                return;
            }
            d.this.iw();
            sendEmptyMessageDelayed(1, 1000L);
        }
    }

    private d() {
    }

    public static d dq() {
        if (ia == null) {
            synchronized (d.class) {
                try {
                    if (ia == null) {
                        ia = new d();
                    }
                } finally {
                }
            }
        }
        return ia;
    }

    public static long p() {
        return TrafficStats.getTotalRxBytes() - TrafficStats.getMobileRxBytes();
    }

    public static void s() {
        dq = com.ss.android.socialbase.downloader.kk.iw.d(com.ss.android.socialbase.downloader.downloader.ox.ob());
    }

    public void d() {
        try {
            com.ss.android.socialbase.downloader.ox.dq.ox(f9449d, "startSampling: mSamplingCounter = " + this.p);
            if (this.p.getAndIncrement() == 0) {
                this.s.dq();
                this.iw = SystemClock.uptimeMillis();
            }
        } catch (Throwable unused) {
        }
    }

    public void iw() {
        try {
            s();
            long p = dq ? p() : TrafficStats.getMobileRxBytes();
            long j = mn;
            long j2 = p - j;
            if (j >= 0) {
                synchronized (this) {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    this.ox.dq(j2, uptimeMillis - this.iw);
                    this.iw = uptimeMillis;
                }
            }
            mn = p;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void mn() {
        iw();
        mn = -1L;
    }

    public void ox() {
        try {
            com.ss.android.socialbase.downloader.ox.dq.ox(f9449d, "stopSampling: mSamplingCounter = " + this.p);
            if (this.p.decrementAndGet() == 0) {
                this.s.d();
                mn();
            }
        } catch (Throwable unused) {
        }
    }
}

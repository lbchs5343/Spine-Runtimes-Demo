package com.bytedance.msdk.mn.ox;

import com.bytedance.msdk.ia.bl;
import com.bytedance.msdk.mn.s;

/* loaded from: classes.dex */
public class dq {
    private static volatile dq dq;
    private int ox = -1;

    /* renamed from: d, reason: collision with root package name */
    private bl f1119d = s.iw();

    private dq() {
    }

    public static dq dq() {
        if (dq == null) {
            synchronized (dq.class) {
                try {
                    if (dq == null) {
                        dq = new dq();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public int d() {
        int i = this.ox;
        if (i != -1) {
            return i;
        }
        int d2 = this.f1119d.d("load_mode", 0);
        this.ox = d2;
        return d2;
    }

    public void dq(int i) {
        this.ox = i;
        this.f1119d.dq("load_mode", i);
    }

    public void dq(long j) {
        try {
            if (this.f1119d.d("first_install_time", -1L) == -1) {
                long d2 = s.dq().d("first_install_time", -1L);
                if (d2 != -1) {
                    j = d2;
                }
                this.f1119d.dq("first_install_time", j);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public synchronized int iw() {
        return this.f1119d.d("discard_num", 0);
    }

    public synchronized void mn() {
        this.f1119d.dq("discard_num", 0);
    }

    public boolean ox() {
        return d() == 1;
    }

    public long p() {
        try {
            long d2 = this.f1119d.d("first_install_time", -1L);
            if (d2 == -1) {
                d2 = s.dq().d("first_install_time", -1L);
                if (d2 == -1) {
                    d2 = System.currentTimeMillis();
                }
                this.f1119d.dq("first_install_time", d2);
            }
            return d2;
        } catch (Throwable th) {
            th.printStackTrace();
            return 0L;
        }
    }

    public synchronized void s() {
        this.f1119d.dq("discard_num", this.f1119d.d("discard_num", 0) + 1);
    }
}

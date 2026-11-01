package com.ss.android.socialbase.downloader.network;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class no {
    private static final String dq = "no";

    /* renamed from: d, reason: collision with root package name */
    private final p f9456d;
    private final ArrayList<Object> iw;
    private int mn;
    private volatile boolean ox;
    private final AtomicReference<ig> p;
    private AtomicReference<ig> s;

    /* renamed from: com.ss.android.socialbase.downloader.network.no$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] dq;

        static {
            int[] iArr = new int[ig.values().length];
            dq = iArr;
            try {
                iArr[ig.POOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                dq[ig.MODERATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                dq[ig.GOOD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                dq[ig.EXCELLENT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static class dq {
        public static final no dq = new no(null);
    }

    private no() {
        this.f9456d = new p(0.05d);
        this.ox = false;
        this.p = new AtomicReference<>(ig.UNKNOWN);
        this.iw = new ArrayList<>();
    }

    public /* synthetic */ no(AnonymousClass1 anonymousClass1) {
        this();
    }

    private ig dq(double d2) {
        return d2 < 0.0d ? ig.UNKNOWN : d2 < 150.0d ? ig.POOR : d2 < 550.0d ? ig.MODERATE : d2 < 2000.0d ? ig.GOOD : ig.EXCELLENT;
    }

    public static no dq() {
        return dq.dq;
    }

    private boolean ox() {
        double d2;
        if (this.f9456d == null) {
            return false;
        }
        try {
            int i = AnonymousClass1.dq[this.p.get().ordinal()];
            double d3 = 150.0d;
            if (i == 1) {
                d2 = 0.0d;
            } else if (i == 2) {
                d2 = 150.0d;
                d3 = 550.0d;
            } else if (i == 3) {
                d2 = 550.0d;
                d3 = 2000.0d;
            } else {
                if (i != 4) {
                    return true;
                }
                d3 = 3.4028234663852886E38d;
                d2 = 2000.0d;
            }
            double dq2 = this.f9456d.dq();
            if (dq2 > d3) {
                if (dq2 > d3 * 1.25d) {
                    return true;
                }
            } else if (dq2 < d2 * 0.8d) {
                return true;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return false;
    }

    private void p() {
        try {
            int size = this.iw.size();
            for (int i = 0; i < size; i++) {
                this.iw.get(i);
                this.p.get();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public synchronized ig d() {
        p pVar = this.f9456d;
        if (pVar == null) {
            return ig.UNKNOWN;
        }
        try {
            return dq(pVar.dq());
        } catch (Throwable th) {
            th.printStackTrace();
            return ig.UNKNOWN;
        }
    }

    public synchronized void dq(long j, long j2) {
        double d2 = ((j * 1.0d) / j2) * 8.0d;
        if (j2 == 0 || d2 < 3.0d) {
            return;
        }
        try {
            this.f9456d.dq(d2);
            ig d3 = d();
            if (!this.ox) {
                if (this.p.get() != d3) {
                    this.ox = true;
                    this.s = new AtomicReference<>(d3);
                }
                return;
            }
            this.mn++;
            if (d3 != this.s.get()) {
                this.ox = false;
                this.mn = 1;
            }
            if (this.mn >= 5.0d && ox()) {
                this.ox = false;
                this.mn = 1;
                this.p.set(this.s.get());
                p();
            }
        } catch (Throwable unused) {
        }
    }
}

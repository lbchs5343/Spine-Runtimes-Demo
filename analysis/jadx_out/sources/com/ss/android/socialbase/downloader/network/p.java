package com.ss.android.socialbase.downloader.network;

import g.he;

/* loaded from: classes.dex */
class p {

    /* renamed from: d, reason: collision with root package name */
    private final int f9461d;
    private final double dq;
    private double ox = -1.0d;
    private int p;

    public p(double d2) {
        this.dq = d2;
        this.f9461d = d2 == 0.0d ? he.UNDEFINED_ITEM_ID : (int) Math.ceil(1.0d / d2);
    }

    public double dq() {
        return this.ox;
    }

    public void dq(double d2) {
        double d3 = 1.0d - this.dq;
        int i = this.p;
        if (i > this.f9461d) {
            this.ox = Math.exp((Math.log(d2) * this.dq) + (Math.log(this.ox) * d3));
        } else if (i > 0) {
            double d4 = (d3 * i) / (i + 1.0d);
            this.ox = Math.exp((Math.log(d2) * (1.0d - d4)) + (Math.log(this.ox) * d4));
        } else {
            this.ox = d2;
        }
        this.p++;
    }
}

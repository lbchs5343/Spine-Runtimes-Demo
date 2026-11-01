package com.bytedance.sdk.component.widget.dq;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private static volatile dq f2239d;
    private volatile d dq;

    private dq() {
    }

    public static dq dq() {
        if (f2239d == null) {
            synchronized (dq.class) {
                try {
                    if (f2239d == null) {
                        f2239d = new dq();
                    }
                } finally {
                }
            }
        }
        return f2239d;
    }

    public d d() {
        return this.dq;
    }
}

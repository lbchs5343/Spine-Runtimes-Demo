package com.bytedance.sdk.component.d.dq.dq;

import com.bytedance.sdk.component.d.dq.dq.d.ox;
import com.bytedance.sdk.component.d.dq.ig;
import com.bytedance.sdk.component.ox.d.k;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private static AtomicBoolean f1842d = new AtomicBoolean(true);
    private static volatile dq dq;

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

    public static ig dq(ig.dq dqVar) {
        return new ox(dqVar);
    }

    public static ig dq(k.dq dqVar) {
        return new com.bytedance.sdk.component.d.dq.dq.dq.ox(dqVar);
    }

    public boolean d() {
        AtomicBoolean atomicBoolean = f1842d;
        if (atomicBoolean == null) {
            return true;
        }
        return atomicBoolean.get();
    }

    public void dq(boolean z) {
        "set useOkHttp:".concat(String.valueOf(z));
        f1842d.set(z);
    }
}

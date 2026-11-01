package com.bytedance.sdk.component.adexpress.p;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class p {
    public static void d(com.bytedance.sdk.component.o.kk kkVar, int i) {
        if (kkVar == null) {
            return;
        }
        com.bytedance.sdk.component.adexpress.dq.dq.ox ox = com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox();
        ExecutorService mp = ox != null ? ox.mp() : null;
        if (mp == null) {
            com.bytedance.sdk.component.o.mn.dq(kkVar);
        } else {
            kkVar.dq(i);
            mp.execute(kkVar);
        }
    }

    public static ScheduledFuture dq(Runnable runnable, long j, TimeUnit timeUnit) {
        return com.bytedance.sdk.component.o.mn.p().schedule(runnable, j, timeUnit);
    }

    public static void dq(com.bytedance.sdk.component.o.kk kkVar, int i) {
        if (kkVar == null) {
            return;
        }
        com.bytedance.sdk.component.adexpress.dq.dq.ox ox = com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox();
        ExecutorService q = ox != null ? ox.q() : null;
        if (q == null) {
            com.bytedance.sdk.component.o.mn.dq(kkVar, i);
        } else {
            kkVar.dq(i);
            q.execute(kkVar);
        }
    }
}

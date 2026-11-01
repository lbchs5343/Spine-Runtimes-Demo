package com.bytedance.sdk.openadsdk.q;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    private ia f3850d;
    private ScheduledExecutorService dq = null;
    private long ox = 0;
    private int p;

    public d(ia iaVar, int i) {
        this.f3850d = iaVar;
        this.p = i;
    }

    public boolean d() {
        ScheduledExecutorService scheduledExecutorService = this.dq;
        if (scheduledExecutorService != null) {
            return scheduledExecutorService.isShutdown();
        }
        return true;
    }

    public void dq() {
        ScheduledExecutorService scheduledExecutorService = this.dq;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdown();
        }
    }

    public void dq(int i) {
        ScheduledExecutorService d2 = com.bytedance.sdk.component.o.ox.d(1, new com.bytedance.sdk.component.o.o("/CrashMonitor"));
        this.dq = d2;
        d2.scheduleAtFixedRate(new Runnable() { // from class: com.bytedance.sdk.openadsdk.q.d.1
            @Override // java.lang.Runnable
            public void run() {
                System.currentTimeMillis();
                if (System.currentTimeMillis() - d.this.ox > d.this.p) {
                    d.this.dq.shutdown();
                    if (d.this.f3850d != null) {
                        d.this.f3850d.d(0, "自动检测卡死");
                    }
                }
            }
        }, 0L, i, TimeUnit.MILLISECONDS);
    }

    public void dq(long j) {
        this.ox = j;
    }
}

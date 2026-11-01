package com.bytedance.sdk.openadsdk.core.mp;

import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Queue;

/* loaded from: classes3.dex */
public abstract class d {

    /* renamed from: d, reason: collision with root package name */
    private static volatile long f3171d;
    private static volatile boolean dq;
    private final Queue<dq> ox = new LinkedList();
    private Handler p;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        private final String f3172d;
        private final long dq;

        private dq(long j, String str) {
            this.dq = j;
            this.f3172d = str;
        }
    }

    private synchronized void d(long j) {
        f3171d = j;
    }

    private synchronized boolean d(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        int d2 = d();
        long ox = ox();
        if (this.ox.size() <= 0 || this.ox.size() < d2) {
            this.ox.offer(new dq(currentTimeMillis, str));
        } else {
            long abs = Math.abs(currentTimeMillis - this.ox.peek().dq);
            if (abs <= ox) {
                d(ox - abs);
                return true;
            }
            this.ox.poll();
            this.ox.offer(new dq(currentTimeMillis, str));
        }
        return false;
    }

    private void dq(long j) {
        if (this.p == null) {
            this.p = new Handler(Looper.getMainLooper());
        }
        this.p.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.mp.d.1
            @Override // java.lang.Runnable
            public void run() {
                d.this.dq(false);
            }
        }, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void dq(boolean z) {
        dq = z;
    }

    public abstract int d();

    public synchronized boolean dq(String str) {
        try {
            if (d(str)) {
                dq(true);
                dq(f3171d);
            } else {
                dq(false);
            }
        } catch (Throwable th) {
            throw th;
        }
        return dq;
    }

    public abstract long ox();

    public boolean p() {
        return dq;
    }

    public synchronized String s() {
        String str;
        try {
            HashMap hashMap = new HashMap();
            for (dq dqVar : this.ox) {
                if (hashMap.containsKey(dqVar.f3172d)) {
                    hashMap.put(dqVar.f3172d, Integer.valueOf(((Integer) hashMap.get(dqVar.f3172d)).intValue() + 1));
                } else {
                    hashMap.put(dqVar.f3172d, 1);
                }
            }
            str = "";
            int i = Integer.MIN_VALUE;
            for (String str2 : hashMap.keySet()) {
                int intValue = ((Integer) hashMap.get(str2)).intValue();
                if (i < intValue) {
                    str = str2;
                    i = intValue;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return str;
    }
}

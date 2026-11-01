package com.tencent.bugly.proguard;

import android.os.Handler;
import android.os.SystemClock;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public final class bf implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final Handler f9679a;

    /* renamed from: d, reason: collision with root package name */
    long f9682d;

    /* renamed from: e, reason: collision with root package name */
    private final String f9683e;

    /* renamed from: f, reason: collision with root package name */
    private final List<ba> f9684f = new LinkedList();

    /* renamed from: b, reason: collision with root package name */
    long f9680b = PushUIConfig.dismissTime;

    /* renamed from: g, reason: collision with root package name */
    private final long f9685g = PushUIConfig.dismissTime;

    /* renamed from: c, reason: collision with root package name */
    boolean f9681c = true;

    public bf(Handler handler, String str) {
        this.f9679a = handler;
        this.f9683e = str;
    }

    private Thread e() {
        return this.f9679a.getLooper().getThread();
    }

    public final boolean a() {
        return !this.f9681c && SystemClock.uptimeMillis() >= this.f9682d + this.f9680b;
    }

    public final long b() {
        return SystemClock.uptimeMillis() - this.f9682d;
    }

    public final List<ba> c() {
        ArrayList arrayList;
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (this.f9684f) {
            try {
                arrayList = new ArrayList(this.f9684f.size());
                for (int i = 0; i < this.f9684f.size(); i++) {
                    ba baVar = this.f9684f.get(i);
                    if (!baVar.f9664e && currentTimeMillis - baVar.f9661b < 200000) {
                        arrayList.add(baVar);
                        baVar.f9664e = true;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return arrayList;
    }

    public final void d() {
        StringBuilder sb = new StringBuilder(1024);
        long nanoTime = System.nanoTime();
        try {
            StackTraceElement[] stackTrace = e().getStackTrace();
            if (stackTrace.length == 0) {
                sb.append("Thread does not have stack trace.\n");
            } else {
                for (StackTraceElement stackTraceElement : stackTrace) {
                    sb.append(stackTraceElement);
                    sb.append("\n");
                }
            }
        } catch (SecurityException e2) {
            sb.append("getStackTrace() encountered:\n");
            sb.append(e2.getMessage());
            sb.append("\n");
            al.a(e2);
        }
        long nanoTime2 = System.nanoTime();
        ba baVar = new ba(sb.toString(), System.currentTimeMillis());
        baVar.f9663d = nanoTime2 - nanoTime;
        String name = e().getName();
        if (name == null) {
            name = "";
        }
        baVar.f9660a = name;
        synchronized (this.f9684f) {
            while (this.f9684f.size() >= 32) {
                try {
                    this.f9684f.remove(0);
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.f9684f.add(baVar);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9681c = true;
        this.f9680b = this.f9685g;
    }
}

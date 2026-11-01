package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import g.ebk;
import g.foq;

/* loaded from: classes.dex */
public final class at {
    private static at D = null;

    /* renamed from: a, reason: collision with root package name */
    public static int f9620a = 0;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f9621b = false;

    /* renamed from: d, reason: collision with root package name */
    public static int f9622d = 2;

    /* renamed from: e, reason: collision with root package name */
    public static boolean f9623e = false;

    /* renamed from: f, reason: collision with root package name */
    public static int f9624f = 20480;

    /* renamed from: g, reason: collision with root package name */
    public static int f9625g = 3000;
    public static int h = 20480;
    public static long i = 209715200;
    public static long j = 604800000;
    public static String k = null;
    public static boolean l = false;
    public static String m = null;
    public static int n = 5000;
    public static boolean o = true;
    public static boolean p;
    public static String q;
    public static String r;
    public Boolean A;
    public int B = 31;
    public boolean C = false;

    /* renamed from: c, reason: collision with root package name */
    public final Context f9626c;
    public final as s;
    public final av t;
    public final NativeCrashHandler u;
    public final ac v;
    public final ak w;
    public final ay x;
    public BuglyStrategy.a y;
    public aw z;

    private at(Context context, ak akVar, boolean z, BuglyStrategy.a aVar) {
        f9620a = 1004;
        Context a2 = ap.a(context);
        this.f9626c = a2;
        ac a3 = ac.a();
        this.v = a3;
        this.w = akVar;
        this.y = aVar;
        this.z = null;
        as asVar = new as(a2, ai.a(), w.a(), a3, aVar);
        this.s = asVar;
        aa a4 = aa.a(a2);
        this.t = new av(a2, asVar, a3, a4);
        NativeCrashHandler nativeCrashHandler = NativeCrashHandler.getInstance(a2, a4, asVar, a3, akVar, z, null);
        this.u = nativeCrashHandler;
        a4.N = nativeCrashHandler;
        if (ay.f9653f == null) {
            ay.f9653f = new ay(a2, a3, a4, akVar, asVar);
        }
        this.x = ay.f9653f;
    }

    public static synchronized at a() {
        at atVar;
        synchronized (at.class) {
            atVar = D;
        }
        return atVar;
    }

    public static synchronized at a(Context context, boolean z, BuglyStrategy.a aVar) {
        at atVar;
        synchronized (at.class) {
            try {
                if (D == null) {
                    D = new at(context, ak.a(), z, aVar);
                }
                atVar = D;
            } catch (Throwable th) {
                throw th;
            }
        }
        return atVar;
    }

    public final void a(long j2) {
        ak.a().a(new ebk(0, this), j2);
    }

    public final void a(CrashDetailBean crashDetailBean) {
        this.s.b(crashDetailBean);
    }

    public final synchronized void a(boolean z, boolean z2, boolean z3) {
        this.u.testNativeCrash(z, z2, z3);
    }

    public final synchronized void b() {
        this.t.a();
        e();
        f();
    }

    public final synchronized void c() {
        this.t.b();
        d();
        g();
    }

    public final void d() {
        this.u.setUserOpened(false);
    }

    public final void e() {
        this.u.setUserOpened(true);
    }

    public final void f() {
        new Handler(Looper.getMainLooper()).post(new foq(3));
        this.x.b(true);
    }

    public final void g() {
        new Handler(Looper.getMainLooper()).post(new foq(4));
        this.x.b(false);
    }

    public final synchronized void h() {
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (i2 < 30) {
                try {
                    al.a("try main sleep for make a test anr! try:%d/30 , kill it if you don't want to wait!", Integer.valueOf(i3));
                    ap.b(PushUIConfig.dismissTime);
                    i2 = i3;
                } catch (Throwable th) {
                    if (al.a(th)) {
                        return;
                    }
                    th.printStackTrace();
                    return;
                }
            }
        }
    }

    public final boolean i() {
        return this.x.f9654a.get();
    }

    public final boolean j() {
        return (this.B & 16) > 0;
    }

    public final boolean k() {
        return (this.B & 8) > 0;
    }
}

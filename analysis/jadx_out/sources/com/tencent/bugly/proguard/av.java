package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import g.awf;
import java.lang.Thread;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class av implements Thread.UncaughtExceptionHandler {
    private static String h;
    private static final Object i = new Object();

    /* renamed from: a, reason: collision with root package name */
    protected final Context f9639a;

    /* renamed from: b, reason: collision with root package name */
    protected final as f9640b;

    /* renamed from: c, reason: collision with root package name */
    protected final ac f9641c;

    /* renamed from: d, reason: collision with root package name */
    protected final aa f9642d;

    /* renamed from: e, reason: collision with root package name */
    protected Thread.UncaughtExceptionHandler f9643e;

    /* renamed from: f, reason: collision with root package name */
    protected Thread.UncaughtExceptionHandler f9644f;

    /* renamed from: g, reason: collision with root package name */
    protected boolean f9645g = false;
    private int j;

    public av(Context context, as asVar, ac acVar, aa aaVar) {
        this.f9639a = context;
        this.f9640b = asVar;
        this.f9641c = acVar;
        this.f9642d = aaVar;
    }

    private static String a(Throwable th) {
        String message = th.getMessage();
        if (message == null) {
            return "";
        }
        if (message.length() <= 1000) {
            return message;
        }
        return message.substring(0, 1000) + "\n[Message over limit size:1000, has been cutted!]";
    }

    private static String a(Throwable th, int i2) {
        if (th == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        try {
            if (th.getStackTrace() != null) {
                for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                    if (i2 > 0 && sb.length() >= i2) {
                        sb.append("\n[Stack over limit size :" + i2 + " , has been cutted !]");
                        return sb.toString();
                    }
                    sb.append(stackTraceElement.toString());
                    sb.append("\n");
                }
            }
        } catch (Throwable th2) {
            al.e("gen stack error %s", th2.toString());
        }
        return sb.toString();
    }

    private static void a(CrashDetailBean crashDetailBean, Throwable th, boolean z) {
        String a2;
        String name = th.getClass().getName();
        String a3 = a(th);
        al.e("stack frame :%d, has cause %b", Integer.valueOf(th.getStackTrace().length), Boolean.valueOf(th.getCause() != null));
        String str = "";
        String stackTraceElement = th.getStackTrace().length > 0 ? th.getStackTrace()[0].toString() : "";
        Throwable th2 = th;
        while (th2 != null && th2.getCause() != null) {
            th2 = th2.getCause();
        }
        if (th2 == null || th2 == th) {
            crashDetailBean.n = name;
            if (at.a().i() && z) {
                al.e("This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!", new Object[0]);
                str = " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]";
            }
            crashDetailBean.o = awf.c(a3, str);
            crashDetailBean.p = stackTraceElement;
            a2 = a(th, at.h);
            crashDetailBean.q = a2;
        } else {
            crashDetailBean.n = th2.getClass().getName();
            crashDetailBean.o = a(th2);
            if (th2.getStackTrace().length > 0) {
                crashDetailBean.p = th2.getStackTrace()[0].toString();
            }
            StringBuilder sb = new StringBuilder();
            sb.append(name);
            sb.append(":");
            sb.append(a3);
            sb.append("\n");
            sb.append(stackTraceElement);
            sb.append("\n......\nCaused by:\n");
            sb.append(crashDetailBean.n);
            sb.append(":");
            sb.append(crashDetailBean.o);
            sb.append("\n");
            a2 = a(th2, at.h);
            sb.append(a2);
            crashDetailBean.q = sb.toString();
        }
        crashDetailBean.u = ap.c(crashDetailBean.q.getBytes());
        crashDetailBean.z.put(crashDetailBean.B, a2);
    }

    private static boolean a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        if (uncaughtExceptionHandler == null) {
            return true;
        }
        String name = uncaughtExceptionHandler.getClass().getName();
        for (StackTraceElement stackTraceElement : Thread.currentThread().getStackTrace()) {
            String className = stackTraceElement.getClassName();
            String methodName = stackTraceElement.getMethodName();
            if (name.equals(className) && "uncaughtException".equals(methodName)) {
                return false;
            }
        }
        return true;
    }

    private static boolean a(Thread thread) {
        synchronized (i) {
            try {
                if (h != null && thread.getName().equals(h)) {
                    return true;
                }
                h = thread.getName();
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0111 A[Catch: all -> 0x0104, TryCatch #0 {all -> 0x0104, blocks: (B:31:0x00fc, B:22:0x0109, B:26:0x0111, B:28:0x011f, B:38:0x0121), top: B:30:0x00fc }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x011f A[Catch: all -> 0x0104, TryCatch #0 {all -> 0x0104, blocks: (B:31:0x00fc, B:22:0x0109, B:26:0x0111, B:28:0x011f, B:38:0x0121), top: B:30:0x00fc }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private CrashDetailBean b(Thread thread, Throwable th, boolean z, String str, byte[] bArr, boolean z2) {
        boolean z3;
        boolean z4;
        if (th == null) {
            al.d("We can do nothing with a null throwable.", new Object[0]);
            return null;
        }
        CrashDetailBean crashDetailBean = new CrashDetailBean();
        crashDetailBean.r = System.currentTimeMillis();
        crashDetailBean.C = ab.j();
        crashDetailBean.D = ab.f();
        crashDetailBean.E = ab.l();
        crashDetailBean.F = this.f9642d.k();
        crashDetailBean.G = this.f9642d.j();
        crashDetailBean.H = this.f9642d.l();
        if (z || aa.B() < 31) {
            crashDetailBean.I = ab.b(this.f9639a);
        } else {
            crashDetailBean.I = 0L;
        }
        crashDetailBean.J = ab.g();
        crashDetailBean.K = ab.h();
        byte[] a2 = ao.a();
        crashDetailBean.y = a2;
        al.a("user log size:%d", Integer.valueOf(a2 == null ? 0 : a2.length));
        crashDetailBean.f9505b = z ? 0 : 2;
        crashDetailBean.f9508e = this.f9642d.g();
        aa aaVar = this.f9642d;
        crashDetailBean.f9509f = aaVar.o;
        crashDetailBean.f9510g = aaVar.q();
        crashDetailBean.m = this.f9642d.f();
        crashDetailBean.z = ap.a(z2, at.h);
        crashDetailBean.A = this.f9642d.f9537d;
        crashDetailBean.B = thread.getName() + "(" + thread.getId() + ")";
        crashDetailBean.L = this.f9642d.s();
        crashDetailBean.h = this.f9642d.p();
        crashDetailBean.i = this.f9642d.A();
        aa aaVar2 = this.f9642d;
        crashDetailBean.Q = aaVar2.f9533a;
        crashDetailBean.R = aaVar2.a();
        a(crashDetailBean, th, z);
        if (!z) {
            if (str != null) {
                try {
                    if (str.length() > 0) {
                        z3 = true;
                        z4 = bArr == null && bArr.length > 0;
                        if (z3) {
                            HashMap hashMap = new HashMap(1);
                            crashDetailBean.S = hashMap;
                            hashMap.put("UserData", str);
                        }
                        if (z4) {
                            crashDetailBean.Y = bArr;
                        }
                    }
                } catch (Throwable th2) {
                    al.e("handle crash error %s", th2.toString());
                    return crashDetailBean;
                }
            }
            z3 = false;
            if (bArr == null) {
            }
            if (z3) {
            }
            if (z4) {
            }
        }
        crashDetailBean.U = this.f9642d.z();
        aa aaVar3 = this.f9642d;
        crashDetailBean.V = aaVar3.x;
        crashDetailBean.W = aaVar3.t();
        crashDetailBean.X = this.f9642d.y();
        return crashDetailBean;
    }

    private static void c() {
        al.e("current process die", new Object[0]);
        Process.killProcess(Process.myPid());
        System.exit(1);
    }

    public final synchronized void a() {
        if (this.j >= 10) {
            al.a("java crash handler over %d, no need set.", 10);
            return;
        }
        this.f9645g = true;
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler != null) {
            if (av.class.getName().equals(defaultUncaughtExceptionHandler.getClass().getName())) {
                return;
            }
            if ("com.android.internal.os.RuntimeInit$UncaughtHandler".equals(defaultUncaughtExceptionHandler.getClass().getName())) {
                al.a("backup system java handler: %s", defaultUncaughtExceptionHandler.toString());
                this.f9644f = defaultUncaughtExceptionHandler;
                this.f9643e = defaultUncaughtExceptionHandler;
            } else {
                al.a("backup java handler: %s", defaultUncaughtExceptionHandler.toString());
                this.f9643e = defaultUncaughtExceptionHandler;
            }
        }
        Thread.setDefaultUncaughtExceptionHandler(this);
        this.j++;
        al.a("registered java monitor: %s", toString());
    }

    public final synchronized void a(StrategyBean strategyBean) {
        if (strategyBean != null) {
            boolean z = strategyBean.f9502f;
            if (z != this.f9645g) {
                al.a("java changed to %b", Boolean.valueOf(z));
                if (strategyBean.f9502f) {
                    a();
                    return;
                }
                b();
            }
        }
    }

    public final void a(Thread thread, Throwable th, boolean z, String str, byte[] bArr, boolean z2) {
        if (z) {
            al.e("Java Crash Happen cause by %s(%d)", thread.getName(), Long.valueOf(thread.getId()));
            if (a(thread)) {
                al.a("this class has handled this exception", new Object[0]);
                if (this.f9644f != null) {
                    al.a("call system handler", new Object[0]);
                    this.f9644f.uncaughtException(thread, th);
                } else {
                    c();
                }
            }
        } else {
            al.e("Java Catch Happen", new Object[0]);
        }
        try {
            if (!this.f9645g) {
                al.c("Java crash handler is disable. Just return.", new Object[0]);
                if (z) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f9643e;
                    if (uncaughtExceptionHandler != null && a(uncaughtExceptionHandler)) {
                        al.e("sys default last handle start!", new Object[0]);
                        this.f9643e.uncaughtException(thread, th);
                        al.e("sys default last handle end!", new Object[0]);
                        return;
                    } else if (this.f9644f != null) {
                        al.e("system handle start!", new Object[0]);
                        this.f9644f.uncaughtException(thread, th);
                        al.e("system handle end!", new Object[0]);
                        return;
                    } else {
                        al.e("crashreport last handle start!", new Object[0]);
                        c();
                        al.e("crashreport last handle end!", new Object[0]);
                        return;
                    }
                }
                return;
            }
            if (!this.f9641c.b()) {
                al.d("no remote but still store!", new Object[0]);
            }
            if (!this.f9641c.c().f9502f && this.f9641c.b()) {
                al.e("crash report was closed by remote , will not upload to Bugly , print local for helpful!", new Object[0]);
                as.a(z ? "JAVA_CRASH" : "JAVA_CATCH", ap.a(), this.f9642d.f9537d, thread.getName(), ap.a(th), null);
                if (z) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.f9643e;
                    if (uncaughtExceptionHandler2 != null && a(uncaughtExceptionHandler2)) {
                        al.e("sys default last handle start!", new Object[0]);
                        this.f9643e.uncaughtException(thread, th);
                        al.e("sys default last handle end!", new Object[0]);
                        return;
                    } else if (this.f9644f != null) {
                        al.e("system handle start!", new Object[0]);
                        this.f9644f.uncaughtException(thread, th);
                        al.e("system handle end!", new Object[0]);
                        return;
                    } else {
                        al.e("crashreport last handle start!", new Object[0]);
                        c();
                        al.e("crashreport last handle end!", new Object[0]);
                        return;
                    }
                }
                return;
            }
            CrashDetailBean b2 = b(thread, th, z, str, bArr, z2);
            if (b2 == null) {
                al.e("pkg crash datas fail!", new Object[0]);
                if (z) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler3 = this.f9643e;
                    if (uncaughtExceptionHandler3 != null && a(uncaughtExceptionHandler3)) {
                        al.e("sys default last handle start!", new Object[0]);
                        this.f9643e.uncaughtException(thread, th);
                        al.e("sys default last handle end!", new Object[0]);
                        return;
                    } else if (this.f9644f != null) {
                        al.e("system handle start!", new Object[0]);
                        this.f9644f.uncaughtException(thread, th);
                        al.e("system handle end!", new Object[0]);
                        return;
                    } else {
                        al.e("crashreport last handle start!", new Object[0]);
                        c();
                        al.e("crashreport last handle end!", new Object[0]);
                        return;
                    }
                }
                return;
            }
            as.a(z ? "JAVA_CRASH" : "JAVA_CATCH", ap.a(), this.f9642d.f9537d, thread.getName(), ap.a(th), b2);
            if (!this.f9640b.a(b2, z)) {
                this.f9640b.b(b2, z);
            }
            if (z) {
                this.f9640b.a(b2);
            }
            if (z) {
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler4 = this.f9643e;
                if (uncaughtExceptionHandler4 != null && a(uncaughtExceptionHandler4)) {
                    al.e("sys default last handle start!", new Object[0]);
                    this.f9643e.uncaughtException(thread, th);
                    al.e("sys default last handle end!", new Object[0]);
                } else if (this.f9644f != null) {
                    al.e("system handle start!", new Object[0]);
                    this.f9644f.uncaughtException(thread, th);
                    al.e("system handle end!", new Object[0]);
                } else {
                    al.e("crashreport last handle start!", new Object[0]);
                    c();
                    al.e("crashreport last handle end!", new Object[0]);
                }
            }
        } catch (Throwable th2) {
            try {
                if (!al.a(th2)) {
                    th2.printStackTrace();
                }
                if (z) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler5 = this.f9643e;
                    if (uncaughtExceptionHandler5 != null && a(uncaughtExceptionHandler5)) {
                        al.e("sys default last handle start!", new Object[0]);
                        this.f9643e.uncaughtException(thread, th);
                        al.e("sys default last handle end!", new Object[0]);
                    } else if (this.f9644f != null) {
                        al.e("system handle start!", new Object[0]);
                        this.f9644f.uncaughtException(thread, th);
                        al.e("system handle end!", new Object[0]);
                    } else {
                        al.e("crashreport last handle start!", new Object[0]);
                        c();
                        al.e("crashreport last handle end!", new Object[0]);
                    }
                }
            } catch (Throwable th3) {
                if (z) {
                    Thread.UncaughtExceptionHandler uncaughtExceptionHandler6 = this.f9643e;
                    if (uncaughtExceptionHandler6 != null && a(uncaughtExceptionHandler6)) {
                        al.e("sys default last handle start!", new Object[0]);
                        this.f9643e.uncaughtException(thread, th);
                        al.e("sys default last handle end!", new Object[0]);
                    } else if (this.f9644f != null) {
                        al.e("system handle start!", new Object[0]);
                        this.f9644f.uncaughtException(thread, th);
                        al.e("system handle end!", new Object[0]);
                    } else {
                        al.e("crashreport last handle start!", new Object[0]);
                        c();
                        al.e("crashreport last handle end!", new Object[0]);
                    }
                }
                throw th3;
            }
        }
    }

    public final synchronized void b() {
        this.f9645g = false;
        al.a("close java monitor!", new Object[0]);
        if ("bugly".equals(Thread.getDefaultUncaughtExceptionHandler().getClass().getName())) {
            al.a("Java monitor to unregister: %s", toString());
            Thread.setDefaultUncaughtExceptionHandler(this.f9643e);
            this.j--;
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        synchronized (i) {
            a(thread, th, true, null, null, this.f9642d.Q);
        }
    }
}

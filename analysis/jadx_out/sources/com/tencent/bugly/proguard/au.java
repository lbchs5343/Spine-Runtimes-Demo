package com.tencent.bugly.proguard;

import android.content.Context;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import g.dyn;
import g.eal;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class au {

    /* renamed from: a, reason: collision with root package name */
    private static au f9634a;

    /* renamed from: b, reason: collision with root package name */
    private ac f9635b;

    /* renamed from: c, reason: collision with root package name */
    private aa f9636c;

    /* renamed from: d, reason: collision with root package name */
    private as f9637d;

    /* renamed from: e, reason: collision with root package name */
    private Context f9638e;

    private au(Context context) {
        at a2 = at.a();
        if (a2 == null) {
            return;
        }
        this.f9635b = ac.a();
        this.f9636c = aa.a(context);
        this.f9637d = a2.s;
        this.f9638e = context;
        ak.a().a(new dyn(9, this));
    }

    public static au a(Context context) {
        if (f9634a == null) {
            f9634a = new au(context);
        }
        return f9634a;
    }

    public static /* synthetic */ void a(au auVar) {
        al.c("[ExtraCrashManager] Trying to notify Bugly agents.", new Object[0]);
        try {
            Class<?> cls = Class.forName("com.tencent.bugly.agent.GameAgent");
            auVar.f9636c.getClass();
            ap.a(cls, "sdkPackageName", "com.tencent.bugly");
            al.c("[ExtraCrashManager] Bugly game agent has been notified.", new Object[0]);
        } catch (Throwable unused) {
            al.a("[ExtraCrashManager] no game agent", new Object[0]);
        }
    }

    public static /* synthetic */ void a(au auVar, Thread thread, int i, String str, String str2, String str3, Map map) {
        String str4;
        String str5;
        String str6;
        Thread currentThread = thread == null ? Thread.currentThread() : thread;
        if (i == 4) {
            str4 = "Unity";
        } else if (i == 5 || i == 6) {
            str4 = "Cocos";
        } else {
            if (i != 8) {
                al.d("[ExtraCrashManager] Unknown extra crash type: %d", Integer.valueOf(i));
                return;
            }
            str4 = "H5";
        }
        al.e("[ExtraCrashManager] %s Crash Happen", str4);
        try {
            if (!auVar.f9635b.b()) {
                al.d("[ExtraCrashManager] There is no remote strategy, but still store it.", new Object[0]);
            }
            StrategyBean c2 = auVar.f9635b.c();
            if (!c2.f9502f && auVar.f9635b.b()) {
                al.e("[ExtraCrashManager] Crash report was closed by remote. Will not upload to Bugly , print local for helpful!", new Object[0]);
                as.a(str4, ap.a(), auVar.f9636c.f9537d, currentThread.getName(), str + "\n" + str2 + "\n" + str3, null);
                al.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                return;
            }
            if (i == 5 || i == 6) {
                if (!c2.k) {
                    al.e("[ExtraCrashManager] %s report is disabled.", str4);
                    al.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                    return;
                }
            } else if (i == 8 && !c2.l) {
                al.e("[ExtraCrashManager] %s report is disabled.", str4);
                al.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                return;
            }
            int i2 = i != 8 ? i : 5;
            CrashDetailBean crashDetailBean = new CrashDetailBean();
            crashDetailBean.C = ab.j();
            crashDetailBean.D = ab.f();
            crashDetailBean.E = ab.l();
            crashDetailBean.F = auVar.f9636c.k();
            crashDetailBean.G = auVar.f9636c.j();
            crashDetailBean.H = auVar.f9636c.l();
            crashDetailBean.I = ab.b(auVar.f9638e);
            crashDetailBean.J = ab.g();
            crashDetailBean.K = ab.h();
            crashDetailBean.f9505b = i2;
            crashDetailBean.f9508e = auVar.f9636c.g();
            aa aaVar = auVar.f9636c;
            crashDetailBean.f9509f = aaVar.o;
            crashDetailBean.f9510g = aaVar.q();
            crashDetailBean.m = auVar.f9636c.f();
            crashDetailBean.n = String.valueOf(str);
            crashDetailBean.o = String.valueOf(str2);
            str5 = "";
            if (str3 != null) {
                String[] split = str3.split("\n");
                str5 = split.length > 0 ? split[0] : "";
                str6 = str3;
            } else {
                str6 = "";
            }
            crashDetailBean.p = str5;
            crashDetailBean.q = str6;
            crashDetailBean.r = System.currentTimeMillis();
            crashDetailBean.u = ap.c(crashDetailBean.q.getBytes());
            crashDetailBean.z = ap.a(auVar.f9636c.Q, at.h);
            crashDetailBean.A = auVar.f9636c.f9537d;
            crashDetailBean.B = currentThread.getName() + "(" + currentThread.getId() + ")";
            crashDetailBean.L = auVar.f9636c.s();
            crashDetailBean.h = auVar.f9636c.p();
            aa aaVar2 = auVar.f9636c;
            crashDetailBean.Q = aaVar2.f9533a;
            crashDetailBean.R = aaVar2.a();
            crashDetailBean.U = auVar.f9636c.z();
            aa aaVar3 = auVar.f9636c;
            crashDetailBean.V = aaVar3.x;
            crashDetailBean.W = aaVar3.t();
            crashDetailBean.X = auVar.f9636c.y();
            crashDetailBean.y = ao.a();
            if (crashDetailBean.S == null) {
                crashDetailBean.S = new LinkedHashMap();
            }
            if (map != null) {
                crashDetailBean.S.putAll(map);
            }
            as.a(str4, ap.a(), auVar.f9636c.f9537d, currentThread.getName(), str + "\n" + str2 + "\n" + str3, crashDetailBean);
            if (!auVar.f9637d.a(crashDetailBean, !at.a().C)) {
                auVar.f9637d.b(crashDetailBean, false);
            }
            al.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
        } catch (Throwable th) {
            try {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
                al.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
            } catch (Throwable th2) {
                al.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                throw th2;
            }
        }
    }

    public static void a(Thread thread, int i, String str, String str2, String str3, Map<String, String> map) {
        ak.a().a(new eal(thread, i, str, str2, str3, map));
    }
}

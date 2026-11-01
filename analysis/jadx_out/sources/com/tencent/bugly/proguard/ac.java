package com.tencent.bugly.proguard;

import android.content.Context;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class ac {

    /* renamed from: a, reason: collision with root package name */
    public static int f9544a = 1000;

    /* renamed from: b, reason: collision with root package name */
    public static long f9545b = 259200000;

    /* renamed from: d, reason: collision with root package name */
    private static ac f9546d;
    private static String i;

    /* renamed from: c, reason: collision with root package name */
    public final ak f9547c;

    /* renamed from: e, reason: collision with root package name */
    private final List<o> f9548e;

    /* renamed from: f, reason: collision with root package name */
    private final StrategyBean f9549f;

    /* renamed from: g, reason: collision with root package name */
    private StrategyBean f9550g = null;
    private Context h;

    private ac(Context context, List<o> list) {
        this.h = context;
        if (aa.a(context) != null) {
            String str = aa.a(context).H;
            if ("oversea".equals(str)) {
                StrategyBean.f9497a = "https://astat.bugly.qcloud.com/rqd/async";
                StrategyBean.f9498b = "https://astat.bugly.qcloud.com/rqd/async";
            } else if ("na_https".equals(str)) {
                StrategyBean.f9497a = "https://astat.bugly.cros.wr.pvp.net/:8180/rqd/async";
                StrategyBean.f9498b = "https://astat.bugly.cros.wr.pvp.net/:8180/rqd/async";
            }
        }
        this.f9549f = new StrategyBean();
        this.f9548e = list;
        this.f9547c = ak.a();
    }

    public static synchronized ac a() {
        ac acVar;
        synchronized (ac.class) {
            acVar = f9546d;
        }
        return acVar;
    }

    public static synchronized ac a(Context context, List<o> list) {
        ac acVar;
        synchronized (ac.class) {
            try {
                if (f9546d == null) {
                    f9546d = new ac(context, list);
                }
                acVar = f9546d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return acVar;
    }

    public static void a(String str) {
        if (ap.b(str) || !ap.d(str)) {
            al.d("URL user set is invalid.", new Object[0]);
        } else {
            i = str;
        }
    }

    public static StrategyBean d() {
        byte[] bArr;
        List<y> a2 = w.a().a(2);
        if (a2 == null || a2.size() <= 0 || (bArr = a2.get(0).f9821g) == null) {
            return null;
        }
        return (StrategyBean) ap.a(bArr, StrategyBean.CREATOR);
    }

    public final void a(StrategyBean strategyBean, boolean z) {
        al.c("[Strategy] Notify %s", s.class.getName());
        s.a(strategyBean, z);
        for (o oVar : this.f9548e) {
            try {
                al.c("[Strategy] Notify %s", oVar.getClass().getName());
                oVar.onServerStrategyChanged(strategyBean);
            } catch (Throwable th) {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
            }
        }
    }

    public final void a(bt btVar) {
        if (btVar == null) {
            return;
        }
        StrategyBean strategyBean = this.f9550g;
        if (strategyBean == null || btVar.h != strategyBean.o) {
            StrategyBean strategyBean2 = new StrategyBean();
            strategyBean2.f9502f = btVar.f9732a;
            strategyBean2.h = btVar.f9734c;
            strategyBean2.f9503g = btVar.f9733b;
            if (ap.b(i) || !ap.d(i)) {
                if (ap.d(btVar.f9735d)) {
                    al.c("[Strategy] Upload url changes to %s", btVar.f9735d);
                    strategyBean2.q = btVar.f9735d;
                }
                if (ap.d(btVar.f9736e)) {
                    al.c("[Strategy] Exception upload url changes to %s", btVar.f9736e);
                    strategyBean2.r = btVar.f9736e;
                }
            }
            bs bsVar = btVar.f9737f;
            if (bsVar != null && !ap.b(bsVar.f9730a)) {
                strategyBean2.s = btVar.f9737f.f9730a;
            }
            long j = btVar.h;
            if (j != 0) {
                strategyBean2.o = j;
            }
            Map<String, String> map = btVar.f9738g;
            if (map != null && map.size() > 0) {
                Map<String, String> map2 = btVar.f9738g;
                strategyBean2.t = map2;
                String str = map2.get("B11");
                strategyBean2.i = str != null && str.equals("1");
                String str2 = btVar.f9738g.get("B3");
                if (str2 != null) {
                    strategyBean2.w = Long.parseLong(str2);
                }
                int i2 = btVar.l;
                strategyBean2.p = i2;
                strategyBean2.v = i2;
                String str3 = btVar.f9738g.get("B27");
                if (str3 != null && str3.length() > 0) {
                    try {
                        int parseInt = Integer.parseInt(str3);
                        if (parseInt > 0) {
                            strategyBean2.u = parseInt;
                        }
                    } catch (Exception e2) {
                        if (!al.a(e2)) {
                            e2.printStackTrace();
                        }
                    }
                }
                String str4 = btVar.f9738g.get("B25");
                strategyBean2.k = str4 != null && str4.equals("1");
            }
            al.a("[Strategy] enableCrashReport:%b, enableQuery:%b, enableUserInfo:%b, enableAnr:%b, enableBlock:%b, enableSession:%b, enableSessionTimer:%b, sessionOverTime:%d, enableCocos:%b, strategyLastUpdateTime:%d", Boolean.valueOf(strategyBean2.f9502f), Boolean.valueOf(strategyBean2.h), Boolean.valueOf(strategyBean2.f9503g), Boolean.valueOf(strategyBean2.i), Boolean.valueOf(strategyBean2.j), Boolean.valueOf(strategyBean2.m), Boolean.valueOf(strategyBean2.n), Long.valueOf(strategyBean2.p), Boolean.valueOf(strategyBean2.k), Long.valueOf(strategyBean2.o));
            this.f9550g = strategyBean2;
            if (!ap.d(btVar.f9735d)) {
                al.c("[Strategy] download url is null", new Object[0]);
                this.f9550g.q = "";
            }
            if (!ap.d(btVar.f9736e)) {
                al.c("[Strategy] download crashurl is null", new Object[0]);
                this.f9550g.r = "";
            }
            w.a().b(2);
            y yVar = new y();
            yVar.f9816b = 2;
            yVar.f9815a = strategyBean2.f9500d;
            yVar.f9819e = strategyBean2.f9501e;
            yVar.f9821g = ap.a(strategyBean2);
            w.a().a(yVar);
            a(strategyBean2, true);
        }
    }

    public final synchronized boolean b() {
        return this.f9550g != null;
    }

    public final StrategyBean c() {
        StrategyBean strategyBean = this.f9550g;
        if (strategyBean != null) {
            if (!ap.d(strategyBean.q)) {
                this.f9550g.q = StrategyBean.f9497a;
            }
            if (!ap.d(this.f9550g.r)) {
                this.f9550g.r = StrategyBean.f9498b;
            }
            return this.f9550g;
        }
        if (!ap.b(i) && ap.d(i)) {
            StrategyBean strategyBean2 = this.f9549f;
            String str = i;
            strategyBean2.q = str;
            strategyBean2.r = str;
        }
        return this.f9549f;
    }
}

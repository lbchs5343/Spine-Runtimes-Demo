package com.bytedance.msdk.ox.p;

import android.app.Activity;
import android.content.Context;
import com.bytedance.msdk.ia.jy;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.tn;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public abstract class o extends d {
    protected com.bytedance.msdk.dq.d.iw cd;

    /* renamed from: d, reason: collision with root package name */
    private Object f1219d;
    private Boolean dq;

    /* renamed from: f, reason: collision with root package name */
    protected boolean f1220f;
    protected boolean fw;

    public interface dq {
        void dq();
    }

    public o(Context context) {
        super(context);
        this.f1220f = false;
        this.fw = false;
        this.dq = null;
        this.f1219d = null;
    }

    private boolean d(com.bytedance.msdk.d.s sVar, Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        if (!sVar.u(this.s) || sVar.xi()) {
            return false;
        }
        if (!mn()) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.d(this.s, sVar.b()) + "弱网情况下没有缓存好的广告,那么直接根据优先级展示，广告类型：" + com.bytedance.msdk.d.dq.dq(sVar.hf()) + ",isReady()：" + sVar.u(this.s));
            dq(sVar, activity, ritScenes, str);
            return true;
        }
        if (!p(sVar) || com.bytedance.msdk.core.admanager.iw.dq(sVar.m(), sVar.qz(), sVar.cv())) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 插全屏轮播中，不能轮播的自定义adn跳过");
            return false;
        }
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.d(this.s, sVar.b()) + "弱网情况下没有缓存好的广告,那么直接根据优先级展示，广告类型：" + com.bytedance.msdk.d.dq.dq(sVar.hf()) + ",isReady()：" + sVar.u(this.s));
        dq(sVar, activity, ritScenes, str);
        return true;
    }

    private boolean dq(List<com.bytedance.msdk.core.no.no> list, List<com.bytedance.msdk.d.s> list2, boolean z, Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        com.bytedance.msdk.d.s sVar;
        com.bytedance.msdk.d.s sVar2;
        HashMap<String, com.bytedance.msdk.d.s> d2 = d(list2);
        for (com.bytedance.msdk.core.no.no noVar : list) {
            if (noVar != null) {
                String cd = noVar.cd();
                com.bytedance.msdk.d.s sVar3 = d2.get(cd);
                if (sVar3 != null) {
                    if (z) {
                        if (sVar3.fx() && d(sVar3, activity, ritScenes, str)) {
                            return true;
                        }
                    } else if (d(sVar3, activity, ritScenes, str)) {
                        return true;
                    }
                }
                if (noVar.r() && com.bytedance.msdk.core.s.dq.dq.dq().p(this.s, cd, this.iw.s()) && com.bytedance.msdk.core.s.dq.dq.dq().dq(cd, this.iw, false) == 3) {
                    com.bytedance.msdk.core.s.dq.dq dq2 = com.bytedance.msdk.core.s.dq.dq.dq();
                    com.bytedance.msdk.api.dq.d dVar = this.iw;
                    List<com.bytedance.msdk.core.s.d.ig> dq3 = dq2.dq(cd, dVar, dVar.s());
                    if (dq3 != null && dq3.size() > 0 && (sVar2 = dq3.get(0).dq) != null) {
                        if (!z) {
                            if (ox(sVar2, activity, ritScenes, str)) {
                                return true;
                            }
                        } else if (sVar2.fx() && ox(sVar2, activity, ritScenes, str)) {
                            return true;
                        }
                    }
                }
            }
        }
        if (z && this.p == null) {
            for (com.bytedance.msdk.core.no.no noVar2 : list) {
                if (noVar2 != null) {
                    String cd2 = noVar2.cd();
                    com.bytedance.msdk.d.s sVar4 = d2.get(cd2);
                    if (sVar4 != null && d(sVar4, activity, ritScenes, str)) {
                        return true;
                    }
                    if (noVar2.r() && com.bytedance.msdk.core.s.dq.dq.dq().p(this.s, cd2, this.iw.s()) && com.bytedance.msdk.core.s.dq.dq.dq().dq(cd2, this.iw, false) == 3) {
                        com.bytedance.msdk.core.s.dq.dq dq4 = com.bytedance.msdk.core.s.dq.dq.dq();
                        com.bytedance.msdk.api.dq.d dVar2 = this.iw;
                        List<com.bytedance.msdk.core.s.d.ig> dq5 = dq4.dq(cd2, dVar2, dVar2.s());
                        if (dq5 != null && dq5.size() > 0 && (sVar = dq5.get(0).dq) != null && ox(sVar, activity, ritScenes, str)) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    private boolean ox(com.bytedance.msdk.d.s sVar, Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        if (!sVar.u(this.s) || sVar.xi()) {
            return false;
        }
        if (!mn()) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.d(this.s, sVar.b()) + "弱网情况下没有缓存好的广告,那么直接根据优先级展示，广告类型：" + com.bytedance.msdk.d.dq.dq(sVar.hf()) + ",isReady()：" + sVar.u(this.s));
            d(sVar);
            dq(sVar, activity, ritScenes, str);
            return true;
        }
        if (!p(sVar) || com.bytedance.msdk.core.admanager.iw.dq(sVar.m(), sVar.qz(), sVar.cv())) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- cache 插全屏轮播中，不能轮播的自定义adn跳过");
            return false;
        }
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.d(this.s, sVar.b()) + "弱网情况下没有缓存好的广告,那么直接根据优先级展示，广告类型：" + com.bytedance.msdk.d.dq.dq(sVar.hf()) + ",isReady()：" + sVar.u(this.s));
        d(sVar);
        dq(sVar, activity, ritScenes, str);
        return true;
    }

    private boolean p(com.bytedance.msdk.d.s sVar) {
        return !sVar.zc() || sVar.j() == 1;
    }

    public void d(boolean z) {
        this.dq = Boolean.valueOf(z);
        com.bytedance.msdk.d.s sVar = this.p;
        if (sVar != null) {
            sVar.d(z);
        }
    }

    @Override // com.bytedance.msdk.ox.p.d
    public void dq() {
        super.dq();
        this.cd = null;
    }

    public void dq(Activity activity, TTAdConstant.RitScenes ritScenes, String str, dq dqVar) {
        o oVar;
        Activity activity2;
        TTAdConstant.RitScenes ritScenes2;
        String str2;
        List<com.bytedance.msdk.core.no.no> list = null;
        String gx = this.mn != null ? this.ox.ig().gx() : null;
        if (!mn()) {
            com.bytedance.msdk.s.iw.dq(this.iw, gx);
            if (this.ig) {
                com.bytedance.msdk.s.iw.dq((List<com.bytedance.msdk.d.s>) null, this.iw, 0);
                if (dqVar != null) {
                    dqVar.dq();
                    return;
                }
                return;
            }
        }
        int d2 = d.d(this.s);
        if (d2 != 0) {
            com.bytedance.msdk.s.iw.dq((List<com.bytedance.msdk.d.s>) null, this.iw, d2);
            if (dqVar != null) {
                dqVar.dq();
                return;
            }
            return;
        }
        boolean jy = jy();
        List<com.bytedance.msdk.d.s> r = this.ox.r();
        try {
            list = h_();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        List<com.bytedance.msdk.core.no.no> list2 = list;
        if (list2 == null || list2.size() <= 0) {
            oVar = this;
            activity2 = activity;
            ritScenes2 = ritScenes;
            str2 = str;
        } else {
            oVar = this;
            activity2 = activity;
            ritScenes2 = ritScenes;
            str2 = str;
            if (oVar.dq(list2, r, jy, activity2, ritScenes2, str2)) {
                return;
            }
        }
        if (r != null && r.size() > 0) {
            for (com.bytedance.msdk.d.s sVar : r) {
                if (sVar != null && (!jy || sVar.fx())) {
                    if (d(sVar, activity2, ritScenes2, str2)) {
                        return;
                    }
                }
            }
            if (jy && oVar.p == null) {
                for (com.bytedance.msdk.d.s sVar2 : r) {
                    if (sVar2 != null && d(sVar2, activity2, ritScenes2, str2)) {
                        return;
                    }
                }
            }
        }
        com.bytedance.msdk.s.iw.dq(r, oVar.iw, 0);
        if (dqVar != null) {
            dqVar.dq();
        }
    }

    public void dq(final com.bytedance.msdk.d.s sVar, final Activity activity, final TTAdConstant.RitScenes ritScenes, final String str) {
        com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.ox.p.o.2
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.msdk.d.s sVar2 = sVar;
                if (sVar2 != null) {
                    o oVar = o.this;
                    oVar.p = sVar2;
                    if (oVar.dq != null) {
                        o oVar2 = o.this;
                        oVar2.p.d(oVar2.dq.booleanValue());
                    }
                    if (o.this.f1219d != null) {
                        o oVar3 = o.this;
                        oVar3.p.dq(oVar3.f1219d);
                    }
                    o oVar4 = o.this;
                    com.bytedance.msdk.api.p.dq.d dVar = oVar4.mp;
                    if (dVar != null) {
                        oVar4.p.dq(dVar);
                    }
                    o oVar5 = o.this;
                    oVar5.ox.dq(oVar5.p);
                    o.this.p.iw(true);
                    o oVar6 = o.this;
                    oVar6.p.dq(oVar6.kk);
                    o oVar7 = o.this;
                    oVar7.p.d(oVar7.cd);
                    if (o.this.p.ah()) {
                        com.bytedance.msdk.core.s.dq.dq dq2 = com.bytedance.msdk.core.s.dq.dq.dq();
                        o oVar8 = o.this;
                        if (dq2.p(oVar8.s, oVar8.p.b(), o.this.i())) {
                            o oVar9 = o.this;
                            com.bytedance.msdk.d.s sVar3 = oVar9.p;
                            com.bytedance.msdk.ox.mn.p.dq(sVar3, oVar9.s, sVar3.b());
                        }
                    }
                    com.bytedance.msdk.core.s.dq.dq dq3 = com.bytedance.msdk.core.s.dq.dq.dq();
                    List<com.bytedance.msdk.d.s> r = o.this.ox.r();
                    o oVar10 = o.this;
                    String str2 = oVar10.s;
                    com.bytedance.msdk.api.dq.d dVar2 = oVar10.iw;
                    dq3.dq(r, str2, dVar2, dVar2.s(), o.this.p);
                    StringBuilder sb = new StringBuilder();
                    sb.append(com.bytedance.msdk.dq.s.s.dq(o.this.s, "show"));
                    sb.append("展示的广告类型：");
                    sb.append(com.bytedance.msdk.d.dq.dq(o.this.p.hf()));
                    sb.append(",slotId：");
                    tn.a(o.this.p, sb, ",slotType:");
                    sb.append(o.this.p.y());
                    sb.append(",isReady()：");
                    o oVar11 = o.this;
                    sb.append(oVar11.p.u(oVar11.s));
                    sb.append("，是否为缓存广告:");
                    sb.append(o.this.p.fx());
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", sb.toString());
                    o.this.p.dq(activity, ritScenes, str);
                    com.bytedance.msdk.core.kk.mp.dq().d(o.this.s);
                    com.bytedance.msdk.core.kk.ig dq4 = com.bytedance.msdk.core.kk.ig.dq();
                    o oVar12 = o.this;
                    dq4.d(oVar12.s, oVar12.p.b());
                    o.this.ig = true;
                    if (o.this.p != null) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(o.this.p);
                        o.this.dq((List<com.bytedance.msdk.d.s>) arrayList);
                    }
                    o oVar13 = o.this;
                    com.bytedance.msdk.s.iw.dq(oVar13.p, oVar13.iw, false, oVar13.mn() ? 1 : 0);
                }
            }
        });
    }

    public void dq(com.bytedance.msdk.ox.s.dq.d dVar) {
        boolean z;
        com.bytedance.msdk.core.no.d dVar2;
        if (this.p.qz() == 10 || this.p.qz() == 8 || this.p.qz() == 7) {
            boolean z2 = (this.p.e() && this.p.fx() && com.bytedance.msdk.core.s.d.p.dq().ox(this.s, this.iw.s())) ? false : true;
            com.bytedance.msdk.api.dq.d dVar3 = this.iw;
            z = this.p.hf() == 4 ? false : (dVar3 == null || !(dVar3.le() == 10 || this.iw.le() == 8) || (dVar2 = this.mn) == null || dVar2.mp() == 0) ? z2 : true;
        } else {
            z = true;
        }
        if (this.p.ah() && com.bytedance.msdk.core.s.dq.dq.dq().p(this.s, this.p.b(), this.iw.s())) {
            com.bytedance.msdk.core.s.dq.dq.dq().dq(this.p.b(), this.iw, dVar != null ? dVar.bl() : null, z, dVar != null ? dVar.n() : null, (com.bytedance.msdk.core.no.o) null, this.ia.get());
        }
    }

    public void dq(Object obj) {
        this.f1219d = obj;
        com.bytedance.msdk.d.s sVar = this.p;
        if (sVar != null) {
            sVar.dq(obj);
        }
    }

    public void dq(boolean z) {
        this.f1220f = z;
    }

    public void e() {
        com.bytedance.msdk.d.s sVar = this.p;
        if (sVar == null || sVar.hf() == 4) {
            return;
        }
        com.bytedance.msdk.core.s.d.p.dq().dq(this.ia.get(), this.s, this.iw.s());
    }

    public boolean kx() {
        List<com.bytedance.msdk.core.no.no> list;
        try {
            list = h_();
        } catch (Throwable th) {
            th.printStackTrace();
            list = null;
        }
        com.bytedance.msdk.core.no.d dVar = this.mn;
        return jy.dq(this.ox.mn(), this.ox.o(), this.ox.ia(), this.iw, this.ig, new AtomicBoolean(this.ox.d()), this.s, this.iw.s(), list, dVar != null ? dVar.gx() : null);
    }

    public boolean mn() {
        return false;
    }

    public void ox(final com.bytedance.msdk.d.s sVar) {
        com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.ox.p.o.1
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.msdk.d.s sVar2 = sVar;
                if (sVar2 == null || !sVar2.e() || !sVar.fx() || (o.this.p instanceof com.bytedance.msdk.api.p.dq.d.ox)) {
                    return;
                }
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.d(o.this.s, sVar.b()) + "在show时触发了预加载【" + sVar.m() + "】, loadSort: " + sVar.ae() + ", showSort: " + sVar.wq());
                o.this.fw = true;
                com.bytedance.msdk.core.s.d.p dq2 = com.bytedance.msdk.core.s.d.p.dq();
                Context context = o.this.ia.get();
                o oVar = o.this;
                dq2.d(context, oVar.s, oVar.iw.s());
            }
        });
    }

    public boolean wp() {
        return this.f1220f;
    }
}

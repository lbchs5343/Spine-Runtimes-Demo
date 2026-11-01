package com.bytedance.msdk.core.mn;

import android.app.Activity;
import android.content.Context;
import com.bytedance.msdk.core.kk.mp;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.core.s.d.ig;
import com.bytedance.msdk.ia.e;
import com.bytedance.msdk.ia.jy;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.tn;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public abstract class p extends com.bytedance.msdk.core.admanager.p {
    protected boolean ce;

    /* renamed from: d, reason: collision with root package name */
    private Object f967d;
    private Boolean dq;
    protected boolean er;

    public interface dq {
        void dq();
    }

    public p(Context context, String str, int i) {
        super(context, str, i);
        this.ce = false;
        this.er = false;
        this.dq = null;
        this.f967d = null;
    }

    private boolean d(com.bytedance.msdk.d.s sVar, Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        if (!sVar.u(this.kk) || sVar.xi()) {
            return false;
        }
        if (!mn()) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.d(this.kk, sVar.b()) + "弱网情况下没有缓存好的广告,那么直接根据优先级展示，广告类型：" + com.bytedance.msdk.d.dq.dq(sVar.hf()) + ",isReady()：" + sVar.u(this.kk));
            dq(sVar, activity, ritScenes, str);
            return true;
        }
        if (!s(sVar) || com.bytedance.msdk.core.admanager.iw.dq(sVar.m(), sVar.qz(), sVar.cv())) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- 插全屏轮播中，不能轮播的自定义adn跳过");
            return false;
        }
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.d(this.kk, sVar.b()) + "弱网情况下没有缓存好的广告,那么直接根据优先级展示，广告类型：" + com.bytedance.msdk.d.dq.dq(sVar.hf()) + ",isReady()：" + sVar.u(this.kk));
        dq(sVar, activity, ritScenes, str);
        return true;
    }

    private boolean dq(List<no> list, List<com.bytedance.msdk.d.s> list2, boolean z, Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        List<ig> dq2;
        com.bytedance.msdk.d.s sVar;
        List<ig> dq3;
        com.bytedance.msdk.d.s sVar2;
        HashMap<String, com.bytedance.msdk.d.s> iw = iw(list2);
        for (no noVar : list) {
            if (noVar != null) {
                String cd = noVar.cd();
                com.bytedance.msdk.d.s sVar3 = iw.get(cd);
                if (sVar3 != null) {
                    if (z) {
                        if (sVar3.fx() && d(sVar3, activity, ritScenes, str)) {
                            return true;
                        }
                    } else if (d(sVar3, activity, ritScenes, str)) {
                        return true;
                    }
                }
                if (noVar.r() && com.bytedance.msdk.core.s.dq.dq.dq().p(this.kk, cd, i()) && com.bytedance.msdk.core.s.dq.dq.dq().dq(cd, this.no, false) == 3 && (dq3 = com.bytedance.msdk.core.s.dq.dq.dq().dq(cd, this.no, i())) != null && dq3.size() > 0 && (sVar2 = dq3.get(0).dq) != null) {
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
        if (z && this.yy == null) {
            for (no noVar2 : list) {
                if (noVar2 != null) {
                    String cd2 = noVar2.cd();
                    com.bytedance.msdk.d.s sVar4 = iw.get(cd2);
                    if (sVar4 != null && d(sVar4, activity, ritScenes, str)) {
                        return true;
                    }
                    if (noVar2.r() && com.bytedance.msdk.core.s.dq.dq.dq().p(this.kk, cd2, i()) && com.bytedance.msdk.core.s.dq.dq.dq().dq(cd2, this.no, false) == 3 && (dq2 = com.bytedance.msdk.core.s.dq.dq.dq().dq(cd2, this.no, i())) != null && dq2.size() > 0 && (sVar = dq2.get(0).dq) != null && ox(sVar, activity, ritScenes, str)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private boolean f() {
        boolean ox = e.ox(com.bytedance.msdk.core.dq.getContext());
        boolean d2 = e.d(com.bytedance.msdk.core.dq.getContext());
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(this.kk) + "setting 下发是否为弱网执行：" + com.bytedance.msdk.core.dq.d().ig() + "，当前网络环境：2G-type=" + ox + ",3G-type=" + d2);
        if (com.bytedance.msdk.core.dq.d().ig()) {
            return ox || d2;
        }
        return false;
    }

    private boolean ox(com.bytedance.msdk.d.s sVar, Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        if (!sVar.u(this.kk) || sVar.xi()) {
            return false;
        }
        if (!mn()) {
            com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.d(this.kk, sVar.b()) + "弱网情况下没有缓存好的广告,那么直接根据优先级展示，广告类型：" + com.bytedance.msdk.d.dq.dq(sVar.hf()) + ",isReady()：" + sVar.u(this.kk));
            p(sVar);
            dq(sVar, activity, ritScenes, str);
            return true;
        }
        if (!s(sVar) || com.bytedance.msdk.core.admanager.iw.dq(sVar.m(), sVar.qz(), sVar.cv())) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==--- cache 插全屏轮播中，不能轮播的自定义adn跳过");
            return false;
        }
        com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.d(this.kk, sVar.b()) + "弱网情况下没有缓存好的广告,那么直接根据优先级展示，广告类型：" + com.bytedance.msdk.d.dq.dq(sVar.hf()) + ",isReady()：" + sVar.u(this.kk));
        p(sVar);
        dq(sVar, activity, ritScenes, str);
        return true;
    }

    private boolean s(com.bytedance.msdk.d.s sVar) {
        return !sVar.zc() || sVar.j() == 1;
    }

    public void d(boolean z) {
        this.dq = Boolean.valueOf(z);
        com.bytedance.msdk.d.s sVar = this.yy;
        if (sVar != null) {
            sVar.d(z);
        }
    }

    public void dq(Activity activity, TTAdConstant.RitScenes ritScenes, String str, dq dqVar) {
        p pVar;
        Activity activity2;
        TTAdConstant.RitScenes ritScenes2;
        String str2;
        com.bytedance.msdk.core.no.d dVar = this.mn;
        List<no> list = null;
        String gx = dVar != null ? dVar.gx() : null;
        if (!mn()) {
            com.bytedance.msdk.s.iw.dq(this.no, gx);
            if (this.uh) {
                com.bytedance.msdk.s.iw.dq((List<com.bytedance.msdk.d.s>) null, this.no, 0);
                if (dqVar != null) {
                    dqVar.dq();
                    return;
                }
            } else {
                int d2 = com.bytedance.msdk.core.admanager.p.d(this.kk);
                if (d2 != 0) {
                    com.bytedance.msdk.s.iw.dq((List<com.bytedance.msdk.d.s>) null, this.no, d2);
                    if (dqVar != null) {
                        dqVar.dq();
                        return;
                    }
                }
            }
            return;
        }
        boolean f2 = f();
        List<com.bytedance.msdk.d.s> l = l();
        try {
            list = h_();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        List<no> list2 = list;
        if (list2 == null || list2.size() <= 0) {
            pVar = this;
            activity2 = activity;
            ritScenes2 = ritScenes;
            str2 = str;
        } else {
            pVar = this;
            activity2 = activity;
            ritScenes2 = ritScenes;
            str2 = str;
            if (pVar.dq(list2, l, f2, activity2, ritScenes2, str2)) {
                return;
            }
        }
        if (l != null && l.size() > 0) {
            for (com.bytedance.msdk.d.s sVar : l) {
                if (sVar != null && (!f2 || sVar.fx())) {
                    if (d(sVar, activity2, ritScenes2, str2)) {
                        return;
                    }
                }
            }
            if (f2 && pVar.yy == null) {
                for (com.bytedance.msdk.d.s sVar2 : l) {
                    if (sVar2 != null && d(sVar2, activity2, ritScenes2, str2)) {
                        return;
                    }
                }
            }
        }
        com.bytedance.msdk.s.iw.dq(l, pVar.no, 0);
        if (dqVar != null) {
            dqVar.dq();
        }
    }

    public void dq(final com.bytedance.msdk.d.s sVar, final Activity activity, final TTAdConstant.RitScenes ritScenes, final String str) {
        com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.mn.p.2
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.msdk.d.s sVar2 = sVar;
                if (sVar2 != null) {
                    p pVar = p.this;
                    pVar.yy = sVar2;
                    if (pVar.dq != null) {
                        p pVar2 = p.this;
                        pVar2.yy.d(pVar2.dq.booleanValue());
                    }
                    if (p.this.f967d != null) {
                        p pVar3 = p.this;
                        pVar3.yy.dq(pVar3.f967d);
                    }
                    p pVar4 = p.this;
                    com.bytedance.msdk.api.p.dq.d dVar = pVar4.ws;
                    if (dVar != null) {
                        pVar4.yy.dq(dVar);
                    }
                    p.this.yy.iw(true);
                    p pVar5 = p.this;
                    pVar5.yy.dq(pVar5.t);
                    p pVar6 = p.this;
                    pVar6.yy.d(pVar6.gx);
                    if (p.this.yy.ah()) {
                        com.bytedance.msdk.core.s.dq.dq dq2 = com.bytedance.msdk.core.s.dq.dq.dq();
                        p pVar7 = p.this;
                        if (dq2.p(pVar7.kk, pVar7.yy.b(), p.this.i())) {
                            p pVar8 = p.this;
                            com.bytedance.msdk.d.s sVar3 = pVar8.yy;
                            pVar8.dq(sVar3, sVar3.b());
                        }
                    }
                    com.bytedance.msdk.core.s.dq.dq dq3 = com.bytedance.msdk.core.s.dq.dq.dq();
                    List<com.bytedance.msdk.d.s> l = p.this.l();
                    p pVar9 = p.this;
                    dq3.dq(l, pVar9.kk, pVar9.no, pVar9.i(), p.this.yy);
                    StringBuilder sb = new StringBuilder();
                    sb.append(com.bytedance.msdk.dq.s.s.dq(p.this.kk, "show"));
                    sb.append("展示的广告类型：");
                    sb.append(com.bytedance.msdk.d.dq.dq(p.this.yy.hf()));
                    sb.append(",slotId：");
                    tn.a(p.this.yy, sb, ",slotType:");
                    sb.append(p.this.yy.y());
                    sb.append(",isReady()：");
                    p pVar10 = p.this;
                    sb.append(pVar10.yy.u(pVar10.kk));
                    sb.append("，是否为缓存广告:");
                    sb.append(p.this.yy.fx());
                    com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", sb.toString());
                    p.this.yy.dq(activity, ritScenes, str);
                    mp.dq().d(p.this.kk);
                    com.bytedance.msdk.core.kk.ig dq4 = com.bytedance.msdk.core.kk.ig.dq();
                    p pVar11 = p.this;
                    dq4.d(pVar11.kk, pVar11.yy.b());
                    p.this.uh = true;
                    if (p.this.yy != null) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(p.this.yy);
                        p.this.d(arrayList);
                    }
                    p pVar12 = p.this;
                    com.bytedance.msdk.s.iw.dq(pVar12.yy, pVar12.no, false, pVar12.mn() ? 1 : 0);
                }
            }
        });
    }

    public void dq(Object obj) {
        this.f967d = obj;
        com.bytedance.msdk.d.s sVar = this.yy;
        if (sVar != null) {
            sVar.dq(obj);
        }
    }

    public void dq(boolean z) {
        this.ce = z;
    }

    public void jy() {
        boolean z;
        com.bytedance.msdk.core.no.d dVar;
        if (this.yy.qz() == 10 || this.yy.qz() == 8 || this.yy.qz() == 7) {
            boolean z2 = (this.yy.e() && this.yy.fx() && com.bytedance.msdk.core.s.d.p.dq().ox(this.kk, i())) ? false : true;
            com.bytedance.msdk.api.dq.d dVar2 = this.no;
            z = this.yy.hf() == 4 ? false : (dVar2 == null || !(dVar2.le() == 10 || this.no.le() == 8) || (dVar = this.mn) == null || dVar.mp() == 0) ? z2 : true;
        } else {
            z = true;
        }
        if (this.yy.ah() && com.bytedance.msdk.core.s.dq.dq.dq().p(this.kk, this.yy.b(), i())) {
            com.bytedance.msdk.core.s.dq.dq.dq().dq(this.yy.b(), this.no, this.i, z, this.ha, this.f963e, this.l.get());
        }
    }

    public boolean mn() {
        return false;
    }

    public boolean mp() {
        List<no> list;
        try {
            list = h_();
        } catch (Throwable th) {
            th.printStackTrace();
            list = null;
        }
        com.bytedance.msdk.core.no.d dVar = this.mn;
        return jy.dq(this.r, this.gh, this.cd, this.no, this.uh, this.s, this.kk, i(), list, dVar != null ? dVar.gx() : null);
    }

    public boolean no() {
        return this.ce;
    }

    public void ox(final com.bytedance.msdk.d.s sVar) {
        com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.mn.p.1
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.msdk.d.s sVar2 = sVar;
                if (sVar2 == null || !sVar2.e() || !sVar.fx() || (p.this.yy instanceof com.bytedance.msdk.api.p.dq.d.ox)) {
                    return;
                }
                com.bytedance.msdk.dq.s.ox.dq("TTMediationSDK", com.bytedance.msdk.dq.s.s.d(p.this.kk, sVar.b()) + "在show时触发了预加载【" + sVar.m() + "】, loadSort: " + sVar.ae() + ", showSort: " + sVar.wq());
                p.this.er = true;
                com.bytedance.msdk.core.s.d.p dq2 = com.bytedance.msdk.core.s.d.p.dq();
                Context context = p.this.l.get();
                p pVar = p.this;
                dq2.d(context, pVar.kk, pVar.i());
            }
        });
    }

    public void q() {
        com.bytedance.msdk.d.s sVar = this.yy;
        if (sVar == null || sVar.hf() == 4) {
            return;
        }
        com.bytedance.msdk.core.s.d.p.dq().dq(this.l.get(), this.kk, i());
    }
}

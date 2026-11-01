package com.bytedance.msdk.api.p.dq.d.d;

import android.content.Context;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.core.no.o;
import com.bytedance.msdk.d.s;
import com.bytedance.msdk.dq.dq;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: d, reason: collision with root package name */
    protected no f764d;
    protected Map<String, Object> mn;
    protected com.bytedance.msdk.dq.dq ox;
    protected com.bytedance.msdk.api.p.dq.d.d.dq p;
    protected boolean dq = false;
    protected int s = 0;
    protected int iw = 0;

    public interface dq {
        void dq();
    }

    public void d() {
    }

    public abstract void d(Context context, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.api.p.dq.d.ox.ox oxVar);

    public final void d(dq dqVar) {
        if (!this.dq) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter show方法回调必须由GroMore触发show时才会生效");
            return;
        }
        int i = this.s;
        if (i >= 2) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter show方法回调次数需要小于2次");
            return;
        }
        this.s = i + 1;
        if (dqVar != null) {
            dqVar.dq();
        }
    }

    public MediationConstant.AdIsReadyStatus dq() {
        return MediationConstant.AdIsReadyStatus.ADN_NO_READY_API;
    }

    public final void dq(Context context, final com.bytedance.msdk.api.dq.d dVar, final no noVar, Map<String, Object> map, o oVar, int i, dq.InterfaceC0063dq interfaceC0063dq) {
        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK_SDK_Init", "自定义ADN 开始加载广告对象 ----------   adSlot = " + noVar.cd());
        this.f764d = noVar;
        map.put("const_is_custom", Boolean.TRUE);
        com.bytedance.msdk.api.p.dq.d.d dVar2 = new com.bytedance.msdk.api.p.dq.d.d() { // from class: com.bytedance.msdk.api.p.dq.d.d.d.1
            @Override // com.bytedance.msdk.dq.dq
            public void dq(Context context2, Map<String, Object> map2) {
                com.bytedance.msdk.api.p.dq.d.ox.ox oxVar = new com.bytedance.msdk.api.p.dq.d.ox.ox(d.this.o(), noVar.cd(), noVar.o(), noVar.iw(), noVar.er());
                com.bytedance.msdk.api.p.dq.d.iw.dq dq2 = com.bytedance.msdk.iw.d.dq.dq(noVar.jy());
                ((com.bytedance.msdk.api.p.dq.d.d) this).iw = dq2 != null ? dq2.dq() : "";
                d.this.d(context2, dVar, oxVar);
            }

            @Override // com.bytedance.msdk.api.p.dq.d.d, com.bytedance.msdk.dq.dq
            public String fw() {
                no noVar2 = noVar;
                return noVar2 != null ? noVar2.jy() : super.fw();
            }
        };
        this.ox = dVar2;
        dVar2.dq(interfaceC0063dq);
        this.ox.dq(context, noVar, map, dVar, oVar, i);
    }

    public final void dq(dq dqVar) {
        if (!no()) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter 调用错误需要在load成功之后才可以调用");
        } else if (dqVar != null) {
            dqVar.dq();
        }
    }

    public final void dq(s sVar, String str) {
        com.bytedance.msdk.dq.dq dqVar = this.ox;
        if (dqVar != null) {
            dqVar.dq(sVar, str, (Map<String, Object>) null);
        }
    }

    public void dq(boolean z, double d2, int i, Map<String, Object> map) {
    }

    public final Object f() {
        com.bytedance.msdk.dq.dq dqVar = this.ox;
        if (dqVar == null) {
            return null;
        }
        return dqVar.o();
    }

    public final boolean ig() {
        com.bytedance.msdk.dq.dq dqVar = this.ox;
        if (dqVar != null) {
            return dqVar.jy();
        }
        return false;
    }

    public final String jy() {
        com.bytedance.msdk.dq.dq dqVar = this.ox;
        return dqVar == null ? "" : dqVar.kk();
    }

    public final MediationConstant.AdIsReadyStatus mp() {
        try {
            return dq();
        } catch (Exception e2) {
            e2.printStackTrace();
            return MediationConstant.AdIsReadyStatus.ADN_NO_READY_API;
        }
    }

    public final boolean no() {
        com.bytedance.msdk.dq.dq dqVar = this.ox;
        if (dqVar != null) {
            return dqVar.f();
        }
        return false;
    }

    public final String o() {
        no noVar = this.f764d;
        return noVar == null ? "" : noVar.jy();
    }

    public void ox() {
    }

    public final void ox(dq dqVar) {
        int i = this.iw;
        if (i >= 60) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter click方法回调次数需要小于60次");
            return;
        }
        this.iw = i + 1;
        if (dqVar != null) {
            dqVar.dq();
        }
    }

    public void p() {
    }

    public final int q() {
        com.bytedance.msdk.dq.dq dqVar = this.ox;
        if (dqVar == null) {
            return 0;
        }
        return dqVar.ia();
    }
}

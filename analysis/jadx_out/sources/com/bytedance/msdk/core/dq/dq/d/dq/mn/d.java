package com.bytedance.msdk.core.dq.dq.d.dq.mn;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.d.s;
import com.bytedance.msdk.dq.s.iw;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.hat;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class d extends s implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private no f881d;
    private Bridge dq;
    private com.bytedance.msdk.core.dq.dq.d.dq ox;

    public d(com.bytedance.msdk.core.dq.dq.d.dq dqVar, Bridge bridge) {
        this.dq = bridge;
        this.ox = dqVar;
        this.f881d = dqVar.f854d;
        u();
        no noVar = this.f881d;
        if (noVar != null) {
            if (noVar.op()) {
                dq(kf());
            } else if (this.f881d.u()) {
                mp(el());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int dn() {
        int intValue;
        Bridge bridge = this.dq;
        if (bridge == null || (intValue = ((Integer) bridge.call(40003, null, Integer.class)).intValue()) == -1) {
            return 0;
        }
        return intValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String el() {
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        return (dqVar == null || !dqVar.ox()) ? hg() : fa();
    }

    private String fa() {
        try {
            String str = (String) iw.dq(new Callable<String>() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.mn.d.2
                @Override // java.util.concurrent.Callable
                public String call() throws Exception {
                    return d.this.el();
                }
            }).get(500L, TimeUnit.MILLISECONDS);
            return str != null ? str : "";
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MediationConstant.AdIsReadyStatus gv() {
        Bridge bridge = this.dq;
        return (bridge == null || !((Boolean) bridge.call(40010, null, Boolean.class)).booleanValue()) ? MediationConstant.AdIsReadyStatus.AD_IS_NOT_READY : MediationConstant.AdIsReadyStatus.AD_IS_READY;
    }

    private String hg() {
        Bridge bridge = this.dq;
        return bridge == null ? "" : (String) bridge.call(40004, null, String.class);
    }

    private void iw(ViewGroup viewGroup) {
        no noVar = this.f881d;
        if (noVar != null) {
            int o = noVar.o();
            if (o == 2) {
                ox(viewGroup);
            } else if (o == 0 || o == 1) {
                p(viewGroup);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void iw(Map<String, Object> map) {
        if (this.dq != null) {
            hat f2 = hat.f();
            f2.m(50010, map);
            this.dq.call(40014, f2.k(), Void.class);
        }
    }

    private void ix() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            bridge.call(40011, null, Void.class);
        }
    }

    private double kf() {
        if (this.dq == null) {
            return 0.0d;
        }
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        return (dqVar == null || !dqVar.ox()) ? dn() : kr();
    }

    private int kr() {
        try {
            Integer num = (Integer) iw.dq(new Callable<Integer>() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.mn.d.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public Integer call() throws Exception {
                    return Integer.valueOf(d.this.dn());
                }
            }).get(500L, TimeUnit.MILLISECONDS);
            if (num != null) {
                return num.intValue();
            }
            return 0;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    private String ne() {
        try {
            return (String) iw.dq(new Callable<String>() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.mn.d.7
                @Override // java.util.concurrent.Callable
                public String call() throws Exception {
                    return d.this.vk();
                }
            }).get(500L, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private void ox(ViewGroup viewGroup) {
        if (this.dq != null) {
            hat f2 = hat.f();
            f2.m(50013, viewGroup);
            this.dq.call(40008, f2.k(), null);
        }
    }

    private void p(ViewGroup viewGroup) {
        if (this.dq != null) {
            hat f2 = hat.f();
            f2.m(50013, viewGroup);
            this.dq.call(40029, f2.k(), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(ViewGroup viewGroup) {
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            Context context = viewGroup.getContext();
            if (context instanceof Activity) {
                ViewGroup viewGroup2 = (ViewGroup) ((Activity) context).findViewById(R.id.content);
                if (viewGroup.getParent() == null) {
                    if (viewGroup2 != null) {
                        viewGroup.setAlpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                        viewGroup2.addView(viewGroup);
                    }
                    iw(viewGroup);
                    if (viewGroup2 != null) {
                        viewGroup2.removeView(viewGroup);
                        viewGroup.setAlpha(1.0f);
                        return;
                    }
                    return;
                }
            }
            iw(viewGroup);
        }
    }

    private void u() {
        if (this.dq != null) {
            hat f2 = hat.f();
            f2.m(50009, this);
            this.dq.call(40009, f2.k(), null);
        }
    }

    private MediationConstant.AdIsReadyStatus uo() {
        try {
            MediationConstant.AdIsReadyStatus adIsReadyStatus = (MediationConstant.AdIsReadyStatus) iw.dq(new Callable<MediationConstant.AdIsReadyStatus>() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.mn.d.4
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public MediationConstant.AdIsReadyStatus call() throws Exception {
                    return d.this.gv();
                }
            }).get(500L, TimeUnit.MILLISECONDS);
            return adIsReadyStatus != null ? adIsReadyStatus : MediationConstant.AdIsReadyStatus.AD_IS_NOT_READY;
        } catch (Exception e2) {
            e2.printStackTrace();
            return MediationConstant.AdIsReadyStatus.AD_IS_NOT_READY;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String vk() {
        Map map;
        Object obj;
        Bridge bridge = this.dq;
        return (bridge == null || (map = (Map) bridge.call(40015, null, Map.class)) == null || (obj = map.get("request_id")) == null) ? "" : obj.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void wp(int i) {
        if (this.dq != null) {
            hat f2 = hat.f();
            f2.o(50007, i);
            this.dq.call(40013, f2.k(), Void.class);
        }
    }

    private com.bytedance.msdk.dq.d.s xn() {
        return (com.bytedance.msdk.dq.d.s) this.ig;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 60013) {
            if (xn() == null) {
                return null;
            }
            xn().d(2);
            return null;
        }
        if (i == 60014) {
            if (xn() == null) {
                return null;
            }
            xn().x_();
            return null;
        }
        if (i == 60015) {
            if (xn() == null) {
                return null;
            }
            xn().F_();
            return null;
        }
        if (i == 60009) {
            if (xn() == null) {
                return null;
            }
            xn().w_();
            return null;
        }
        if (i != 60004 || xn() == null) {
            return null;
        }
        xn().mn();
        return null;
    }

    @Override // com.bytedance.msdk.d.s
    public void d(Map<String, Object> map) {
        no noVar = this.f881d;
        if (noVar != null && noVar.op()) {
            final int dk = (int) dk();
            com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
            if (dqVar == null || !dqVar.ox()) {
                wp(dk);
            } else {
                iw.p(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.mn.d.5
                    @Override // java.lang.Runnable
                    public void run() {
                        d.this.wp(dk);
                    }
                });
            }
        }
    }

    @Override // com.bytedance.msdk.d.s
    public void dq(final ViewGroup viewGroup) {
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        if (dqVar == null || !dqVar.ox()) {
            s(viewGroup);
        } else {
            iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.mn.d.3
                @Override // java.lang.Runnable
                public void run() {
                    d.this.s(viewGroup);
                }
            });
        }
    }

    public void dq(com.bytedance.msdk.core.dq.dq.d.dq.iw.d dVar) {
        int i;
        String str;
        if (xn() != null) {
            if (dVar != null) {
                i = dVar.dq();
                str = dVar.d();
            } else {
                i = 0;
                str = "";
            }
            xn().d_(new com.bytedance.msdk.api.dq(i, str));
        }
    }

    @Override // com.bytedance.msdk.d.s
    public void dq(final Map<String, Object> map) {
        no noVar = this.f881d;
        if (noVar == null || !noVar.op() || map == null) {
            return;
        }
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        if (dqVar == null || !dqVar.ox()) {
            iw(map);
        } else {
            iw.p(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.mn.d.6
                @Override // java.lang.Runnable
                public void run() {
                    d.this.iw((Map<String, Object>) map);
                }
            });
        }
    }

    @Override // com.bytedance.msdk.d.s
    public boolean e() {
        return true;
    }

    @Override // com.bytedance.msdk.d.s
    public String iw() {
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        return (dqVar == null || !dqVar.ox()) ? vk() : ne();
    }

    @Override // com.bytedance.msdk.d.s
    public MediationConstant.AdIsReadyStatus kx() {
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        return (dqVar == null || !dqVar.ox()) ? gv() : uo();
    }

    @Override // com.bytedance.msdk.d.s
    public void p() {
        super.p();
        ix();
    }

    @Override // com.bytedance.msdk.d.s
    public boolean s() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            return ((Boolean) bridge.call(40012, null, Boolean.class)).booleanValue();
        }
        return false;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return null;
    }
}

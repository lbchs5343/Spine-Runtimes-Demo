package com.bytedance.msdk.core.dq.dq.d.dq.dq;

import android.view.View;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.d.s;
import com.bytedance.msdk.dq.s.iw;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.hat;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class d extends s implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private no f862d;
    private Bridge dq;
    private com.bytedance.msdk.core.dq.dq.d.dq ox;
    private com.bytedance.msdk.api.dq.d p;
    private volatile boolean s = false;

    public d(com.bytedance.msdk.core.dq.dq.d.dq dqVar, Bridge bridge) {
        this.dq = bridge;
        this.ox = dqVar;
        this.f862d = dqVar.f854d;
        this.p = dqVar.dq;
        u();
        no noVar = this.f862d;
        if (noVar != null) {
            if (noVar.op()) {
                dq(kf());
            } else if (this.f862d.u()) {
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
            String str = (String) iw.dq(new Callable<String>() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.dq.d.2
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

    /* JADX INFO: Access modifiers changed from: private */
    public void iw(Map<String, Object> map) {
        if (this.dq != null) {
            hat f2 = hat.f();
            f2.m(50010, map);
            this.dq.call(40014, f2.k(), Void.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ix() {
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
            Integer num = (Integer) iw.dq(new Callable<Integer>() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.dq.d.1
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
            return (String) iw.dq(new Callable<String>() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.dq.d.7
                @Override // java.util.concurrent.Callable
                public String call() throws Exception {
                    return d.this.vk();
                }
            }).get(500L, TimeUnit.MILLISECONDS);
        } catch (Throwable unused) {
            return null;
        }
    }

    private View sp() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            return (View) bridge.call(40035, null, View.class);
        }
        return null;
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
            MediationConstant.AdIsReadyStatus adIsReadyStatus = (MediationConstant.AdIsReadyStatus) iw.dq(new Callable<MediationConstant.AdIsReadyStatus>() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.dq.d.3
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

    private com.bytedance.msdk.api.p.dq.dq.dq xn() {
        return (com.bytedance.msdk.api.p.dq.dq.dq) this.ig;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 60009) {
            if (this.ig instanceof com.bytedance.msdk.api.p.dq.dq.dq) {
                xn().d(null);
            }
        } else if (i == 60006) {
            if (this.ig instanceof com.bytedance.msdk.api.p.dq.dq.dq) {
                com.bytedance.msdk.api.dq.d dVar = this.p;
                if (dVar != null) {
                    com.bytedance.msdk.core.d.dq.dq(dVar.k());
                }
                xn().C_();
            }
        } else if (i == 60004 && (this.ig instanceof com.bytedance.msdk.api.p.dq.dq.dq)) {
            xn().dq(null);
        }
        return null;
    }

    @Override // com.bytedance.msdk.d.s
    public void d(Map<String, Object> map) {
        no noVar = this.f862d;
        if (noVar != null && noVar.op()) {
            final int dk = (int) dk();
            com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
            if (dqVar == null || !dqVar.ox()) {
                wp(dk);
            } else {
                iw.p(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.dq.d.5
                    @Override // java.lang.Runnable
                    public void run() {
                        d.this.wp(dk);
                    }
                });
            }
        }
    }

    @Override // com.bytedance.msdk.d.s
    public void dq(final Map<String, Object> map) {
        no noVar = this.f862d;
        if (noVar == null || !noVar.op() || map == null) {
            return;
        }
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        if (dqVar == null || !dqVar.ox()) {
            iw(map);
        } else {
            iw.p(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.dq.d.6
                @Override // java.lang.Runnable
                public void run() {
                    d.this.iw((Map<String, Object>) map);
                }
            });
        }
    }

    @Override // com.bytedance.msdk.d.s
    public View ig() {
        return sp();
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
        this.s = true;
        iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.dq.d.4
            @Override // java.lang.Runnable
            public void run() {
                d.this.ix();
            }
        });
    }

    @Override // com.bytedance.msdk.d.s
    public boolean s() {
        return this.s;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return null;
    }
}

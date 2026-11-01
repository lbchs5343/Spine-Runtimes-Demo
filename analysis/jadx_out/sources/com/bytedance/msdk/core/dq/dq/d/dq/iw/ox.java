package com.bytedance.msdk.core.dq.dq.d.dq.iw;

import android.app.Activity;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.d.s;
import com.bytedance.msdk.dq.s.iw;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.hat;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class ox extends s implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private no f876d;
    private Bridge dq;
    private com.bytedance.msdk.core.dq.dq.d.dq ox;
    private com.bytedance.msdk.api.dq.d p;

    public ox(com.bytedance.msdk.core.dq.dq.d.dq dqVar, Bridge bridge) {
        this.dq = bridge;
        this.ox = dqVar;
        this.f876d = dqVar.f854d;
        this.p = dqVar.dq;
        u();
        no noVar = this.f876d;
        if (noVar != null) {
            if (noVar.op()) {
                dq(kf());
            } else if (this.f876d.u()) {
                mp(el());
            }
        }
    }

    private int dn() {
        try {
            Integer num = (Integer) iw.dq(new Callable<Integer>() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.iw.ox.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public Integer call() throws Exception {
                    return Integer.valueOf(ox.this.kr());
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

    /* JADX INFO: Access modifiers changed from: private */
    public void e(int i) {
        if (this.dq != null) {
            hat f2 = hat.f();
            f2.o(50007, i);
            this.dq.call(40013, f2.k(), Void.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String el() {
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        return (dqVar == null || !dqVar.ox()) ? hg() : fa();
    }

    private String fa() {
        try {
            String str = (String) iw.dq(new Callable<String>() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.iw.ox.2
                @Override // java.util.concurrent.Callable
                public String call() throws Exception {
                    return ox.this.el();
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

    private String ix() {
        try {
            return (String) iw.dq(new Callable<String>() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.iw.ox.7
                @Override // java.util.concurrent.Callable
                public String call() throws Exception {
                    return ox.this.ne();
                }
            }).get(500L, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private double kf() {
        if (this.dq == null) {
            return 0.0d;
        }
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        return (dqVar == null || !dqVar.ox()) ? kr() : dn();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int kr() {
        int intValue;
        Bridge bridge = this.dq;
        if (bridge == null || (intValue = ((Integer) bridge.call(40003, null, Integer.class)).intValue()) == -1) {
            return 0;
        }
        return intValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String ne() {
        Map map;
        Object obj;
        Bridge bridge = this.dq;
        return (bridge == null || (map = (Map) bridge.call(40015, null, Map.class)) == null || (obj = map.get("request_id")) == null) ? "" : obj.toString();
    }

    private void ox(Activity activity) {
        if (this.dq != null) {
            hat f2 = hat.f();
            f2.m(50008, activity);
            this.dq.call(40008, f2.k(), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(Activity activity) {
        no noVar = this.f876d;
        if (noVar != null && noVar.n()) {
            wp(kr());
        }
        ox(activity);
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
            MediationConstant.AdIsReadyStatus adIsReadyStatus = (MediationConstant.AdIsReadyStatus) iw.dq(new Callable<MediationConstant.AdIsReadyStatus>() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.iw.ox.4
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public MediationConstant.AdIsReadyStatus call() throws Exception {
                    return ox.this.gv();
                }
            }).get(500L, TimeUnit.MILLISECONDS);
            return adIsReadyStatus != null ? adIsReadyStatus : MediationConstant.AdIsReadyStatus.AD_IS_NOT_READY;
        } catch (Exception e2) {
            e2.printStackTrace();
            return MediationConstant.AdIsReadyStatus.AD_IS_NOT_READY;
        }
    }

    private com.bytedance.msdk.api.p.dq.ia.dq vk() {
        return (com.bytedance.msdk.api.p.dq.ia.dq) this.ig;
    }

    private void wp(int i) {
        if (this.dq != null) {
            hat f2 = hat.f();
            f2.o(50007, i);
            this.dq.call(40007, f2.k(), null);
        }
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 60002) {
            if (!(this.ig instanceof com.bytedance.msdk.api.p.dq.ia.dq)) {
                return null;
            }
            vk().E_();
            return null;
        }
        if (i == 60004) {
            if (!(this.ig instanceof com.bytedance.msdk.api.p.dq.ia.dq)) {
                return null;
            }
            vk().s_();
            return null;
        }
        if (i == 60005) {
            if (!(this.ig instanceof com.bytedance.msdk.api.p.dq.ia.dq)) {
                return null;
            }
            vk().u_();
            return null;
        }
        if (i == 60006) {
            if (!(this.ig instanceof com.bytedance.msdk.api.p.dq.ia.dq)) {
                return null;
            }
            vk().t_();
            return null;
        }
        if (i != 60007) {
            return null;
        }
        Map map = (Map) valueSet.objectValue(50010, Map.class);
        if (!(this.ig instanceof com.bytedance.msdk.api.p.dq.ia.dq)) {
            return null;
        }
        final HashMap hashMap = new HashMap();
        if (map != null) {
            hashMap.putAll(map);
        }
        vk().dq(new com.bytedance.msdk.api.ox.dq() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.iw.ox.8
            @Override // com.bytedance.msdk.api.ox.dq
            public float d() {
                return ox.this.p != null ? ox.this.p.n() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            }

            @Override // com.bytedance.msdk.api.ox.dq
            public boolean dq() {
                return true;
            }

            @Override // com.bytedance.msdk.api.ox.dq
            public String ox() {
                return ox.this.p != null ? ox.this.p.bl() : "";
            }

            @Override // com.bytedance.msdk.api.ox.dq
            public Map<String, Object> p() {
                return hashMap;
            }
        });
        return null;
    }

    @Override // com.bytedance.msdk.d.s
    public void d(Map<String, Object> map) {
        no noVar = this.f876d;
        if (noVar != null && noVar.op()) {
            final int dk = (int) dk();
            com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
            if (dqVar == null || !dqVar.ox()) {
                e(dk);
            } else {
                iw.p(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.iw.ox.5
                    @Override // java.lang.Runnable
                    public void run() {
                        ox.this.e(dk);
                    }
                });
            }
        }
    }

    @Override // com.bytedance.msdk.d.s
    public void dq(final Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        if (dqVar == null || !dqVar.ox()) {
            p(activity);
        } else {
            iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.iw.ox.3
                @Override // java.lang.Runnable
                public void run() {
                    ox.this.p(activity);
                }
            });
        }
    }

    @Override // com.bytedance.msdk.d.s
    public void dq(final Map<String, Object> map) {
        no noVar = this.f876d;
        if (noVar == null || !noVar.op() || map == null) {
            return;
        }
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        if (dqVar == null || !dqVar.ox()) {
            iw(map);
        } else {
            iw.p(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.iw.ox.6
                @Override // java.lang.Runnable
                public void run() {
                    ox.this.iw((Map<String, Object>) map);
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
        return (dqVar == null || !dqVar.ox()) ? ne() : ix();
    }

    @Override // com.bytedance.msdk.d.s
    public MediationConstant.AdIsReadyStatus kx() {
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        return (dqVar == null || !dqVar.ox()) ? gv() : uo();
    }

    @Override // com.bytedance.msdk.d.s
    public void p() {
        super.p();
        Bridge bridge = this.dq;
        if (bridge != null) {
            bridge.call(40011, null, Void.class);
        }
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

package com.bytedance.msdk.core.dq.dq.d.dq.p;

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
public class d extends s implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private no f897d;
    private Bridge dq;
    private com.bytedance.msdk.core.dq.dq.d.dq ox;
    private com.bytedance.msdk.api.dq.d p;

    public d(com.bytedance.msdk.core.dq.dq.d.dq dqVar, Bridge bridge) {
        this.dq = bridge;
        this.ox = dqVar;
        this.f897d = dqVar.f854d;
        this.p = dqVar.dq;
        kr();
        no noVar = this.f897d;
        if (noVar != null) {
            if (noVar.op()) {
                dq(el());
            } else if (this.f897d.u()) {
                mp(uo());
            }
        }
        if (dn() == 2) {
            ig(5);
            kf();
            u();
        }
    }

    private int dn() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            return ((Integer) bridge.call(40021, null, Integer.class)).intValue();
        }
        return 0;
    }

    private double el() {
        if (this.dq == null) {
            return 0.0d;
        }
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        return (dqVar == null || !dqVar.ox()) ? fa() : hg();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int fa() {
        int intValue;
        Bridge bridge = this.dq;
        if (bridge == null || (intValue = ((Integer) bridge.call(40003, null, Integer.class)).intValue()) == -1) {
            return 0;
        }
        return intValue;
    }

    private String gv() {
        try {
            String str = (String) iw.dq(new Callable<String>() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.p.d.2
                @Override // java.util.concurrent.Callable
                public String call() throws Exception {
                    return d.this.uo();
                }
            }).get(500L, TimeUnit.MILLISECONDS);
            return str != null ? str : "";
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    private int hg() {
        try {
            Integer num = (Integer) iw.dq(new Callable<Integer>() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.p.d.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public Integer call() throws Exception {
                    return Integer.valueOf(d.this.fa());
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

    private com.bytedance.msdk.api.p.dq.p.dq hz() {
        return (com.bytedance.msdk.api.p.dq.p.dq) this.ig;
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
        Bridge bridge = this.dq;
        return bridge == null ? "" : (String) bridge.call(40004, null, String.class);
    }

    private void kf() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            bridge.call(40022, null, Void.class);
        }
    }

    private void kr() {
        if (this.dq != null) {
            hat f2 = hat.f();
            f2.m(50009, this);
            this.dq.call(40009, f2.k(), null);
        }
    }

    private MediationConstant.AdIsReadyStatus ne() {
        try {
            MediationConstant.AdIsReadyStatus adIsReadyStatus = (MediationConstant.AdIsReadyStatus) iw.dq(new Callable<MediationConstant.AdIsReadyStatus>() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.p.d.4
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public MediationConstant.AdIsReadyStatus call() throws Exception {
                    return d.this.vk();
                }
            }).get(500L, TimeUnit.MILLISECONDS);
            return adIsReadyStatus != null ? adIsReadyStatus : MediationConstant.AdIsReadyStatus.AD_IS_NOT_READY;
        } catch (Exception e2) {
            e2.printStackTrace();
            return MediationConstant.AdIsReadyStatus.AD_IS_NOT_READY;
        }
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
        ox(activity);
    }

    private String sp() {
        try {
            return (String) iw.dq(new Callable<String>() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.p.d.8
                @Override // java.util.concurrent.Callable
                public String call() throws Exception {
                    return d.this.xq();
                }
            }).get(500L, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private void u() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            bridge.call(40023, null, Void.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String uo() {
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        return (dqVar == null || !dqVar.ox()) ? ix() : gv();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MediationConstant.AdIsReadyStatus vk() {
        Bridge bridge = this.dq;
        return (bridge == null || !((Boolean) bridge.call(40010, null, Boolean.class)).booleanValue()) ? MediationConstant.AdIsReadyStatus.AD_IS_NOT_READY : MediationConstant.AdIsReadyStatus.AD_IS_READY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void wp(int i) {
        if (this.dq != null) {
            hat f2 = hat.f();
            f2.o(50007, i);
            this.dq.call(40013, f2.k(), Void.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void xn() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            bridge.call(40011, null, Void.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String xq() {
        Map map;
        Object obj;
        Bridge bridge = this.dq;
        return (bridge == null || (map = (Map) bridge.call(40015, null, Map.class)) == null || (obj = map.get("request_id")) == null) ? "" : obj.toString();
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 60009) {
            if (hz() == null) {
                return null;
            }
            hz().D_();
            return null;
        }
        if (i == 60004) {
            if (hz() == null) {
                return null;
            }
            hz().o_();
            return null;
        }
        if (i == 60005) {
            if (hz() == null) {
                return null;
            }
            hz().q_();
            return null;
        }
        if (i == 60006) {
            if (hz() == null) {
                return null;
            }
            hz().p_();
            return null;
        }
        if (i == 60010) {
            if (hz() == null) {
                return null;
            }
            hz().r_();
            return null;
        }
        if (i != 60007) {
            return null;
        }
        Map map = (Map) valueSet.objectValue(50010, Map.class);
        if (hz() == null) {
            return null;
        }
        final HashMap hashMap = new HashMap();
        if (map != null) {
            hashMap.putAll(map);
        }
        hz().dq(new com.bytedance.msdk.api.ox.dq() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.p.d.9
            @Override // com.bytedance.msdk.api.ox.dq
            public float d() {
                return d.this.p != null ? d.this.p.n() : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            }

            @Override // com.bytedance.msdk.api.ox.dq
            public boolean dq() {
                return true;
            }

            @Override // com.bytedance.msdk.api.ox.dq
            public String ox() {
                return d.this.p != null ? d.this.p.bl() : "";
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
        no noVar = this.f897d;
        if (noVar != null && noVar.op()) {
            final int dk = (int) dk();
            com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
            if (dqVar == null || !dqVar.ox()) {
                wp(dk);
            } else {
                iw.p(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.p.d.6
                    @Override // java.lang.Runnable
                    public void run() {
                        d.this.wp(dk);
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
            iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.p.d.3
                @Override // java.lang.Runnable
                public void run() {
                    d.this.p(activity);
                }
            });
        }
    }

    @Override // com.bytedance.msdk.d.s
    public void dq(final Map<String, Object> map) {
        no noVar = this.f897d;
        if (noVar == null || !noVar.op() || map == null) {
            return;
        }
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        if (dqVar == null || !dqVar.ox()) {
            iw(map);
        } else {
            iw.p(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.p.d.7
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
        return (dqVar == null || !dqVar.ox()) ? xq() : sp();
    }

    @Override // com.bytedance.msdk.d.s
    public MediationConstant.AdIsReadyStatus kx() {
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        return (dqVar == null || !dqVar.ox()) ? vk() : ne();
    }

    @Override // com.bytedance.msdk.d.s
    public void p() {
        super.p();
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        if (dqVar == null || !dqVar.ox()) {
            xn();
        } else {
            iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.p.d.5
                @Override // java.lang.Runnable
                public void run() {
                    d.this.xn();
                }
            });
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

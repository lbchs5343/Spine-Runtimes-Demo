package com.bytedance.msdk.core.dq.dq.d.dq.ox;

import android.view.View;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.api.p.dq.mn.kk;
import com.bytedance.msdk.api.p.dq.mn.mn;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.d.s;
import com.bytedance.msdk.dq.s.iw;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.hat;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class ox extends s implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private no f894d;
    private Bridge dq;
    private com.bytedance.msdk.core.dq.dq.d.dq ox;
    private com.bytedance.msdk.api.dq.d p;

    public ox(com.bytedance.msdk.core.dq.dq.d.dq dqVar, Bridge bridge) {
        this.dq = bridge;
        this.ox = dqVar;
        this.f894d = dqVar.f854d;
        this.p = dqVar.dq;
        el();
        if (kr() == 2) {
            ig(5);
            dn();
        } else if (kr() == 1 || kr() == 4) {
            ig(3);
        } else if (kr() == 3) {
            ig(4);
        } else {
            ig(3);
        }
        mn(true);
        n(kf());
        op(u());
        mp(3);
        no noVar = this.f894d;
        if (noVar != null) {
            if (noVar.op()) {
                dq(fa());
            } else if (this.f894d.u()) {
                mp(gv());
            }
        }
    }

    private void dn() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            bridge.call(40022, null, Void.class);
        }
    }

    private void e(int i) {
        if (this.dq != null) {
            hat f2 = hat.f();
            f2.o(50007, i);
            this.dq.call(40007, f2.k(), null);
        }
    }

    private void el() {
        if (this.dq != null) {
            hat f2 = hat.f();
            f2.m(50009, this);
            this.dq.call(40009, f2.k(), null);
        }
    }

    private double fa() {
        if (this.dq == null) {
            return 0.0d;
        }
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        return (dqVar == null || !dqVar.ox()) ? uo() : hg();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String gv() {
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        return (dqVar == null || !dqVar.ox()) ? ne() : ix();
    }

    private int hg() {
        try {
            Integer num = (Integer) iw.dq(new Callable<Integer>() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.ox.ox.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public Integer call() throws Exception {
                    return Integer.valueOf(ox.this.uo());
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
    public void hz() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            bridge.call(40034, null, Void.class);
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

    private String ix() {
        try {
            String str = (String) iw.dq(new Callable<String>() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.ox.ox.2
                @Override // java.util.concurrent.Callable
                public String call() throws Exception {
                    return ox.this.gv();
                }
            }).get(500L, TimeUnit.MILLISECONDS);
            return str != null ? str : "";
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    private String kf() {
        Bridge bridge = this.dq;
        return bridge != null ? (String) bridge.call(40032, null, String.class) : "";
    }

    private int kr() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            return ((Integer) bridge.call(40021, null, Integer.class)).intValue();
        }
        return 0;
    }

    private View ml() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            return (View) bridge.call(40035, null, View.class);
        }
        return null;
    }

    private String ne() {
        Bridge bridge = this.dq;
        return bridge == null ? "" : (String) bridge.call(40004, null, String.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String sp() {
        Map map;
        Object obj;
        Bridge bridge = this.dq;
        return (bridge == null || (map = (Map) bridge.call(40015, null, Map.class)) == null || (obj = map.get("request_id")) == null) ? "" : obj.toString();
    }

    private String u() {
        Bridge bridge = this.dq;
        return bridge != null ? (String) bridge.call(40033, null, String.class) : "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int uo() {
        int intValue;
        Bridge bridge = this.dq;
        if (bridge == null || (intValue = ((Integer) bridge.call(40003, null, Integer.class)).intValue()) == -1) {
            return 0;
        }
        return intValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void vk() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            bridge.call(40011, null, Void.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void wp(int i) {
        if (this.dq != null) {
            hat f2 = hat.f();
            f2.o(50007, i);
            this.dq.call(40013, f2.k(), Void.class);
        }
    }

    private String xn() {
        try {
            return (String) iw.dq(new Callable<String>() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.ox.ox.6
                @Override // java.util.concurrent.Callable
                public String call() throws Exception {
                    return ox.this.sp();
                }
            }).get(500L, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private boolean xq() {
        Bridge bridge = this.dq;
        if (bridge != null) {
            return ((Boolean) bridge.call(40012, null, Boolean.class)).booleanValue();
        }
        return false;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 60016) {
            View view = (View) valueSet.objectValue(8042, View.class);
            if (cv() == 5) {
                com.bytedance.msdk.api.p.dq.ox.d dVar = this.no;
                if (dVar instanceof com.bytedance.msdk.api.p.dq.ox.s) {
                    ((com.bytedance.msdk.api.p.dq.ox.s) dVar).dq(view, "渲染失败", MediationConstant.ErrorCode.ADN_AD_RENDER_FAIL);
                }
            } else {
                com.bytedance.msdk.api.p.dq.mn.ox oxVar = this.iw;
                if (oxVar instanceof mn) {
                    ((mn) oxVar).dq(view, "渲染失败", MediationConstant.ErrorCode.ADN_AD_RENDER_FAIL);
                }
            }
        } else if (i == 60017) {
            int intValue = valueSet.intValue(50014);
            int intValue2 = valueSet.intValue(50016);
            if (cv() == 5) {
                com.bytedance.msdk.api.p.dq.ox.d dVar2 = this.no;
                if (dVar2 instanceof com.bytedance.msdk.api.p.dq.ox.s) {
                    ((com.bytedance.msdk.api.p.dq.ox.s) dVar2).dq(intValue, intValue2);
                }
            } else {
                com.bytedance.msdk.api.p.dq.mn.ox oxVar2 = this.iw;
                if (oxVar2 instanceof mn) {
                    ((mn) oxVar2).dq(intValue, intValue2);
                }
            }
        } else if (i == 60009) {
            if (cv() == 5) {
                com.bytedance.msdk.api.p.dq.ox.d dVar3 = this.no;
                if (dVar3 != null) {
                    dVar3.dq();
                }
            } else {
                com.bytedance.msdk.api.p.dq.mn.ox oxVar3 = this.iw;
                if (oxVar3 != null) {
                    oxVar3.dq();
                }
            }
        } else if (i == 60004) {
            if (cv() == 5) {
                com.bytedance.msdk.api.p.dq.ox.d dVar4 = this.no;
                if (dVar4 != null) {
                    dVar4.dq(null);
                }
            } else {
                com.bytedance.msdk.api.p.dq.mn.ox oxVar4 = this.iw;
                if (oxVar4 != null) {
                    oxVar4.dq(null);
                }
            }
        } else if (i == 60005) {
            kk kkVar = this.mn;
            if (kkVar != null) {
                kkVar.v();
            }
        } else if (i == 60006) {
            com.bytedance.msdk.s.iw.dq(this, this.p, "gdt信息流模板dislike接口无关闭原因");
            com.bytedance.msdk.core.d.dq.dq(this.p.k());
            if (wn() != null) {
                wn().dq(-1, "gdt信息流模板dislike接口无关闭原因", false);
            }
        } else if (i == 60010) {
            com.bytedance.msdk.core.dq.dq.d.dq.iw.d dVar5 = new com.bytedance.msdk.core.dq.dq.d.dq.iw.d((Bridge) valueSet.objectValue(50006, Bridge.class));
            kk kkVar2 = this.mn;
            if (kkVar2 != null) {
                kkVar2.dq(new com.bytedance.msdk.api.dq(dVar5.dq(), dVar5.d()));
            }
        }
        return null;
    }

    @Override // com.bytedance.msdk.d.s
    public void d(Map<String, Object> map) {
        no noVar = this.f894d;
        if (noVar != null && noVar.op()) {
            final int dk = (int) dk();
            com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
            if (dqVar == null || !dqVar.ox()) {
                wp(dk);
            } else {
                iw.p(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.ox.ox.4
                    @Override // java.lang.Runnable
                    public void run() {
                        ox.this.wp(dk);
                    }
                });
            }
        }
    }

    @Override // com.bytedance.msdk.d.s
    public void dq(final Map<String, Object> map) {
        no noVar = this.f894d;
        if (noVar == null || !noVar.op() || map == null) {
            return;
        }
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        if (dqVar == null || !dqVar.ox()) {
            iw(map);
        } else {
            iw.p(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.ox.ox.5
                @Override // java.lang.Runnable
                public void run() {
                    ox.this.iw((Map<String, Object>) map);
                }
            });
        }
    }

    @Override // com.bytedance.msdk.d.s
    public boolean e() {
        return xq();
    }

    @Override // com.bytedance.msdk.d.s
    public View ig() {
        no noVar = this.f894d;
        if (noVar != null && noVar.n()) {
            e(uo());
        }
        return ml();
    }

    @Override // com.bytedance.msdk.d.s
    public String iw() {
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        return (dqVar == null || !dqVar.ox()) ? sp() : xn();
    }

    @Override // com.bytedance.msdk.d.s
    public void no() {
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        if (dqVar == null || !dqVar.ox()) {
            hz();
        } else {
            iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.ox.ox.7
                @Override // java.lang.Runnable
                public void run() {
                    ox.this.hz();
                }
            });
        }
    }

    @Override // com.bytedance.msdk.d.s
    public void p() {
        super.p();
        com.bytedance.msdk.core.dq.dq.d.dq dqVar = this.ox;
        if (dqVar == null || !dqVar.ox()) {
            vk();
        } else {
            iw.ox(new Runnable() { // from class: com.bytedance.msdk.core.dq.dq.d.dq.ox.ox.3
                @Override // java.lang.Runnable
                public void run() {
                    ox.this.vk();
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

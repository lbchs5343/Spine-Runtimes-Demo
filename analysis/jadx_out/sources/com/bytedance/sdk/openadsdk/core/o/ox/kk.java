package com.bytedance.sdk.openadsdk.core.o.ox;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.op;
import com.bytedance.sdk.openadsdk.core.le;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wn;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.downloadnew.core.ValueSetConstants;
import g.hat;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class kk extends ia {
    private final com.bytedance.sdk.openadsdk.core.h.dq.dq.d h;

    public kk(Context context, j jVar, String str, boolean z) {
        super(context, jVar, str, z);
        this.h = new com.bytedance.sdk.openadsdk.core.h.dq.dq.d() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.kk.1
            @Override // com.bytedance.sdk.openadsdk.core.h.dq.dq.d
            public void d(Bridge bridge) {
                ValueSet values;
                if (bridge == null || (values = bridge.values()) == null) {
                    return;
                }
                kk.this.mn.set(7);
                kk.this.ia.set(true);
                String stringValue = !TextUtils.isEmpty(values.stringValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_FILE_NAME)) ? values.stringValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_FILE_NAME) : "";
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    kk.this.dq("onInstalled", values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_TOTAL_BYTES), values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_CURRENT_BYTES), stringValue, kk.this.p.ox());
                    return;
                }
                kk kkVar = kk.this;
                com.bytedance.sdk.openadsdk.core.o.d.s sVar = kkVar.ig;
                if (sVar != null) {
                    sVar.dq(stringValue, kkVar.p.ox());
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.h.dq.dq.d
            public void d(Bridge bridge, int i) {
                ValueSet values;
                if (bridge == null || (values = bridge.values()) == null) {
                    return;
                }
                kk.this.mn.set(4);
                kk.this.ia.set(false);
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    kk.this.dq("onDownloadPaused", values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_TOTAL_BYTES), values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_CURRENT_BYTES), values.stringValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_FILE_NAME), kk.this.p.ox());
                    return;
                }
                com.bytedance.sdk.openadsdk.core.o.d.s sVar = kk.this.ig;
                if (sVar != null) {
                    sVar.d(values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_TOTAL_BYTES), values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_CURRENT_BYTES), values.stringValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_FILE_NAME), kk.this.p.ox());
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.h.dq.dq.d
            public void dq() {
                kk.this.mn.set(1);
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    kk.this.dq("onIdle", 0L, 0L, (String) null, (String) null);
                    return;
                }
                com.bytedance.sdk.openadsdk.core.o.d.s sVar = kk.this.ig;
                if (sVar != null) {
                    sVar.dq();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.h.dq.dq.d
            public void dq(Bridge bridge) {
                ValueSet values;
                if (bridge == null || (values = bridge.values()) == null) {
                    return;
                }
                kk.this.mn.set(5);
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    kk.this.dq("onDownloadFailed", values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_TOTAL_BYTES), values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_CURRENT_BYTES), values.stringValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_FILE_NAME), kk.this.p.ox());
                    return;
                }
                com.bytedance.sdk.openadsdk.core.o.d.s sVar = kk.this.ig;
                if (sVar != null) {
                    sVar.ox(values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_TOTAL_BYTES), values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_CURRENT_BYTES), values.stringValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_FILE_NAME), kk.this.p.ox());
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.h.dq.dq.d
            public void dq(Bridge bridge, int i) {
                ValueSet values;
                j jVar2;
                if (bridge == null || (values = bridge.values()) == null) {
                    return;
                }
                kk.this.mn.set(3);
                kk.this.ia.set(false);
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    kk.this.dq("onDownloadActive", values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_TOTAL_BYTES), values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_CURRENT_BYTES), values.stringValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_FILE_NAME), kk.this.p.ox());
                    return;
                }
                com.bytedance.sdk.openadsdk.core.o.d.s sVar = kk.this.ig;
                if (sVar != null) {
                    sVar.dq(values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_TOTAL_BYTES), values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_CURRENT_BYTES), values.stringValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_FILE_NAME), kk.this.p.ox());
                }
                com.bytedance.sdk.openadsdk.core.o.d.s sVar2 = kk.this.ig;
                if (sVar2 == null || sVar2.ox() || (jVar2 = kk.this.s) == null) {
                    return;
                }
                com.bytedance.sdk.openadsdk.core.i.dq.d(jVar2.ff());
            }

            @Override // com.bytedance.sdk.openadsdk.core.h.dq.dq.d
            public void dq(Bridge bridge, Bridge bridge2) {
                if (bridge == null || bridge.values() == null) {
                    return;
                }
                kk.this.mn.set(2);
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    kk.this.dq("onIdle", 0L, 0L, (String) null, (String) null);
                    return;
                }
                com.bytedance.sdk.openadsdk.core.o.d.s sVar = kk.this.ig;
                if (sVar != null) {
                    sVar.dq();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.h.dq.dq.d
            public void ox(Bridge bridge) {
                ValueSet values;
                kk.this.mn.set(6);
                if (bridge == null || (values = bridge.values()) == null) {
                    return;
                }
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    kk.this.dq("onDownloadFinished", values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_TOTAL_BYTES), values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_CURRENT_BYTES), values.stringValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_FILE_NAME), kk.this.p.ox());
                    return;
                }
                com.bytedance.sdk.openadsdk.core.o.d.s sVar = kk.this.ig;
                if (sVar != null) {
                    sVar.dq(values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_TOTAL_BYTES), values.stringValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_FILE_NAME), kk.this.p.ox());
                }
            }
        };
    }

    private void d(com.bytedance.sdk.openadsdk.core.h.dq.dq.dq dqVar, Map<String, Object> map) {
        if (this.wp == null) {
            return;
        }
        final op<String, Object> dq = new op().dq(TTDownloadField.TT_ITEM_CLICK_LISTENER, null).dq(TTDownloadField.TT_DOWNLOAD_BUTTON_CLICK_LISTENER, dqVar).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o())).dq(map);
        if (com.bytedance.sdk.openadsdk.core.op.f3334d < 4500) {
            Bridge bridge = this.wp;
            hat f2 = hat.f();
            f2.f19148c.put(0, dq);
            bridge.call(17, f2.k(), Void.class);
            return;
        }
        dq.put(TTDownloadField.TT_ITEM_CLICK_LISTENER, new com.bytedance.sdk.openadsdk.core.h.dq.dq.p() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.kk.4
            @Override // com.bytedance.sdk.openadsdk.core.h.dq.dq.p
            public void dq(Bridge bridge2, Bridge bridge3, Bridge bridge4) {
                if (!kk.this.fw && !kk.this.s.fn()) {
                    Context context = kk.this.getContext();
                    String ae = kk.this.s.ae();
                    kk kkVar = kk.this;
                    wn.dq(context, ae, kkVar.s, c.dq(kkVar.iw), kk.this.iw, (Map<String, Object>) null);
                    return;
                }
                com.bytedance.sdk.openadsdk.core.o.ox.d.d.d(1, kk.this.o());
                dq.remove(TTDownloadField.TT_ITEM_CLICK_LISTENER);
                Bridge bridge5 = kk.this.wp;
                hat f3 = hat.f();
                f3.f19148c.put(0, dq);
                bridge5.call(17, f3.k(), Void.class);
            }
        });
        Bridge bridge2 = this.wp;
        hat f3 = hat.f();
        f3.f19148c.put(0, dq);
        bridge2.call(17, f3.k(), Void.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(final Map<String, Object> map) {
        int i = this.k;
        if (i == 1) {
            return;
        }
        if (i == 2) {
            com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("tt_market_download_check") { // from class: com.bytedance.sdk.openadsdk.core.o.ox.kk.6
                @Override // java.lang.Runnable
                public void run() {
                    h<com.bytedance.sdk.openadsdk.core.ig.dq> dq = wp.dq();
                    kk kkVar = kk.this;
                    com.bytedance.sdk.openadsdk.core.r.ox dq2 = dq.dq(kkVar.s, kkVar.p.d());
                    if (dq2 == null || !dq2.s()) {
                        return;
                    }
                    le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.kk.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                            kk.this.dq((com.bytedance.sdk.openadsdk.core.h.dq.dq.dq) null, (Map<String, Object>) map);
                        }
                    });
                }
            });
        } else {
            dq((com.bytedance.sdk.openadsdk.core.h.dq.dq.dq) null, map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.openadsdk.core.h.dq.dq.dq dqVar, Map<String, Object> map) {
        try {
            if (dqVar == null) {
                dq(map);
                this.f3293e = false;
            } else {
                d(dqVar, map);
                this.f3293e = false;
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final com.bytedance.sdk.openadsdk.core.r.ox oxVar, final Map<String, Object> map, final boolean z) {
        dq(new com.bytedance.sdk.openadsdk.core.h.dq.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.kk.7
            @Override // com.bytedance.sdk.openadsdk.core.h.dq.dq.dq, com.ss.android.download.api.config.IDownloadButtonClickListener
            public void handleComplianceDialog(boolean z2) {
                if (z2 && kk.this.dq(oxVar, (com.bytedance.sdk.openadsdk.core.h.dq.dq.dq) null, (Map<String, Object>) map, z)) {
                    return;
                }
                kk.this.dq((com.bytedance.sdk.openadsdk.core.h.dq.dq.dq) null, (Map<String, Object>) map);
            }

            @Override // com.bytedance.sdk.openadsdk.core.h.dq.dq.dq, com.ss.android.download.api.config.IDownloadButtonClickListener
            public void handleMarketFailedComplianceDialog() {
            }
        }, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final Map<String, Object> map, final com.bytedance.sdk.openadsdk.core.h.dq.dq.dq dqVar) {
        com.bytedance.sdk.openadsdk.core.o.o.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.kk.3
            @Override // java.lang.Runnable
            public void run() {
                kk.this.dq(dqVar, (Map<String, Object>) map);
            }
        }, this.s);
        this.f3293e = false;
    }

    private void dq(final Map<String, Object> map, final boolean z) {
        int i = this.k;
        if (i == 1) {
            jy.dq(wp.getContext());
        } else if (i != 2) {
            dq((com.bytedance.sdk.openadsdk.core.r.ox) null, map, z);
        } else {
            com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("tt_download_check") { // from class: com.bytedance.sdk.openadsdk.core.o.ox.kk.5
                @Override // java.lang.Runnable
                public void run() {
                    h<com.bytedance.sdk.openadsdk.core.ig.dq> dq = wp.dq();
                    kk kkVar = kk.this;
                    com.bytedance.sdk.openadsdk.core.r.ox dq2 = dq.dq(kkVar.s, kkVar.p.d());
                    if (dq2 == null || !dq2.s()) {
                        jy.dq(wp.getContext());
                    } else {
                        kk.this.dq(dq2, (Map<String, Object>) map, z);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean dq(com.bytedance.sdk.openadsdk.core.r.ox oxVar, final com.bytedance.sdk.openadsdk.core.h.dq.dq.dq dqVar, final Map<String, Object> map, boolean z) {
        com.bytedance.sdk.openadsdk.core.o.ox.ox.ox no = no();
        if (!no.p(z)) {
            return false;
        }
        if (dq(getContext(), this.s, this.iw)) {
            return true;
        }
        no.dq(oxVar, this.iw, this.p.d(), new com.bytedance.sdk.openadsdk.core.o.ox.dq.d() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.kk.8
            @Override // com.bytedance.sdk.openadsdk.core.o.ox.dq.d
            public void dq() {
                if (!kk.this.dq()) {
                    kk.this.dq(dqVar, (Map<String, Object>) map);
                } else {
                    kk.this.d(true);
                    kk.this.dq((Map<String, Object>) map, dqVar);
                }
            }
        });
        return true;
    }

    private void fw() {
        if (com.bytedance.sdk.openadsdk.core.op.f3334d >= 5400 && dq() && !this.f3293e) {
            com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(false, (com.bytedance.sdk.openadsdk.core.h.dq.dq.ox) null, o());
        }
    }

    private void iw(JSONObject jSONObject, final boolean z) {
        fw();
        if (getContext() == null || this.p == null || !jy()) {
            return;
        }
        String str = this.iw;
        com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(str, str, jSONObject, o());
        final op<String, Object> dq = new op().dq(TTDownloadField.TT_DOWNLOAD_URL, this.p.d()).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o())).dq(TTDownloadField.TT_ACTION_TYPE_BUTTON, 2);
        j jVar = this.s;
        if (jVar != null && !TextUtils.isEmpty(jVar.fx())) {
            dq.dq(TTDownloadField.TT_ID, Long.valueOf(Double.valueOf(this.s.fx()).longValue()));
        }
        if (!dq()) {
            dq(dq, z);
            return;
        }
        com.bytedance.sdk.openadsdk.core.h.dq.dq.dq dqVar = new com.bytedance.sdk.openadsdk.core.h.dq.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.kk.2
            @Override // com.bytedance.sdk.openadsdk.core.h.dq.dq.dq, com.ss.android.download.api.config.IDownloadButtonClickListener
            public void handleComplianceDialog(boolean z2) {
            }

            @Override // com.bytedance.sdk.openadsdk.core.h.dq.dq.dq, com.ss.android.download.api.config.IDownloadButtonClickListener
            public void handleMarketFailedComplianceDialog() {
                if (dq == null) {
                    return;
                }
                com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(0, kk.this.o());
                kk.this.no().dq(kk.this.f());
                dq.remove(TTDownloadField.TT_DOWNLOAD_BUTTON_CLICK_LISTENER);
                if (kk.this.dq((com.bytedance.sdk.openadsdk.core.r.ox) null, (com.bytedance.sdk.openadsdk.core.h.dq.dq.dq) null, dq, z)) {
                    return;
                }
                kk.this.d(dq);
            }
        };
        com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(dq, dqVar);
        if (dq((com.bytedance.sdk.openadsdk.core.r.ox) null, dqVar, dq, z)) {
            return;
        }
        d(true);
        dq(dq, dqVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia
    public synchronized void d() {
        if (this.p == null) {
            return;
        }
        this.o.set(true);
        if (this.wp != null) {
            op<String, Object> dq = new op().dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o())).dq(TTDownloadField.TT_DOWNLOAD_STATUSCHANGE_LISTENER, this.h);
            Bridge bridge = this.wp;
            hat f2 = hat.f();
            f2.f19148c.put(0, dq);
            bridge.call(5, f2.k(), Void.class);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void d(JSONObject jSONObject, boolean z) {
        iw(jSONObject, z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void d(boolean z) {
        if (com.bytedance.sdk.openadsdk.core.op.f3334d >= 5400 && z) {
            this.f3293e = true;
            if (dq()) {
                try {
                    com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(true, com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(this.s, this.kx), o());
                } catch (Throwable th) {
                    com.bytedance.sdk.component.utils.ig.d("xgcdl", "throwable", th);
                }
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia
    public void dq(boolean z) {
        com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(this.iw, this.s, (JSONObject) null, o());
        com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(this.s, o(), z);
        com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(this.iw, o());
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia, com.bytedance.sdk.openadsdk.core.o.d.ox
    public boolean dq() {
        Bridge bridge = this.wp;
        return bridge != null && com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(bridge, o()) == 2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia
    public synchronized void iw() {
        try {
            if (this.p == null) {
                return;
            }
            AtomicBoolean atomicBoolean = this.o;
            if (atomicBoolean != null && atomicBoolean.get()) {
                this.o.set(false);
                if (this.wp != null) {
                    op<String, Object> dq = new op().dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o()));
                    Bridge bridge = this.wp;
                    hat g2 = hat.g(1);
                    g2.f19148c.put(0, dq);
                    bridge.call(4, g2.k(), Void.class);
                }
            }
            mp();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void mn() {
        if (this.p == null) {
            return;
        }
        this.o.set(false);
        if (this.wp != null) {
            hat f2 = hat.f();
            f2.f19148c.put(0, new op().dq(TTDownloadField.TT_FORCE, Boolean.TRUE).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o())));
            this.wp.call(8, f2.k(), Void.class);
        }
        d();
    }
}

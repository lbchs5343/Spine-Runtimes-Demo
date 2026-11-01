package com.bytedance.sdk.openadsdk.core.o.ox;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.core.e;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.le;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wn;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.ss.android.download.api.config.DownloadMarketInterceptor;
import com.ss.android.download.api.config.IDownloadButtonClickListener;
import com.ss.android.download.api.config.OnItemClickListener;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.download.DownloadStatusChangeListener;
import com.ss.android.download.api.model.DownloadShortInfo;
import com.ss.android.downloadad.api.download.AdDownloadController;
import g.hat;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class o extends ia {
    private DownloadModel bl;
    private AdDownloadController h;
    private DownloadEventConfig ji;
    private final DownloadStatusChangeListener n;

    public o(Context context, j jVar, String str, boolean z) {
        super(context, jVar, str, z);
        this.n = new DownloadStatusChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.o.1
            @Override // com.ss.android.download.api.download.DownloadStatusChangeListener
            public void onDownloadActive(DownloadShortInfo downloadShortInfo, int i) {
                j jVar2;
                o.this.mn.set(3);
                o.this.ia.set(false);
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    o oVar = o.this;
                    oVar.dq("onDownloadActive", downloadShortInfo.totalBytes, downloadShortInfo.currentBytes, downloadShortInfo.fileName, oVar.p.ox());
                    return;
                }
                o oVar2 = o.this;
                com.bytedance.sdk.openadsdk.core.o.d.s sVar = oVar2.ig;
                if (sVar != null) {
                    sVar.dq(downloadShortInfo.totalBytes, downloadShortInfo.currentBytes, downloadShortInfo.fileName, oVar2.p.ox());
                }
                com.bytedance.sdk.openadsdk.core.o.d.s sVar2 = o.this.ig;
                if (sVar2 == null || sVar2.ox() || (jVar2 = o.this.s) == null) {
                    return;
                }
                com.bytedance.sdk.openadsdk.core.i.dq.d(jVar2.ff());
            }

            @Override // com.ss.android.download.api.download.DownloadStatusChangeListener
            public void onDownloadFailed(DownloadShortInfo downloadShortInfo) {
                o.this.mn.set(5);
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    o oVar = o.this;
                    oVar.dq("onDownloadFailed", downloadShortInfo.totalBytes, downloadShortInfo.currentBytes, downloadShortInfo.fileName, oVar.p.ox());
                    return;
                }
                o oVar2 = o.this;
                com.bytedance.sdk.openadsdk.core.o.d.s sVar = oVar2.ig;
                if (sVar != null) {
                    sVar.ox(downloadShortInfo.totalBytes, downloadShortInfo.currentBytes, downloadShortInfo.fileName, oVar2.p.ox());
                }
            }

            @Override // com.ss.android.download.api.download.DownloadStatusChangeListener
            public void onDownloadFinished(DownloadShortInfo downloadShortInfo) {
                o.this.mn.set(6);
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    o oVar = o.this;
                    oVar.dq("onDownloadFinished", downloadShortInfo.totalBytes, downloadShortInfo.currentBytes, downloadShortInfo.fileName, oVar.p.ox());
                    return;
                }
                o oVar2 = o.this;
                com.bytedance.sdk.openadsdk.core.o.d.s sVar = oVar2.ig;
                if (sVar != null) {
                    sVar.dq(downloadShortInfo.totalBytes, downloadShortInfo.fileName, oVar2.p.ox());
                }
            }

            @Override // com.ss.android.download.api.download.DownloadStatusChangeListener
            public void onDownloadPaused(DownloadShortInfo downloadShortInfo, int i) {
                o.this.mn.set(4);
                o.this.ia.set(false);
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    o oVar = o.this;
                    oVar.dq("onDownloadPaused", downloadShortInfo.totalBytes, downloadShortInfo.currentBytes, downloadShortInfo.fileName, oVar.p.ox());
                    return;
                }
                o oVar2 = o.this;
                com.bytedance.sdk.openadsdk.core.o.d.s sVar = oVar2.ig;
                if (sVar != null) {
                    sVar.d(downloadShortInfo.totalBytes, downloadShortInfo.currentBytes, downloadShortInfo.fileName, oVar2.p.ox());
                }
            }

            @Override // com.ss.android.download.api.download.DownloadStatusChangeListener
            public void onDownloadStart(DownloadModel downloadModel, DownloadController downloadController) {
                o.this.mn.set(2);
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    o.this.dq("onIdle", 0L, 0L, (String) null, (String) null);
                    return;
                }
                com.bytedance.sdk.openadsdk.core.o.d.s sVar = o.this.ig;
                if (sVar != null) {
                    sVar.dq();
                }
            }

            @Override // com.ss.android.download.api.download.DownloadStatusChangeListener
            public void onIdle() {
                o.this.mn.set(1);
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    o.this.dq("onIdle", 0L, 0L, (String) null, (String) null);
                    return;
                }
                com.bytedance.sdk.openadsdk.core.o.d.s sVar = o.this.ig;
                if (sVar != null) {
                    sVar.dq();
                }
            }

            @Override // com.ss.android.download.api.download.DownloadStatusChangeListener
            public void onInstalled(DownloadShortInfo downloadShortInfo) {
                o.this.mn.set(7);
                o.this.ia.set(true);
                String str2 = !TextUtils.isEmpty(downloadShortInfo.fileName) ? downloadShortInfo.fileName : "";
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    o oVar = o.this;
                    oVar.dq("onInstalled", downloadShortInfo.totalBytes, downloadShortInfo.currentBytes, str2, oVar.p.ox());
                    return;
                }
                o oVar2 = o.this;
                com.bytedance.sdk.openadsdk.core.o.d.s sVar = oVar2.ig;
                if (sVar != null) {
                    sVar.dq(str2, oVar2.p.ox());
                }
            }
        };
    }

    private void cd() {
        AdDownloadController adDownloadController;
        if (op.f3334d < 5400 || !dq() || this.f3293e || this.bl == null || (adDownloadController = this.h) == null) {
            return;
        }
        try {
            if (op.f3334d >= 6400) {
                adDownloadController.setDownloadMarketInterceptor(null);
            }
            this.h.setEnableOppoAutoDownload(false);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ig.d("xgc_dof", "throwable", th);
        }
    }

    private void d(IDownloadButtonClickListener iDownloadButtonClickListener, final Map<String, Object> map) {
        if (this.wp == null) {
            return;
        }
        final com.bytedance.sdk.openadsdk.core.ir.op<String, Object> dq = new com.bytedance.sdk.openadsdk.core.ir.op().dq(TTDownloadField.TT_ITEM_CLICK_LISTENER, null).dq(TTDownloadField.TT_DOWNLOAD_BUTTON_CLICK_LISTENER, iDownloadButtonClickListener).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o())).dq(map);
        if (op.f3334d < 4500) {
            Bridge bridge = this.wp;
            hat f2 = hat.f();
            f2.f19148c.put(0, dq);
            bridge.call(17, f2.k(), Void.class);
            return;
        }
        dq.put(TTDownloadField.TT_ITEM_CLICK_LISTENER, new OnItemClickListener() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.o.4
            @Override // com.ss.android.download.api.config.OnItemClickListener
            public void onItemClick(DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController) {
                if (!o.this.fw && !o.this.s.fn()) {
                    Context context = o.this.getContext();
                    String ae = o.this.s.ae();
                    o oVar = o.this;
                    wn.dq(context, ae, oVar.s, c.dq(oVar.iw), o.this.iw, (Map<String, Object>) null);
                    return;
                }
                Object obj = map.get(TTDownloadField.TT_DOWNLOAD_EVENT_CONFIG);
                if (obj instanceof DownloadEventConfig) {
                    ((DownloadEventConfig) obj).setDownloadScene(1);
                    dq.remove(TTDownloadField.TT_ITEM_CLICK_LISTENER);
                    Bridge bridge2 = o.this.wp;
                    hat f3 = hat.f();
                    f3.f19148c.put(0, dq);
                    bridge2.call(17, f3.k(), Void.class);
                }
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
            com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("tt_market_download_check") { // from class: com.bytedance.sdk.openadsdk.core.o.ox.o.6
                @Override // java.lang.Runnable
                public void run() {
                    h<com.bytedance.sdk.openadsdk.core.ig.dq> dq = wp.dq();
                    o oVar = o.this;
                    com.bytedance.sdk.openadsdk.core.r.ox dq2 = dq.dq(oVar.s, oVar.p.d());
                    if (dq2 == null || !dq2.s()) {
                        return;
                    }
                    le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.o.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                            o.this.dq((IDownloadButtonClickListener) null, (Map<String, Object>) map);
                        }
                    });
                }
            });
        } else {
            dq((IDownloadButtonClickListener) null, map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final com.bytedance.sdk.openadsdk.core.r.ox oxVar, final Map<String, Object> map, final boolean z) {
        dq(new IDownloadButtonClickListener() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.o.7
            @Override // com.ss.android.download.api.config.IDownloadButtonClickListener
            public void handleComplianceDialog(boolean z2) {
                if (z2 && o.this.dq(oxVar, (IDownloadButtonClickListener) null, (Map<String, Object>) map, z)) {
                    return;
                }
                o.this.dq((IDownloadButtonClickListener) null, (Map<String, Object>) map);
            }

            @Override // com.ss.android.download.api.config.IDownloadButtonClickListener
            public void handleMarketFailedComplianceDialog() {
            }
        }, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(IDownloadButtonClickListener iDownloadButtonClickListener, Map<String, Object> map) {
        try {
            if (iDownloadButtonClickListener == null) {
                dq(map);
                this.f3293e = false;
            } else {
                d(iDownloadButtonClickListener, map);
                this.f3293e = false;
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final Map<String, Object> map, final IDownloadButtonClickListener iDownloadButtonClickListener) {
        com.bytedance.sdk.openadsdk.core.o.o.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.o.3
            @Override // java.lang.Runnable
            public void run() {
                o.this.dq(iDownloadButtonClickListener, (Map<String, Object>) map);
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
            com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("tt_download_check") { // from class: com.bytedance.sdk.openadsdk.core.o.ox.o.5
                @Override // java.lang.Runnable
                public void run() {
                    h<com.bytedance.sdk.openadsdk.core.ig.dq> dq = wp.dq();
                    o oVar = o.this;
                    com.bytedance.sdk.openadsdk.core.r.ox dq2 = dq.dq(oVar.s, oVar.p.d());
                    if (dq2 == null || !dq2.s()) {
                        jy.dq(wp.getContext());
                    } else {
                        o.this.dq(dq2, (Map<String, Object>) map, z);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean dq(com.bytedance.sdk.openadsdk.core.r.ox oxVar, final IDownloadButtonClickListener iDownloadButtonClickListener, final Map<String, Object> map, boolean z) {
        com.bytedance.sdk.openadsdk.core.o.ox.ox.ox no = no();
        if (!no.p(z)) {
            return false;
        }
        if (dq(getContext(), this.s, this.iw)) {
            return true;
        }
        no.dq(oxVar, this.iw, this.p.d(), new com.bytedance.sdk.openadsdk.core.o.ox.dq.d() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.o.8
            @Override // com.bytedance.sdk.openadsdk.core.o.ox.dq.d
            public void dq() {
                if (!o.this.dq()) {
                    o.this.dq(iDownloadButtonClickListener, (Map<String, Object>) map);
                } else {
                    o.this.d(true);
                    o.this.dq((Map<String, Object>) map, iDownloadButtonClickListener);
                }
            }
        });
        return true;
    }

    private void fw() {
        j jVar = this.s;
        if (jVar == null) {
            return;
        }
        String ff = jVar.ff();
        if (!TextUtils.isEmpty(ff) && op.f3334d >= 6400) {
            final String el = this.s.el();
            final String fa = this.s.fa();
            final com.bytedance.sdk.openadsdk.f.d.dq.dq dqVar = (com.bytedance.sdk.openadsdk.f.d.dq.dq) e.dq(ff, com.bytedance.sdk.openadsdk.f.d.dq.dq.class);
            StringBuilder sb = new StringBuilder("listener == null ");
            sb.append(dqVar == null);
            com.bytedance.sdk.component.utils.ig.dq("do", sb.toString());
            if (dqVar == null || TextUtils.isEmpty(this.s.gn()) || this.s.zi().p() != 1) {
                this.h.setDownloadMarketInterceptor(null);
            } else {
                this.h.setDownloadMarketInterceptor(new DownloadMarketInterceptor() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.o.9
                    @Override // com.ss.android.download.api.config.DownloadMarketInterceptor
                    public Map<String, Object> interceptObmMarket(Map<String, Object> map) {
                        if (map == null) {
                            com.bytedance.sdk.openadsdk.core.gh.ig dq = com.bytedance.sdk.openadsdk.core.gh.ig.dq();
                            Boolean bool = Boolean.FALSE;
                            dq.dq(bool, bool, "site param is null", el, fa);
                            return map;
                        }
                        if (!o.this.kx) {
                            map.put("is_button", Boolean.FALSE);
                        }
                        Object obj = map.get("is_button");
                        dqVar.dq(100, map);
                        com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(map, obj, el, fa);
                        return map;
                    }
                });
            }
        }
    }

    private void iw(JSONObject jSONObject, final boolean z) {
        cd();
        if (getContext() == null || this.p == null || !jy()) {
            return;
        }
        final com.bytedance.sdk.openadsdk.core.ir.op<String, Object> dq = new com.bytedance.sdk.openadsdk.core.ir.op().dq(TTDownloadField.TT_DOWNLOAD_URL, this.p.d()).dq(TTDownloadField.TT_ID, Long.valueOf(this.bl.getId())).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o())).dq(TTDownloadField.TT_ACTION_TYPE_BUTTON, 2).dq(TTDownloadField.TT_DOWNLOAD_EVENT_CONFIG, com.bytedance.sdk.openadsdk.core.o.ox.d.ox.dq(this.ji, jSONObject)).dq(TTDownloadField.TT_DOWNLOAD_CONTROLLER, this.h);
        if (!dq()) {
            dq(dq, z);
            return;
        }
        IDownloadButtonClickListener iDownloadButtonClickListener = new IDownloadButtonClickListener() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.o.2
            @Override // com.ss.android.download.api.config.IDownloadButtonClickListener
            public void handleComplianceDialog(boolean z2) {
            }

            @Override // com.ss.android.download.api.config.IDownloadButtonClickListener
            public void handleMarketFailedComplianceDialog() {
                if (dq == null || o.this.h == null) {
                    return;
                }
                o.this.h.setDownloadMode(0);
                o.this.no().dq(o.this.f());
                dq.remove(TTDownloadField.TT_DOWNLOAD_BUTTON_CLICK_LISTENER);
                if (o.this.dq((com.bytedance.sdk.openadsdk.core.r.ox) null, (IDownloadButtonClickListener) null, (Map<String, Object>) dq, z)) {
                    return;
                }
                o.this.d((Map<String, Object>) dq);
            }
        };
        com.bytedance.sdk.openadsdk.core.o.ox.d.ox.dq(dq, iDownloadButtonClickListener);
        if (dq((com.bytedance.sdk.openadsdk.core.r.ox) null, iDownloadButtonClickListener, dq, z)) {
            return;
        }
        d(true);
        dq(dq, iDownloadButtonClickListener);
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia
    public synchronized void d() {
        if (this.p == null) {
            return;
        }
        this.o.set(true);
        if (this.wp != null) {
            com.bytedance.sdk.openadsdk.core.ir.op<String, Object> dq = new com.bytedance.sdk.openadsdk.core.ir.op().dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o())).dq(TTDownloadField.TT_DOWNLOAD_STATUSCHANGE_LISTENER, this.n).dq(TTDownloadField.TT_DOWNLOAD_MODEL, this.bl);
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
        if (op.f3334d >= 5400 && z) {
            this.f3293e = z;
            if (dq() && this.h != null) {
                try {
                    fw();
                    this.h.setEnableOppoAutoDownload(true);
                } catch (Throwable th) {
                    com.bytedance.sdk.component.utils.ig.d("xgc1", "throwable", th);
                }
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia
    public void dq(boolean z) {
        this.bl = com.bytedance.sdk.openadsdk.core.o.ox.d.ox.dq(this.iw, this.s, null).build();
        this.h = com.bytedance.sdk.openadsdk.core.o.ox.d.ox.dq(this.s, z).build();
        this.ji = com.bytedance.sdk.openadsdk.core.o.ox.d.ox.dq(this.iw).build();
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia, com.bytedance.sdk.openadsdk.core.o.d.ox
    public boolean dq() {
        AdDownloadController adDownloadController = this.h;
        return adDownloadController != null && adDownloadController.getDownloadMode() == 2;
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
                    com.bytedance.sdk.openadsdk.core.ir.op<String, Object> dq = new com.bytedance.sdk.openadsdk.core.ir.op().dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o())).dq(TTDownloadField.TT_DOWNLOAD_URL, this.bl.getDownloadUrl());
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
            f2.f19148c.put(0, new com.bytedance.sdk.openadsdk.core.ir.op().dq(TTDownloadField.TT_DOWNLOAD_URL, this.bl.getDownloadUrl()).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o())).dq(TTDownloadField.TT_FORCE, Boolean.TRUE));
            this.wp.call(8, f2.k(), Void.class);
        }
        d();
    }
}

package com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.core.e;
import com.bytedance.sdk.openadsdk.core.gh.ig;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.ss.android.download.api.config.DownloadMarketInterceptor;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.downloadad.api.download.AdDownloadController;
import g.hat;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class mn extends dq {
    private DownloadModel no;
    private AdDownloadController o;

    public mn(j jVar, Context context, String str, com.bytedance.sdk.openadsdk.core.o.ox.ox.ox oxVar, String str2, AdDownloadController adDownloadController, DownloadModel downloadModel) {
        this.o = adDownloadController;
        this.no = downloadModel;
        this.dq = jVar;
        this.f2952d = context;
        this.ox = str;
        this.p = oxVar;
        this.s = str2;
    }

    private void d() {
        j jVar = this.dq;
        if (jVar == null) {
            return;
        }
        String ff = jVar.ff();
        if (TextUtils.isEmpty(ff) || op.f3334d < 6400) {
            return;
        }
        final String el = this.dq.el();
        final String fa = this.dq.fa();
        final com.bytedance.sdk.openadsdk.f.d.dq.dq dqVar = (com.bytedance.sdk.openadsdk.f.d.dq.dq) e.dq(ff, com.bytedance.sdk.openadsdk.f.d.dq.dq.class);
        if (dqVar == null || TextUtils.isEmpty(this.dq.gn()) || this.dq.zi().p() != 1) {
            this.o.setDownloadMarketInterceptor(null);
        } else {
            this.o.setDownloadMarketInterceptor(new DownloadMarketInterceptor() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.mn.2
                @Override // com.ss.android.download.api.config.DownloadMarketInterceptor
                public Map<String, Object> interceptObmMarket(Map<String, Object> map) {
                    if (map == null) {
                        ig dq = ig.dq();
                        Boolean bool = Boolean.FALSE;
                        dq.dq(bool, bool, "uchain param is null", el, fa);
                        return map;
                    }
                    if (!mn.this.iw) {
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

    @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq
    public void d(boolean z, int i) {
        if (this.o == null) {
            return;
        }
        try {
            d();
            this.o.setEnableOppoAutoDownload(z);
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq
    public com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.d dq(final Map<String, Object> map, final com.bytedance.sdk.openadsdk.core.ir.op<String, Object> opVar) {
        return new com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.d() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.mn.3
            @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.d, com.ss.android.download.api.config.OnItemClickListener
            public void onItemClick(DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController) {
                if (!mn.this.mn && !mn.this.dq.fn()) {
                    mn mnVar = mn.this;
                    j jVar = mnVar.dq;
                    Context context = mnVar.f2952d;
                    String str = mnVar.ox;
                    com.bytedance.sdk.openadsdk.core.ia.dq.dq.d.dq dqVar = new com.bytedance.sdk.openadsdk.core.ia.dq.dq.d.dq(jVar, context, str, c.dq(str));
                    dqVar.p(true);
                    dqVar.dq((Map<String, Object>) new HashMap());
                    return;
                }
                Object obj = map.get(TTDownloadField.TT_DOWNLOAD_EVENT_CONFIG);
                if (obj instanceof DownloadEventConfig) {
                    ((DownloadEventConfig) obj).setDownloadScene(1);
                    opVar.remove(TTDownloadField.TT_ITEM_CLICK_LISTENER);
                    Bridge bridge = mn.this.kk;
                    hat f2 = hat.f();
                    f2.f19148c.put(0, opVar);
                    bridge.call(17, f2.k(), Void.class);
                }
            }
        };
    }

    @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq
    public boolean dq() {
        if (this.o == null || this.no == null) {
            return false;
        }
        return super.dq();
    }

    @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq
    public boolean ox(int i) {
        AdDownloadController adDownloadController = this.o;
        return adDownloadController != null && adDownloadController.getDownloadMode() == 2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq
    public com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.dq p(final Map<String, Object> map) {
        final int ox = dq.ox(map);
        DownloadEventConfig dq = com.bytedance.sdk.openadsdk.core.o.ox.d.ox.dq(com.bytedance.sdk.openadsdk.core.o.ox.d.ox.dq(this.ox).build(), c.gh(this.dq));
        map.put(TTDownloadField.TT_ID, Long.valueOf(this.no.getId()));
        map.put(TTDownloadField.TT_ACTION_TYPE_BUTTON, 2);
        map.put(TTDownloadField.TT_DOWNLOAD_EVENT_CONFIG, dq);
        map.put(TTDownloadField.TT_DOWNLOAD_CONTROLLER, this.o);
        if (!ox(ox)) {
            dq(map, true);
            return null;
        }
        com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.dq dqVar = new com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.mn.1
            @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.dq, com.bytedance.sdk.openadsdk.core.h.dq.dq.dq, com.ss.android.download.api.config.IDownloadButtonClickListener
            public void handleComplianceDialog(boolean z) {
            }

            @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.dq, com.bytedance.sdk.openadsdk.core.h.dq.dq.dq, com.ss.android.download.api.config.IDownloadButtonClickListener
            public void handleMarketFailedComplianceDialog() {
                if (map == null || mn.this.o == null) {
                    return;
                }
                mn.this.o.setDownloadMode(0);
                mn mnVar = mn.this;
                mnVar.p.dq(mnVar.d(ox));
                map.remove(TTDownloadField.TT_DOWNLOAD_BUTTON_CLICK_LISTENER);
                if (mn.this.dq((com.bytedance.sdk.openadsdk.core.r.ox) null, (com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.dq) null, map)) {
                    return;
                }
                mn.this.dq(map, true);
            }
        };
        com.bytedance.sdk.openadsdk.core.o.ox.d.ox.dq(map, dqVar);
        return dqVar;
    }
}

package com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.op;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.hat;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class p extends dq {
    public p(j jVar, Context context, String str, com.bytedance.sdk.openadsdk.core.o.ox.ox.ox oxVar, String str2) {
        this.dq = jVar;
        this.f2952d = context;
        this.ox = str;
        this.p = oxVar;
        this.s = str2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq
    public void d(boolean z, int i) {
        com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(z, com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(this.dq, this.iw), i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq
    public com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.d dq(Map<String, Object> map, final op<String, Object> opVar) {
        final int ox = dq.ox(opVar);
        return new com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.d() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.p.2
            @Override // com.bytedance.sdk.openadsdk.core.h.dq.dq.p
            public void dq(Bridge bridge, Bridge bridge2, Bridge bridge3) {
                if (p.this.mn || p.this.dq.fn()) {
                    com.bytedance.sdk.openadsdk.core.o.ox.d.d.d(1, ox);
                    opVar.remove(TTDownloadField.TT_ITEM_CLICK_LISTENER);
                    Bridge bridge4 = p.this.kk;
                    hat f2 = hat.f();
                    f2.f19148c.put(0, opVar);
                    bridge4.call(17, f2.k(), Void.class);
                    return;
                }
                p pVar = p.this;
                j jVar = pVar.dq;
                Context context = pVar.f2952d;
                String str = pVar.ox;
                com.bytedance.sdk.openadsdk.core.ia.dq.dq.d.dq dqVar = new com.bytedance.sdk.openadsdk.core.ia.dq.dq.d.dq(jVar, context, str, c.dq(str));
                dqVar.p(true);
                dqVar.dq((Map<String, Object>) new HashMap());
            }
        };
    }

    @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq
    public boolean ox(int i) {
        Bridge bridge = this.kk;
        return bridge != null && com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(bridge, i) == 2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq
    public com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.dq p(final Map<String, Object> map) {
        final int ox = dq.ox(map);
        String str = this.ox;
        com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(str, str, c.gh(this.dq), ox);
        map.put(TTDownloadField.TT_ACTION_TYPE_BUTTON, 2);
        j jVar = this.dq;
        if (jVar != null && !TextUtils.isEmpty(jVar.fx())) {
            map.put(TTDownloadField.TT_ID, Long.valueOf(Double.valueOf(this.dq.fx()).longValue()));
        }
        if (!ox(ox)) {
            dq(map, true);
            return null;
        }
        com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.dq dqVar = new com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.p.1
            @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.dq, com.bytedance.sdk.openadsdk.core.h.dq.dq.dq, com.ss.android.download.api.config.IDownloadButtonClickListener
            public void handleComplianceDialog(boolean z) {
            }

            @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.dq, com.bytedance.sdk.openadsdk.core.h.dq.dq.dq, com.ss.android.download.api.config.IDownloadButtonClickListener
            public void handleMarketFailedComplianceDialog() {
                if (map == null) {
                    return;
                }
                com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(0, ox);
                p pVar = p.this;
                pVar.p.dq(pVar.d(ox));
                map.remove(TTDownloadField.TT_DOWNLOAD_BUTTON_CLICK_LISTENER);
                if (p.this.dq((com.bytedance.sdk.openadsdk.core.r.ox) null, (com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.dq) null, map)) {
                    return;
                }
                p.this.dq(map, true);
            }
        };
        com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(map, dqVar);
        return dqVar;
    }
}

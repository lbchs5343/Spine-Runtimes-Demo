package com.bytedance.sdk.openadsdk.core.ia.dq.d;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.component.utils.d;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.r.j;
import g.abn;
import java.util.HashMap;
import java.util.Map;

@com.bytedance.sdk.component.no.d.d(dq = "SINGLETON")
/* loaded from: classes3.dex */
public class kk implements com.bytedance.sdk.component.no.dq.dq.ox {

    /* renamed from: d, reason: collision with root package name */
    @com.bytedance.sdk.component.no.d.dq(dq = "context")
    private Context f2938d;

    @com.bytedance.sdk.component.no.d.dq(dq = "material_meta")
    private j dq;

    @com.bytedance.sdk.component.no.d.dq(dq = "is_open_web_page")
    private boolean iw;

    @com.bytedance.sdk.component.no.d.dq(dq = "pip_controller")
    private com.bytedance.sdk.openadsdk.core.video.d.d mn;

    @com.bytedance.sdk.component.no.d.dq(dq = abn.EXTRA_URL)
    private String ox;

    @com.bytedance.sdk.component.no.d.dq(dq = "interaction_type")
    private int p;

    @com.bytedance.sdk.component.no.d.dq(dq = "activity_type")
    private int s;

    private boolean dq() {
        if (!com.bytedance.sdk.component.utils.q.dq(this.ox)) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        try {
            intent.setData(Uri.parse(this.ox));
            if (!(this.f2938d instanceof Activity)) {
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
            }
            com.bytedance.sdk.component.utils.d.dq(this.f2938d, intent, null);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.bytedance.sdk.component.no.dq.dq.ox
    public boolean dq(Map<String, Object> map, final Map<String, Object> map2, final com.bytedance.sdk.component.no.dq.dq dqVar) {
        if (this.iw) {
            com.bytedance.sdk.component.utils.ig.p("UChain_LP", "mIsOpenWebPage = true");
            return true;
        }
        if (this.p == 2) {
            boolean dq = dq();
            if (dq) {
                dqVar.dq(map2);
                return dq;
            }
            dqVar.d(map2);
            return dq;
        }
        com.bytedance.sdk.openadsdk.core.video.d.d dVar = this.mn;
        if (dVar != null && new com.bytedance.sdk.openadsdk.core.ia.dq.dq.d.d(dVar).dq(new HashMap())) {
            dqVar.dq(map2);
            return true;
        }
        Intent intent = new Intent(this.f2938d, (Class<?>) c.iw(this.s));
        if (!(this.f2938d instanceof Activity)) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        }
        intent.putExtra("is_outer_click", true);
        if (map == null) {
            com.bytedance.sdk.component.utils.ig.p("UChain_LP", "param == null");
            dqVar.d(map2);
        }
        map.putAll(map2);
        map.remove("context");
        map.remove("activity_type");
        Object remove = map.remove(abn.EXTRA_SOURCE);
        c.dq(map, this.dq);
        int i = -1;
        if (remove != null && !TextUtils.isEmpty(remove.toString())) {
            try {
                i = Integer.parseInt(remove.toString());
            } catch (Exception unused) {
            }
        }
        intent.putExtra(abn.EXTRA_SOURCE, i);
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            Object value = entry.getValue();
            if (value != null) {
                intent.putExtra(entry.getKey(), value.toString());
            }
        }
        com.bytedance.sdk.component.utils.d.dq(this.f2938d, intent, new d.dq() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.d.kk.1
            @Override // com.bytedance.sdk.component.utils.d.dq
            public void dq() {
                dqVar.dq(map2);
                map2.put("is_open_web_page", Boolean.TRUE);
            }

            @Override // com.bytedance.sdk.component.utils.d.dq
            public void dq(Throwable th) {
                dqVar.d(map2);
            }
        });
        return true;
    }
}

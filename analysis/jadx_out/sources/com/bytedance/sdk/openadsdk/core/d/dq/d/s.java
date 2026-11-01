package com.bytedance.sdk.openadsdk.core.d.dq.d;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.d;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.k;
import com.bytedance.sdk.openadsdk.core.r.le;
import com.bytedance.sdk.openadsdk.core.wn;
import java.util.Map;

/* loaded from: classes3.dex */
public class s extends com.bytedance.sdk.openadsdk.core.d.dq.dq {
    private Map<String, Object> ia;
    private String iw;
    private com.bytedance.sdk.openadsdk.core.d.p kk;
    private int mn;
    private k s;

    public s() {
    }

    public s(j jVar, Context context, com.bytedance.sdk.openadsdk.core.d.p pVar) {
        this.kk = pVar;
        this.dq = jVar;
        this.f2787d = context;
    }

    private boolean d() {
        String ox = le.ox(this.dq, this.s.fw);
        if (TextUtils.isEmpty(ox)) {
            return false;
        }
        Uri parse = Uri.parse(com.bytedance.sdk.openadsdk.core.o.ox.dq(this.dq, ox));
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(parse);
        c.d(intent);
        if (c.iw(this.f2787d)) {
            if (!c.dq(this.f2787d, intent)) {
                return false;
            }
            com.bytedance.sdk.component.utils.d.dq(this.f2787d, intent, new d.dq() { // from class: com.bytedance.sdk.openadsdk.core.d.dq.d.s.1
                @Override // com.bytedance.sdk.component.utils.d.dq
                public void dq() {
                    com.bytedance.sdk.openadsdk.core.ig.ox.p(((com.bytedance.sdk.openadsdk.core.d.dq.dq) s.this).dq, s.this.iw, "deeplink_success_realtime");
                }

                @Override // com.bytedance.sdk.component.utils.d.dq
                public void dq(Throwable th) {
                    com.bytedance.sdk.openadsdk.core.ig.ox.p(((com.bytedance.sdk.openadsdk.core.d.dq.dq) s.this).dq, s.this.iw, "deeplink_fail_realtime");
                }
            }, TextUtils.equals("main", "internal"));
            com.bytedance.sdk.openadsdk.core.ig.ox.ia(this.dq, this.iw, "open_url_app", null);
            com.bytedance.sdk.openadsdk.core.ig.iw.dq().dq(this.dq, this.iw, false);
            return true;
        }
        try {
            com.bytedance.sdk.openadsdk.core.ig.ox.ia(this.dq, this.iw, "open_url_app", null);
            com.bytedance.sdk.component.utils.d.startActivity(this.f2787d, intent, TextUtils.equals("main", "internal"));
            com.bytedance.sdk.openadsdk.core.ig.ox.p(this.dq, this.iw, "deeplink_success_realtime");
            com.bytedance.sdk.openadsdk.core.ig.iw.dq().dq(this.dq, this.iw, false);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private Boolean dq() {
        k kVar = this.s;
        if (kVar == null || TextUtils.isEmpty(kVar.fw) || !le.dq(this.dq, this.s.fw)) {
            return null;
        }
        return Boolean.valueOf(le.d(this.dq, this.s.fw) != 1 ? d() : ox());
    }

    private boolean ox() {
        return wn.dq(this.f2787d, le.ox(this.dq, this.s.fw), this.dq, this.mn, this.iw, this.ia);
    }

    @Override // com.bytedance.sdk.openadsdk.core.d.dq.dq
    public int dq(Map<String, Object> map, com.bytedance.sdk.openadsdk.core.d.dq.ox oxVar) {
        Boolean dq = dq();
        if (dq == null) {
            return 0;
        }
        if (dq.booleanValue() && ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) this.kk.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(map, oxVar) == 0) {
            ((com.bytedance.sdk.openadsdk.core.d.dq.ox.ox) this.kk.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.ox.class)).dq(map, oxVar);
        }
        return dq.booleanValue() ? 1 : 0;
    }

    public void dq(int i) {
        this.mn = i;
    }

    public void dq(k kVar) {
        this.s = kVar;
    }

    public void dq(String str) {
        this.iw = str;
    }

    public void dq(Map<String, Object> map) {
        this.ia = map;
    }
}

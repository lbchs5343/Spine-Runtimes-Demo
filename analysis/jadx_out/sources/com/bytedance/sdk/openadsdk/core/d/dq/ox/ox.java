package com.bytedance.sdk.openadsdk.core.d.dq.ox;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class ox extends d {
    private Double ia;
    private String iw;
    private Map<String, Object> mn;
    dq s;

    public interface dq {
        boolean dq();
    }

    public ox() {
    }

    public ox(j jVar, Context context) {
        this.dq = jVar;
        this.f2787d = context;
        this.mn = new HashMap();
    }

    @Override // com.bytedance.sdk.openadsdk.core.d.dq.ox.d, com.bytedance.sdk.openadsdk.core.d.dq.dq
    public int dq(Map<String, Object> map, com.bytedance.sdk.openadsdk.core.d.dq.ox oxVar) {
        dq dqVar;
        j jVar = this.dq;
        if (jVar == null || jVar.qi() == 0 || (dqVar = this.s) == null || dqVar.dq()) {
            return 0;
        }
        this.mn.put("show_send_type", 1);
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.dq, this.iw, this.mn, this.ia);
        return 0;
    }

    public void dq(dq dqVar) {
        this.s = dqVar;
    }

    public void dq(Double d2) {
        this.ia = d2;
    }

    public void dq(String str) {
        this.iw = str;
    }

    public void dq(Map<String, Object> map) {
        Map<String, Object> map2 = this.mn;
        if (map2 == null) {
            this.mn = map;
        } else {
            map2.putAll(map);
        }
    }
}

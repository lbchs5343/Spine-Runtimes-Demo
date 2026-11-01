package com.bytedance.sdk.openadsdk.core.gh;

import android.content.Context;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.wp;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class mn implements com.bytedance.sdk.component.ia.dq.p {
    @Override // com.bytedance.sdk.component.ia.dq.p
    public String d() {
        return "csj_";
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public String d(String str) {
        return com.bytedance.sdk.component.utils.dq.d(str);
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public com.bytedance.sdk.component.ia.dq.d dq(JSONObject jSONObject) {
        try {
            jSONObject.put("is_new", true);
            jSONObject.put("sdk_session_id", d.dq);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        com.bytedance.sdk.component.ia.d.p.dq.dq dqVar = new com.bytedance.sdk.component.ia.d.p.dq.dq(UUID.randomUUID().toString(), com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("new_adlog_monitor").d(jSONObject.toString()).dq());
        dqVar.ox((byte) 0);
        dqVar.d((byte) 2);
        dqVar.dq((byte) 1);
        return dqVar;
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public String dq(String str) {
        return com.bytedance.sdk.component.utils.dq.ox(str);
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public void dq(JSONObject jSONObject, JSONObject jSONObject2) {
        boolean io = wp.d().io();
        if (jSONObject2 != null && jSONObject2.optInt("success") == 1 && io) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(jSONObject, jSONObject2);
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public boolean dq() {
        return false;
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public boolean dq(Context context) {
        return q.dq(context);
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public com.bytedance.sdk.component.ia.dq.ia ig() {
        return dq.dq;
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public boolean iw() {
        return true;
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    /* renamed from: jy, reason: merged with bridge method [inline-methods] */
    public ExecutorService ia() {
        return com.bytedance.sdk.component.o.mn.d();
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public Executor kk() {
        return com.bytedance.sdk.component.o.mn.dq();
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public com.bytedance.sdk.component.ia.dq.dq.d mn() {
        return new ia(com.bytedance.sdk.openadsdk.core.le.s.dq().d().ox());
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public boolean mp() {
        return false;
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public com.bytedance.sdk.component.ia.d.ox no() {
        return null;
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public int o() {
        return 0;
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public boolean ox() {
        return true;
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public boolean p() {
        return com.bytedance.sdk.openadsdk.core.bl.iw.dq();
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public boolean q() {
        return wp.d().fw();
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public String s() {
        return c.mn();
    }
}

package com.bytedance.msdk.s;

import android.content.Context;
import com.bytedance.msdk.ia.e;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class o implements com.bytedance.sdk.component.ia.dq.p {
    public static String ox(String str) {
        return com.bytedance.msdk.ia.dq.d(str, com.bytedance.msdk.ia.d.dq());
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public String d() {
        return "mediation_log";
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public String d(String str) {
        return com.bytedance.msdk.ia.dq.dq(str, com.bytedance.msdk.ia.d.dq());
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public com.bytedance.sdk.component.ia.dq.d dq(JSONObject jSONObject) {
        return null;
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public String dq(String str) {
        return ox(str);
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public void dq(JSONObject jSONObject, JSONObject jSONObject2) {
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public boolean dq() {
        return false;
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public boolean dq(Context context) {
        return e.dq(context);
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public Executor ia() {
        return com.bytedance.msdk.dq.s.iw.iw();
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public com.bytedance.sdk.component.ia.dq.ia ig() {
        return null;
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public boolean iw() {
        return false;
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public Executor kk() {
        return com.bytedance.msdk.dq.s.iw.iw();
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public com.bytedance.sdk.component.ia.dq.dq.d mn() {
        return null;
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
        return 2;
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public boolean ox() {
        return false;
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public boolean p() {
        return true;
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public boolean q() {
        return false;
    }

    @Override // com.bytedance.sdk.component.ia.dq.p
    public String s() {
        return "gromore-no-webview";
    }
}

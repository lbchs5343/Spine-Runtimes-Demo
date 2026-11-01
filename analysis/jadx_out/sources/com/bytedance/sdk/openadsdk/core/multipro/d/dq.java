package com.bytedance.sdk.openadsdk.core.multipro.d;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    public boolean f3196d;
    public boolean dq;
    public boolean ia;
    public long iw;
    public long mn;
    public boolean ox;
    public boolean p;
    public long s;

    /* renamed from: com.bytedance.sdk.openadsdk.core.multipro.d.dq$dq, reason: collision with other inner class name */
    public interface InterfaceC0174dq {
        boolean bl();

        dq op();
    }

    public static dq dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        dq dqVar = new dq();
        dqVar.ox(jSONObject.optBoolean("isCompleted"));
        dqVar.p(jSONObject.optBoolean("isFromVideoDetailPage"));
        dqVar.s(jSONObject.optBoolean("isFromDetailPage"));
        dqVar.dq(jSONObject.optLong(MediationConstant.EXTRA_DURATION));
        dqVar.d(jSONObject.optLong("totalPlayDuration"));
        dqVar.ox(jSONObject.optLong("currentPlayPosition"));
        dqVar.d(jSONObject.optBoolean("isAutoPlay"));
        dqVar.dq(jSONObject.optBoolean("isMute"));
        return dqVar;
    }

    public dq d(long j) {
        this.iw = j;
        return this;
    }

    public dq d(boolean z) {
        this.p = z;
        return this;
    }

    public dq dq(long j) {
        this.s = j;
        return this;
    }

    public JSONObject dq() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("isCompleted", this.dq);
            jSONObject.put("isFromVideoDetailPage", this.f3196d);
            jSONObject.put("isFromDetailPage", this.ox);
            jSONObject.put(MediationConstant.EXTRA_DURATION, this.s);
            jSONObject.put("totalPlayDuration", this.iw);
            jSONObject.put("currentPlayPosition", this.mn);
            jSONObject.put("isAutoPlay", this.p);
            jSONObject.put("isMute", this.ia);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public void dq(boolean z) {
        this.ia = z;
    }

    public dq ox(long j) {
        this.mn = j;
        return this;
    }

    public dq ox(boolean z) {
        this.dq = z;
        return this;
    }

    public dq p(boolean z) {
        this.f3196d = z;
        return this;
    }

    public dq s(boolean z) {
        this.ox = z;
        return this;
    }
}

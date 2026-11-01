package com.bytedance.embedapplog;

import org.json.JSONObject;

/* loaded from: classes.dex */
class gh extends r {

    /* renamed from: d, reason: collision with root package name */
    private long f717d;

    public gh(le leVar) {
        super(leVar);
    }

    @Override // com.bytedance.embedapplog.r
    public long[] d() {
        return k.ox;
    }

    @Override // com.bytedance.embedapplog.r
    public long dq() {
        long cd = this.dq.p().cd();
        if (cd < 600000) {
            cd = 600000;
        }
        return this.f717d + cd;
    }

    @Override // com.bytedance.embedapplog.r
    public boolean ox() {
        JSONObject dq = this.dq.s().dq();
        if (this.dq.s().no() == 0 || dq == null) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("header", this.dq.s().dq());
        jSONObject.put("magic_tag", "ss_app_log");
        jSONObject.put("_gen_time", currentTimeMillis);
        JSONObject ox = yy.ox(yy.dq(v.dq(this.dq.d(), this.dq.s().dq(), this.dq.ia().p(), true, dq.p()), yy.ox), jSONObject);
        if (ox == null) {
            return false;
        }
        dq.no().d(!yo.dq(dq.iw(), ox), ox);
        if (jo.f730d) {
            jo.dq("getAbConfig ".concat(String.valueOf(ox)), null);
        }
        this.dq.s().dq(ox);
        this.f717d = currentTimeMillis;
        return true;
    }

    @Override // com.bytedance.embedapplog.r
    public String p() {
        return "ab";
    }
}

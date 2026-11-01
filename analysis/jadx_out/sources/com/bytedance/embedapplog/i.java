package com.bytedance.embedapplog;

import org.json.JSONObject;

/* loaded from: classes.dex */
class i extends r {
    public i(le leVar) {
        super(leVar);
    }

    @Override // com.bytedance.embedapplog.r
    public long[] d() {
        return k.ox;
    }

    @Override // com.bytedance.embedapplog.r
    public long dq() {
        return this.dq.p().mn() + 21600000;
    }

    @Override // com.bytedance.embedapplog.r
    public boolean ox() {
        JSONObject dq = this.dq.s().dq();
        if (this.dq.s().no() == 0 || dq == null || this.dq.p().mn() + 21600000 > System.currentTimeMillis()) {
            return false;
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("magic_tag", "ss_app_log");
        jSONObject.put("header", dq);
        jSONObject.put("_gen_time", System.currentTimeMillis());
        JSONObject d2 = yy.d(yy.dq(v.dq(this.dq.d(), this.dq.s().dq(), this.dq.ia().ox(), true, dq.p()), yy.ox), jSONObject);
        dq.no().dq(!yo.dq(d2, this.dq.p().iw()), d2);
        if (d2 == null) {
            return false;
        }
        this.dq.p().dq(d2);
        return true;
    }

    @Override // com.bytedance.embedapplog.r
    public String p() {
        return "c";
    }
}

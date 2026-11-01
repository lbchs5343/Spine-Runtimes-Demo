package com.bytedance.embedapplog;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import org.json.JSONObject;

/* loaded from: classes.dex */
class k extends r {

    /* renamed from: d, reason: collision with root package name */
    static final long[] f732d = {920000};
    static final long[] ox = {920000};
    private static final long[] p = {ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT, ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT, 20000, 20000, 60000, 6000, 180000, 180000, 540000, 540000};
    private boolean s;

    public k(le leVar) {
        super(leVar);
        this.s = true;
    }

    @Override // com.bytedance.embedapplog.r
    public long[] d() {
        int no = this.dq.s().no();
        if (no == 0) {
            return p;
        }
        if (no == 1) {
            return ox;
        }
        if (no == 2) {
            return f732d;
        }
        jo.d((Throwable) null);
        return ox;
    }

    @Override // com.bytedance.embedapplog.r
    public long dq() {
        return this.dq.s().ig() + (this.dq.mn().ox() ? 21600000 : 43200000);
    }

    @Override // com.bytedance.embedapplog.r
    public boolean ox() {
        JSONObject jSONObject = new JSONObject();
        JSONObject dq = this.dq.s().dq();
        if (dq != null) {
            jSONObject.put("magic_tag", "ss_app_log");
            jSONObject.put("header", dq);
            jSONObject.put("_gen_time", System.currentTimeMillis());
            if (!TextUtils.isEmpty(dq.optString("device_id")) && yo.p() && this.s) {
                this.s = false;
                return false;
            }
            JSONObject dq2 = yy.dq(v.dq(this.dq.d(), this.dq.s().dq(), this.dq.ia().dq(), true, dq.p()), jSONObject);
            if (dq2 != null) {
                return this.dq.s().dq(dq2, dq2.optString("device_id", ""), dq2.optString("install_id", ""), dq2.optString("ssid", ""));
            }
        } else {
            jo.d((Throwable) null);
        }
        return false;
    }

    @Override // com.bytedance.embedapplog.r
    public String p() {
        return "r";
    }
}

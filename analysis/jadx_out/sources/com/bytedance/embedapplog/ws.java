package com.bytedance.embedapplog;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ws extends ds {
    long ig;
    public int jy = 0;
    long mp;
    String q;

    @Override // com.bytedance.embedapplog.ds
    public ds d(JSONObject jSONObject) {
        jo.d((Throwable) null);
        return this;
    }

    @Override // com.bytedance.embedapplog.ds
    public JSONObject d() {
        jw jwVar;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("local_time_ms", this.f713d);
        jSONObject.put("tea_event_index", this.ox);
        jSONObject.put("session_id", this.p);
        jSONObject.put("stop_timestamp", this.mp / 1000);
        jSONObject.put(MediationConstant.EXTRA_DURATION, this.ig / 1000);
        jSONObject.put("datetime", this.no);
        long j = this.s;
        if (j > 0) {
            jSONObject.put("user_id", j);
        }
        jSONObject.put("user_unique_id", TextUtils.isEmpty(this.iw) ? JSONObject.NULL : this.iw);
        if (!TextUtils.isEmpty(this.mn)) {
            jSONObject.put("ssid", this.mn);
        }
        if (!TextUtils.isEmpty(this.ia)) {
            jSONObject.put("ab_sdk_version", this.ia);
        }
        if (!TextUtils.isEmpty(this.q)) {
            jSONObject.put("uuid_changed", true);
            if (!TextUtils.equals(this.q, this.p)) {
                jSONObject.put("original_session_id", this.q);
            }
        }
        if (this.jy == 0 && (jwVar = (jw) vw.f749d.get("launch")) != null && !jwVar.r) {
            this.jy = 6;
        }
        jSONObject.put("launch_from", this.jy);
        return jSONObject;
    }

    @Override // com.bytedance.embedapplog.ds
    public int dq(Cursor cursor) {
        jo.d((Throwable) null);
        return 0;
    }

    @Override // com.bytedance.embedapplog.ds
    public List<String> dq() {
        return null;
    }

    @Override // com.bytedance.embedapplog.ds
    public void dq(ContentValues contentValues) {
        jo.d((Throwable) null);
    }

    @Override // com.bytedance.embedapplog.ds
    public void dq(JSONObject jSONObject) {
        jo.d((Throwable) null);
    }

    @Override // com.bytedance.embedapplog.ds
    public String ia() {
        return String.valueOf(this.ig);
    }

    @Override // com.bytedance.embedapplog.ds
    public String p() {
        return "terminate";
    }
}

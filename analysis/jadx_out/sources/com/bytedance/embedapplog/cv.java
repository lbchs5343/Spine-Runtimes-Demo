package com.bytedance.embedapplog;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class cv extends ds {
    private String ig;
    private String mp;

    public cv(String str, JSONObject jSONObject) {
        this.mp = str;
        this.ig = jSONObject.toString();
        this.o = 0;
    }

    @Override // com.bytedance.embedapplog.ds
    public ds d(JSONObject jSONObject) {
        super.d(jSONObject);
        this.ig = jSONObject.optString("params", null);
        this.mp = jSONObject.optString("log_type", null);
        return this;
    }

    @Override // com.bytedance.embedapplog.ds
    public JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("local_time_ms", this.f713d);
        jSONObject.put("tea_event_index", this.ox);
        jSONObject.put("session_id", this.p);
        long j = this.s;
        if (j > 0) {
            jSONObject.put("user_id", j);
        }
        jSONObject.put("user_unique_id", TextUtils.isEmpty(this.iw) ? JSONObject.NULL : this.iw);
        if (!TextUtils.isEmpty(this.mn)) {
            jSONObject.put("ssid", this.mn);
        }
        jSONObject.put("log_type", this.mp);
        try {
            JSONObject jSONObject2 = new JSONObject(this.ig);
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Object obj = jSONObject2.get(next);
                if (jSONObject.opt(next) != null) {
                    jo.d("misc事件存在重复的key", null);
                }
                jSONObject.put(next, obj);
            }
            return jSONObject;
        } catch (Exception e2) {
            jo.ox("解析 event misc 失败", e2);
            return jSONObject;
        }
    }

    @Override // com.bytedance.embedapplog.ds
    public int dq(Cursor cursor) {
        int dq = super.dq(cursor);
        int i = dq + 1;
        this.ig = cursor.getString(dq);
        int i2 = dq + 2;
        this.mp = cursor.getString(i);
        return i2;
    }

    @Override // com.bytedance.embedapplog.ds
    public List<String> dq() {
        List<String> dq = super.dq();
        ArrayList arrayList = new ArrayList(dq.size());
        arrayList.addAll(dq);
        arrayList.addAll(Arrays.asList("params", "varchar", "log_type", "varchar"));
        return arrayList;
    }

    @Override // com.bytedance.embedapplog.ds
    public void dq(ContentValues contentValues) {
        super.dq(contentValues);
        contentValues.put("params", this.ig);
        contentValues.put("log_type", this.mp);
    }

    @Override // com.bytedance.embedapplog.ds
    public void dq(JSONObject jSONObject) {
        super.dq(jSONObject);
        jSONObject.put("params", this.ig);
        jSONObject.put("log_type", this.mp);
    }

    @Override // com.bytedance.embedapplog.ds
    public String ia() {
        return "param:" + this.ig + " logType:" + this.mp;
    }

    @Override // com.bytedance.embedapplog.ds
    public String kk() {
        return this.ig;
    }

    @Override // com.bytedance.embedapplog.ds
    public String p() {
        return "event_misc";
    }
}

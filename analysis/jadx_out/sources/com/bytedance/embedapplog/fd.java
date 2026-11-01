package com.bytedance.embedapplog;

import android.content.ContentValues;
import android.database.Cursor;
import com.bytedance.embedapplog.vw;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.ada;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class fd extends ds {
    long cd;

    /* renamed from: f, reason: collision with root package name */
    long f715f;
    JSONArray fw;
    jw gh;
    long i;
    public byte[] ig;
    JSONArray jy;
    private ws k;
    private JSONArray le;
    int mp;
    public int q;
    JSONArray r;
    private JSONObject wp;

    @Override // com.bytedance.embedapplog.ds
    public ds d(JSONObject jSONObject) {
        jo.d((Throwable) null);
        return null;
    }

    @Override // com.bytedance.embedapplog.ds
    public JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("magic_tag", "ss_app_log");
        jSONObject.put("header", this.wp);
        jSONObject.put("time_sync", yy.dq);
        jSONObject.put("local_time", System.currentTimeMillis() / 1000);
        if (this.gh != null) {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(this.gh.iw());
            jSONObject.put("launch", jSONArray);
        }
        ws wsVar = this.k;
        int i = 0;
        if (wsVar != null) {
            JSONObject iw = wsVar.iw();
            JSONArray jSONArray2 = this.le;
            int length = jSONArray2 != null ? jSONArray2.length() : 0;
            JSONArray jSONArray3 = new JSONArray();
            int i2 = 0;
            long j = 0;
            while (i2 < length) {
                JSONArray jSONArray4 = new JSONArray();
                JSONObject jSONObject2 = new JSONObject(this.le.optString(i2));
                JSONObject jSONObject3 = new JSONObject(jSONObject2.optString("params"));
                jSONArray4.put(i, jSONObject3.optString("page_key", ""));
                jSONArray4.put(1, (jSONObject3.optInt(MediationConstant.EXTRA_DURATION, i) + 999) / 1000);
                jSONArray3.put(jSONArray4);
                int i3 = length;
                long optLong = jSONObject2.optLong("local_time_ms", 0L);
                if (optLong > j) {
                    iw.put("$page_title", jSONObject3.optString("page_title", ""));
                    iw.put("$page_key", jSONObject3.optString("page_key", ""));
                    j = optLong;
                }
                i2++;
                length = i3;
                i = 0;
            }
            if (length > 0) {
                iw.put("activites", jSONArray3);
            }
            JSONArray jSONArray5 = new JSONArray();
            jSONArray5.put(iw);
            jSONObject.put("terminate", jSONArray5);
        }
        JSONArray jSONArray6 = this.jy;
        int length2 = jSONArray6 != null ? jSONArray6.length() : 0;
        if (length2 > 0) {
            jSONObject.put("event", this.jy);
        }
        JSONArray jSONArray7 = this.le;
        int length3 = jSONArray7 != null ? jSONArray7.length() : 0;
        JSONArray jSONArray8 = this.fw;
        int length4 = jSONArray8 != null ? jSONArray8.length() : 0;
        if (length4 > 0) {
            jSONObject.put("event_v3", this.fw);
        }
        JSONArray jSONArray9 = this.r;
        int length5 = jSONArray9 != null ? jSONArray9.length() : 0;
        if (length5 > 0) {
            jSONObject.put("log_data", this.r);
        }
        StringBuilder sb = new StringBuilder("pack {ts:");
        sb.append(this.f713d);
        sb.append(", la:");
        Object obj = this.gh;
        if (obj == null) {
            obj = "0";
        }
        sb.append(obj);
        sb.append(", te:");
        ws wsVar2 = this.k;
        sb.append(wsVar2 != null ? wsVar2 : "0");
        sb.append(", p:");
        sb.append(length3);
        sb.append(", v1:");
        sb.append(length2);
        sb.append(", v3:");
        sb.append(length4);
        sb.append(", m:");
        sb.append(length5);
        jo.dq(sb.toString());
        return jSONObject;
    }

    @Override // com.bytedance.embedapplog.ds
    public int dq(Cursor cursor) {
        this.dq = cursor.getLong(0);
        this.f713d = cursor.getLong(1);
        this.ig = cursor.getBlob(2);
        this.mp = cursor.getInt(3);
        this.o = cursor.getInt(4);
        this.p = "";
        this.wp = null;
        this.gh = null;
        this.k = null;
        this.le = null;
        this.jy = null;
        this.fw = null;
        this.r = null;
        return 5;
    }

    @Override // com.bytedance.embedapplog.ds
    public List<String> dq() {
        return Arrays.asList(ada.COLUMN_ID, "integer primary key autoincrement", "local_time_ms", "integer", "_data", "blob", "_fail", "integer", "event_type", "integer");
    }

    @Override // com.bytedance.embedapplog.ds
    public void dq(ContentValues contentValues) {
        contentValues.put("local_time_ms", Long.valueOf(this.f713d));
        contentValues.put("_data", o());
        contentValues.put("event_type", Integer.valueOf(this.o));
    }

    @Override // com.bytedance.embedapplog.ds
    public void dq(JSONObject jSONObject) {
        jo.d((Throwable) null);
    }

    public void dq(JSONObject jSONObject, jw jwVar, ws wsVar, JSONArray jSONArray, JSONArray[] jSONArrayArr, long[] jArr, int i) {
        dq(0L);
        this.wp = jSONObject;
        this.gh = jwVar;
        this.k = wsVar;
        this.le = jSONArray;
        this.jy = jSONArrayArr[0];
        this.f715f = jArr[0];
        this.fw = jSONArrayArr[1];
        this.cd = jArr[1];
        this.r = jSONArrayArr[2];
        this.i = jArr[2];
        this.o = i;
    }

    @Override // com.bytedance.embedapplog.ds
    public String ia() {
        return String.valueOf(this.dq);
    }

    public byte[] o() {
        this.ig = null;
        try {
            byte[] dq = z.dq(iw().toString());
            this.ig = dq;
            return dq;
        } catch (OutOfMemoryError e2) {
            StringBuilder sb = new StringBuilder();
            int i = 0;
            while (true) {
                vw.d[] dVarArr = vw.ox;
                if (i >= dVarArr.length) {
                    throw new RuntimeException(sb.toString(), e2);
                }
                vw.d dVar = dVarArr[i];
                if (dVar != null) {
                    sb.append(dVar.toString());
                    sb.append(";");
                }
                i++;
            }
        }
    }

    @Override // com.bytedance.embedapplog.ds
    public String p() {
        return "pack";
    }
}

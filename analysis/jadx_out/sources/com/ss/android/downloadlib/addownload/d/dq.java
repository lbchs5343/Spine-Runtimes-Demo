package com.ss.android.downloadlib.addownload.d;

import com.ss.android.downloadlib.mn.mp;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    public long f9144d;
    public long dq;
    public volatile long ia;
    public String iw;
    public String mn;
    public long ox;
    public String p;
    public String s;

    public dq() {
    }

    public dq(long j, long j2, long j3, String str, String str2, String str3, String str4) {
        this.dq = j;
        this.f9144d = j2;
        this.ox = j3;
        this.p = str;
        this.s = str2;
        this.iw = str3;
        this.mn = str4;
    }

    public static dq dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        dq dqVar = new dq();
        try {
            dqVar.dq = mp.dq(jSONObject, "mDownloadId");
            dqVar.f9144d = mp.dq(jSONObject, "mAdId");
            dqVar.ox = mp.dq(jSONObject, "mExtValue");
            dqVar.p = jSONObject.optString("mPackageName");
            dqVar.s = jSONObject.optString("mAppName");
            dqVar.iw = jSONObject.optString("mLogExtra");
            dqVar.mn = jSONObject.optString("mFileName");
            dqVar.ia = mp.dq(jSONObject, "mTimeStamp");
            return dqVar;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public JSONObject dq() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("mDownloadId", this.dq);
            jSONObject.put("mAdId", this.f9144d);
            jSONObject.put("mExtValue", this.ox);
            jSONObject.put("mPackageName", this.p);
            jSONObject.put("mAppName", this.s);
            jSONObject.put("mLogExtra", this.iw);
            jSONObject.put("mFileName", this.mn);
            jSONObject.put("mTimeStamp", this.ia);
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return jSONObject;
        }
    }
}

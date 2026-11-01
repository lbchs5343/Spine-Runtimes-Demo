package com.ss.android.downloadlib.addownload.compliance;

import org.json.JSONObject;

/* loaded from: classes.dex */
class mn {
    public static void d(String str, long j) {
        dq(str, null, j);
    }

    public static void dq(int i, long j) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("error_code", Integer.valueOf(i));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        com.ss.android.downloadlib.p.dq.dq().d("lp_compliance_error", jSONObject, com.ss.android.downloadlib.addownload.d.iw.dq().s(j));
    }

    public static void dq(int i, com.ss.android.downloadlib.addownload.d.s sVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("error_code", Integer.valueOf(i));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        com.ss.android.downloadlib.p.dq.dq().d("lp_compliance_error", jSONObject, sVar);
    }

    public static void dq(String str, long j) {
        com.ss.android.downloadlib.addownload.d.s s = com.ss.android.downloadlib.addownload.d.iw.dq().s(j);
        if (s.wp()) {
            return;
        }
        s.ox.setRefer(str);
        com.ss.android.downloadlib.p.dq.dq().d("lp_app_dialog_click", s);
    }

    public static void dq(String str, com.ss.android.downloadlib.addownload.d.s sVar) {
        com.ss.android.downloadlib.p.dq.dq().d(str, sVar);
    }

    public static void dq(String str, JSONObject jSONObject, long j) {
        com.ss.android.downloadlib.p.dq.dq().d(str, jSONObject, com.ss.android.downloadlib.addownload.d.iw.dq().s(j));
    }
}

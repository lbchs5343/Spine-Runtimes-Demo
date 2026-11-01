package com.ss.android.downloadlib.s;

import android.text.TextUtils;
import android.util.Log;
import com.ss.android.downloadlib.addownload.no;
import com.ss.android.downloadlib.mn.mp;
import com.ss.android.socialbase.appdownloader.iw.iw;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ox implements com.ss.android.download.api.d.dq {

    public static class dq {
        private static ox dq = new ox();
    }

    private void d(Throwable th) {
        if (iw.d(no.getContext())) {
            throw new com.ss.android.downloadlib.s.dq(th);
        }
    }

    private boolean d() {
        return no.kk().optInt("enable_monitor", 1) != 1;
    }

    public static ox dq() {
        return dq.dq;
    }

    public static String dq(Throwable th) {
        try {
            return Log.getStackTraceString(th);
        } catch (Exception unused) {
            return null;
        }
    }

    public void d(String str) {
        d(true, str);
    }

    public void d(boolean z, String str) {
        if (d()) {
            return;
        }
        if (z) {
            d(new RuntimeException(str));
        }
        JSONObject jSONObject = new JSONObject();
        mp.dq(jSONObject, "msg", str);
        mp.dq(jSONObject, "stack", dq(new Throwable()));
        no.ia();
    }

    public void dq(String str) {
        dq(true, str);
    }

    @Override // com.ss.android.download.api.d.dq
    public void dq(Throwable th, String str) {
        dq(true, th, str);
    }

    public void dq(boolean z, String str) {
        if (d()) {
            return;
        }
        if (z) {
            d(new RuntimeException(str));
        }
        JSONObject jSONObject = new JSONObject();
        mp.dq(jSONObject, "msg", str);
        mp.dq(jSONObject, "stack", dq(new Throwable()));
        no.ia();
    }

    public void dq(boolean z, Throwable th, String str) {
        if (d()) {
            return;
        }
        if (th == null) {
            th = new Throwable();
        }
        if (z) {
            d(th);
        }
        JSONObject jSONObject = new JSONObject();
        if (TextUtils.isEmpty(str)) {
            str = th.getMessage();
        }
        mp.dq(jSONObject, "msg", str);
        mp.dq(jSONObject, "stack", Log.getStackTraceString(th));
        no.ia();
    }
}

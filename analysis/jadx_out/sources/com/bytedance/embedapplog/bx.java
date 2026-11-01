package com.bytedance.embedapplog;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.SystemClock;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class bx {
    private static io<sc> dq = new io<sc>() { // from class: com.bytedance.embedapplog.bx.1
        @Override // com.bytedance.embedapplog.io
        /* renamed from: ox, reason: merged with bridge method [inline-methods] */
        public sc dq(Object... objArr) {
            return new sc((Context) objArr[0]);
        }
    };

    public static String dq(SharedPreferences sharedPreferences) {
        SystemClock.elapsedRealtime();
        return xj.dq(sharedPreferences);
    }

    public static String dq(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optString(TTDownloadField.TT_ID, null);
        }
        return null;
    }

    public static Map<String, String> dq(Context context, SharedPreferences sharedPreferences) {
        SystemClock.elapsedRealtime();
        sc d2 = dq.d(context);
        return d2.dq(d2.dq() instanceof dk ? 200 : 100);
    }

    public static void dq(Context context) {
        dq.d(context).d();
    }

    public static void dq(s sVar) {
        sc.dq(sVar);
    }
}

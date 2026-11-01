package com.bytedance.embedapplog;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import org.json.JSONObject;

/* loaded from: classes.dex */
class bl extends ji {
    private final u iw;
    private final Context s;

    public bl(Context context, u uVar) {
        super(true, false);
        this.s = context;
        this.iw = uVar;
    }

    private static String dq(Context context) {
        String str = null;
        if (context == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 26 && context.getApplicationInfo().targetSdkVersion >= 26) {
            try {
                str = Build.getSerial();
            } catch (Throwable unused) {
            }
        }
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, MediationConfigUserInfoForSegment.GENDER_UNKNOWN)) {
            str = Build.SERIAL;
        }
        return (TextUtils.isEmpty(str) || TextUtils.equals(str, MediationConfigUserInfoForSegment.GENDER_UNKNOWN)) ? "" : str;
    }

    @Override // com.bytedance.embedapplog.ji
    @SuppressLint({"MissingPermission"})
    public boolean dq(JSONObject jSONObject) {
        jSONObject.put("os", "Android");
        jSONObject.put("os_version", Build.VERSION.RELEASE);
        jSONObject.put("os_api", Build.VERSION.SDK_INT);
        jSONObject.put("device_model", yo.ox());
        jSONObject.put("device_brand", Build.BRAND);
        jSONObject.put("device_manufacturer", Build.MANUFACTURER);
        jSONObject.put("cpu_abi", Build.CPU_ABI);
        jSONObject.put("build_serial", this.iw.vf() ? dq(this.s) : this.iw.nh());
        return true;
    }
}

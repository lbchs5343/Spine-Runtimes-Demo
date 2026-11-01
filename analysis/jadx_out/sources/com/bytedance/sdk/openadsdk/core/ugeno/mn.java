package com.bytedance.sdk.openadsdk.core.ugeno;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.ir.n;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class mn {
    private static volatile mn dq;

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.component.mn.dq f3602d = n.dq("ugeno_template_file");

    private mn() {
    }

    public static mn dq() {
        if (dq == null) {
            synchronized (mn.class) {
                try {
                    if (dq == null) {
                        dq = new mn();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public boolean d(String str, String str2) {
        return dq(str, str2) != null;
    }

    public JSONObject dq(String str, String str2) {
        String d2 = this.f3602d.d("ugeno_".concat(String.valueOf(str)), "");
        if (TextUtils.isEmpty(d2)) {
            return null;
        }
        String d3 = this.f3602d.d("ugeno__md5_".concat(String.valueOf(str)), "");
        if (!TextUtils.isEmpty(d3) && TextUtils.equals(d3, str2)) {
            try {
                return new JSONObject(d2);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public void dq(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str3)) {
            return;
        }
        this.f3602d.dq("ugeno_".concat(String.valueOf(str)), str3);
        this.f3602d.dq("ugeno__md5_".concat(String.valueOf(str)), str2);
    }
}

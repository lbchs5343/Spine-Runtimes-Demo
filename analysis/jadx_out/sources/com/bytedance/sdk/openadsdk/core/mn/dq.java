package com.bytedance.sdk.openadsdk.core.mn;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.bytedance.component.sdk.annotation.HungeonFlag;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.openadsdk.core.i;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.Locale;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private static volatile String f3169d;
    private static volatile String dq;
    private static String ox;

    public static String d() {
        return "1371";
    }

    public static String d(Context context) {
        if (f3169d != null) {
            return f3169d;
        }
        try {
            PackageManager packageManager = context.getApplicationContext().getPackageManager();
            f3169d = (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME));
        } catch (Exception unused) {
        }
        return f3169d;
    }

    public static String dq() {
        return "open_news";
    }

    public static String dq(Context context) {
        try {
        } catch (Throwable th) {
            ig.d("getApplicationName:", th);
        }
        if (dq != null) {
            return dq;
        }
        ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
        if (applicationInfo == null) {
            return "";
        }
        JSONObject jSONObject = new JSONObject();
        Bundle bundle = applicationInfo.metaData;
        if (bundle != null && bundle.keySet() != null) {
            for (String str : bundle.keySet()) {
                if (str != null && str.toLowerCase().contains("channel")) {
                    Object obj = bundle.get(str);
                    jSONObject.putOpt(str, obj != null ? obj.toString() : "");
                }
            }
        }
        dq = jSONObject.toString();
        return dq;
    }

    private static boolean dq(String str) {
        String[] split;
        if (!TextUtils.isEmpty(str) && (split = str.split(":")) != null && split.length >= 20) {
            for (String str2 : split) {
                if (!"00".equals(str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    @HungeonFlag
    public static String ia() {
        try {
            if (!TextUtils.isEmpty(ox)) {
                return ox;
            }
            String ox2 = com.bytedance.sdk.openadsdk.core.ox.p.dq().ox("app_sha1", 2592000000L);
            ox = ox2;
            if (!TextUtils.isEmpty(ox2)) {
                return ox;
            }
            String dq2 = com.bytedance.sdk.component.utils.ox.dq(wp.getContext());
            ox = dq2;
            if (!dq(dq2)) {
                return "";
            }
            ox = ox.toUpperCase(Locale.getDefault());
            com.bytedance.sdk.openadsdk.core.ox.p.dq().p("app_sha1", ox);
            return ox;
        } catch (Exception unused) {
            return "";
        }
    }

    public static String iw() {
        return q.mn(wp.getContext());
    }

    public static String mn() {
        return i.ox();
    }

    public static int ox(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.targetSdkVersion;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public static String ox() {
        return "6.6.0.7";
    }

    public static String p() {
        return c.no();
    }

    public static String s() {
        return no.ia().q();
    }
}

package com.bytedance.sdk.component.panglearmor.dq;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import android.text.TextUtils;
import com.bytedance.component.sdk.annotation.DungeonFlag;
import com.bytedance.sdk.component.panglearmor.SoftDecTool;
import com.bytedance.sdk.component.panglearmor.dq.d.iw;
import com.bytedance.sdk.openadsdk.api.plugin.d;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.awf;
import java.io.File;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {
    private static dq dq;

    /* renamed from: d, reason: collision with root package name */
    private long f2176d = 0;

    private String d(Context context) {
        if (context == null) {
            return null;
        }
        String packageCodePath = context.getPackageCodePath();
        if (TextUtils.isEmpty(packageCodePath)) {
            return null;
        }
        File file = new File(packageCodePath);
        if (file.exists() && file.canRead()) {
            return packageCodePath;
        }
        return null;
    }

    private boolean d() {
        return new SecureRandom().nextInt(10) == 1;
    }

    public static dq dq() {
        if (dq == null) {
            synchronized (dq.class) {
                try {
                    if (dq == null) {
                        dq dqVar = new dq();
                        dq = dqVar;
                        dqVar.f2176d = 0L;
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    private List<String> dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file = new File(str);
        if (!file.exists() || !file.isDirectory()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isFile() && file2.exists()) {
                    arrayList.add(file2.getName());
                }
            }
        }
        return arrayList;
    }

    private JSONObject dq(Context context) {
        if (context == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            String packageName = context.getPackageName();
            PackageManager packageManager = context.getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 4239);
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            if (applicationInfo != null) {
                jSONObject.put("application_name", applicationInfo.name);
                jSONObject.put(TTDownloadField.TT_LABEL, packageManager.getApplicationLabel(applicationInfo));
            }
            if (packageInfo != null) {
                ActivityInfo[] activityInfoArr = packageInfo.activities;
                String[] strArr = packageInfo.requestedPermissions;
                ActivityInfo[] activityInfoArr2 = packageInfo.receivers;
                ServiceInfo[] serviceInfoArr = packageInfo.services;
                ProviderInfo[] providerInfoArr = packageInfo.providers;
                if (activityInfoArr != null) {
                    JSONArray jSONArray = new JSONArray();
                    for (ActivityInfo activityInfo : activityInfoArr) {
                        jSONArray.put(activityInfo.name);
                    }
                    jSONObject.put("activities", jSONArray);
                }
                if (strArr != null) {
                    JSONArray jSONArray2 = new JSONArray();
                    for (String str : strArr) {
                        jSONArray2.put(str);
                    }
                    jSONObject.put("permissions", jSONArray2);
                }
                if (activityInfoArr2 != null) {
                    JSONArray jSONArray3 = new JSONArray();
                    for (ActivityInfo activityInfo2 : activityInfoArr2) {
                        jSONArray3.put(activityInfo2.name);
                    }
                    jSONObject.put("receivers", jSONArray3);
                }
                if (serviceInfoArr != null) {
                    JSONArray jSONArray4 = new JSONArray();
                    for (ServiceInfo serviceInfo : serviceInfoArr) {
                        jSONArray4.put(serviceInfo.name);
                    }
                    jSONObject.put("services", jSONArray4);
                }
                if (providerInfoArr != null) {
                    JSONArray jSONArray5 = new JSONArray();
                    for (ProviderInfo providerInfo : providerInfoArr) {
                        jSONArray5.put(providerInfo.name);
                    }
                    jSONObject.put("providers", jSONArray5);
                }
            }
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    @DungeonFlag
    private JSONObject dq(File file, Context context, String str) {
        JSONObject dq2 = iw.dq(file);
        File dq3 = d.dq(context);
        if (dq3 != null) {
            iw.dq(dq2, "files", dq(!TextUtils.isEmpty(str) ? d.dq(context).getParent() : d.dq(context).getPath()), false);
            File parentFile = dq3.getParentFile();
            if (parentFile != null) {
                List<String> dq4 = dq(awf.ad(new StringBuilder(), !TextUtils.isEmpty(str) ? parentFile.getParent() : parentFile.getPath(), "/shared_prefs"));
                List<String> dq5 = dq(awf.ad(new StringBuilder(), !TextUtils.isEmpty(str) ? parentFile.getParent() : parentFile.getPath(), "/databases"));
                iw.dq(dq2, "prefs", dq4, false);
                iw.dq(dq2, "databases", dq5, false);
            }
        }
        try {
            JSONObject dq6 = dq(context);
            if (dq6 != null && dq6.length() > 0) {
                dq2.put("manifest", dq6);
            }
            dq2.put("rt", this.f2176d);
            dq2.put("path", str);
        } catch (JSONException unused) {
        }
        return dq2;
    }

    @DungeonFlag
    private boolean ox() {
        SharedPreferences sharedPreferences = SoftDecTool.getSharedPreferences(SoftDecTool.SP_NAME);
        if (sharedPreferences == null) {
            return false;
        }
        this.f2176d = (System.currentTimeMillis() / 1000) - SoftDecTool.fr();
        int i = sharedPreferences.getInt("hit_times", 0);
        if (i < 2 && this.f2176d >= 172800) {
            sharedPreferences.edit().putInt("hit_times", 2).apply();
            return d();
        }
        if (i != 0 || this.f2176d < 21600) {
            return false;
        }
        sharedPreferences.edit().putInt("hit_times", 1).apply();
        return d();
    }

    public synchronized JSONObject dq(Context context, String str) {
        String d2;
        JSONObject jSONObject = new JSONObject();
        try {
            d2 = d(context);
        } catch (Throwable unused) {
        }
        if (!TextUtils.isEmpty(d2) && ox()) {
            File file = new File(d2);
            if (file.exists()) {
                jSONObject = dq(file, context, str);
            }
            return jSONObject;
        }
        return null;
    }
}

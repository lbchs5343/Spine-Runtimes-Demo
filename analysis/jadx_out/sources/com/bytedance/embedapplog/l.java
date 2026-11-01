package com.bytedance.embedapplog;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes.dex */
class l extends ji {
    private final u iw;
    private final Context s;

    public l(Context context, u uVar) {
        super(false, false);
        this.s = context;
        this.iw = uVar;
    }

    @Override // com.bytedance.embedapplog.ji
    public boolean dq(JSONObject jSONObject) {
        int i;
        ApplicationInfo applicationInfo;
        int i2;
        String packageName = this.s.getPackageName();
        PackageInfo packageInfo = null;
        if (TextUtils.isEmpty(this.iw.gx())) {
            jSONObject.put("package", packageName);
        } else {
            if (jo.f730d) {
                jo.dq("has zijie pkg", null);
            }
            jSONObject.put("package", this.iw.gx());
            jSONObject.put("real_package_name", packageName);
        }
        try {
            packageInfo = this.s.getPackageManager().getPackageInfo(packageName, 0);
        } catch (Throwable unused) {
        }
        if (packageInfo != null) {
            try {
                i = packageInfo.versionCode;
            } catch (Throwable th) {
                jo.d(th);
                return false;
            }
        } else {
            i = 0;
        }
        if (TextUtils.isEmpty(this.iw.ir())) {
            jSONObject.put("app_version", packageInfo != null ? packageInfo.versionName : "");
        } else {
            jSONObject.put("app_version", this.iw.ir());
        }
        if (TextUtils.isEmpty(this.iw.wn())) {
            jSONObject.put("app_version_minor", "");
        } else {
            jSONObject.put("app_version_minor", this.iw.wn());
        }
        if (this.iw.bl() != 0) {
            jSONObject.put("version_code", this.iw.bl());
        } else {
            jSONObject.put("version_code", i);
        }
        if (this.iw.n() != 0) {
            jSONObject.put("update_version_code", this.iw.n());
        } else {
            jSONObject.put("update_version_code", i);
        }
        if (this.iw.op() != 0) {
            jSONObject.put("manifest_version_code", this.iw.op());
        } else {
            jSONObject.put("manifest_version_code", i);
        }
        if (!TextUtils.isEmpty(this.iw.ji())) {
            jSONObject.put("app_name", this.iw.ji());
        }
        if (!TextUtils.isEmpty(this.iw.u())) {
            jSONObject.put("tweaked_channel", this.iw.u());
        }
        if (packageInfo == null || (applicationInfo = packageInfo.applicationInfo) == null || (i2 = applicationInfo.labelRes) <= 0) {
            return true;
        }
        jSONObject.put("display_name", this.s.getString(i2));
        return true;
    }
}

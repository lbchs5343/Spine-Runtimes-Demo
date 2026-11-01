package com.bytedance.pangle.dex;

import android.text.TextUtils;
import com.bytedance.pangle.i;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.util.f;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.awf;
import java.io.File;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    String f1342a;

    /* renamed from: b, reason: collision with root package name */
    public String f1343b;

    /* renamed from: c, reason: collision with root package name */
    JSONObject f1344c;

    /* renamed from: d, reason: collision with root package name */
    List<File> f1345d;

    /* renamed from: e, reason: collision with root package name */
    File f1346e;

    /* renamed from: f, reason: collision with root package name */
    public JSONObject f1347f;

    /* renamed from: g, reason: collision with root package name */
    String f1348g;

    private boolean c() {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        List<File> list = this.f1345d;
        boolean z = false;
        if (list == null || list.size() == 0 || (jSONObject = this.f1344c) == null || jSONObject.length() == 0) {
            StringBuilder sb = new StringBuilder("DexPluginConfig check md5 fail, packageName=");
            sb.append(this.f1343b);
            sb.append(" dexlist is ");
            sb.append(this.f1345d);
            sb.append(" dexlist size is ");
            List<File> list2 = this.f1345d;
            sb.append(list2 == null ? -1 : list2.size());
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, sb.toString());
            return false;
        }
        int size = this.f1345d.size();
        int length = this.f1344c.length();
        for (File file : this.f1345d) {
            String a2 = f.a(file);
            if (a2 != null) {
                a2 = a2.toLowerCase();
            }
            String name = file.getName();
            String optString = (TextUtils.isEmpty(name) || (jSONObject2 = this.f1344c) == null || !jSONObject2.has(name)) ? "" : this.f1344c.optString(name);
            if (TextUtils.equals(optString, a2)) {
                size--;
                length--;
            } else {
                StringBuilder sb2 = new StringBuilder("DexPluginConfig check md5 fail, packageName=");
                awf.y(sb2, this.f1343b, "downloadFileMd5=", a2, " configMd5=");
                sb2.append(optString);
                ZeusLogger.i(ZeusLogger.TAG_INSTALL, sb2.toString());
            }
        }
        if (size == 0 && length == 0) {
            z = true;
        }
        StringBuilder sb3 = new StringBuilder("DexPluginConfig check md5 ");
        sb3.append(z ? "success" : "fail");
        sb3.append(", packageName=");
        sb3.append(this.f1343b);
        sb3.append(" fileSize=");
        sb3.append(size);
        sb3.append(" configFileSize=");
        sb3.append(length);
        ZeusLogger.i(ZeusLogger.TAG_INSTALL, sb3.toString());
        return z;
    }

    public final boolean a() {
        JSONObject jSONObject;
        Map<String, JSONObject> map = i.a().f1470e;
        if (map != null && map.size() > 0 && (jSONObject = map.get(this.f1343b)) != null && jSONObject.has(TTDownloadField.TT_PACKAGE_NAME) && TextUtils.equals(jSONObject.optString(TTDownloadField.TT_PACKAGE_NAME), this.f1343b)) {
            ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPluginConfig check packageName success , packageName=" + this.f1343b);
            return c();
        }
        ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPluginConfig check packageName fail, packageName=" + this.f1343b + ", packageManager=" + map);
        return false;
    }

    public final int b() {
        if (TextUtils.isEmpty(this.f1342a)) {
            return -1;
        }
        String replace = this.f1342a.replace(".", "");
        if (TextUtils.isEmpty(replace)) {
            return -1;
        }
        try {
            return Integer.valueOf(replace).intValue();
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DexPluginConfig{mVersion='");
        sb.append(this.f1342a);
        sb.append("', mPackageName='");
        return awf.ad(sb, this.f1343b, "'}");
    }
}

package com.bytedance.sdk.openadsdk.core.ir;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import g.abn;
import g.awf;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class cd {

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        String f3033d;
        String dq;
        String ox;

        public dq(String str, String str2, String str3) {
            this.dq = str;
            this.f3033d = str2;
            this.ox = str3;
        }

        public boolean equals(Object obj) {
            String str;
            if (!(obj instanceof dq)) {
                return super.equals(obj);
            }
            dq dqVar = (dq) obj;
            String str2 = this.dq;
            return str2 != null && str2.equals(dqVar.dq) && (str = this.ox) != null && str.equals(dqVar.ox);
        }

        public String toString() {
            try {
                return "<" + this.dq + " name=\"" + this.f3033d + "\" path=\"" + this.ox + "\" />";
            } catch (Throwable unused) {
                return super.toString();
            }
        }
    }

    private static List<String> d() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("android.permission.INTERNET");
        arrayList.add("android.permission.ACCESS_NETWORK_STATE");
        arrayList.add("android.permission.ACCESS_WIFI_STATE");
        arrayList.add("android.permission.READ_PHONE_STATE");
        arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
        arrayList.add("android.permission.REQUEST_INSTALL_PACKAGES");
        arrayList.add("android.permission.ACCESS_COARSE_LOCATION");
        arrayList.add("android.permission.ACCESS_FINE_LOCATION");
        return arrayList;
    }

    private static String dq(Context context) {
        try {
            return com.bytedance.sdk.component.utils.fw.d(context);
        } catch (Throwable unused) {
            return MediationConfigUserInfoForSegment.GENDER_UNKNOWN;
        }
    }

    private static List<dq> dq(Context context, int i) {
        XmlResourceParser xmlResourceParser;
        try {
            ArrayList arrayList = new ArrayList();
            xmlResourceParser = context.getResources().getXml(i);
            try {
                for (int eventType = xmlResourceParser.getEventType(); eventType != 1; eventType = xmlResourceParser.next()) {
                    if (eventType == 2) {
                        String name = xmlResourceParser.getName();
                        int attributeCount = xmlResourceParser.getAttributeCount();
                        String str = null;
                        String str2 = null;
                        for (int i2 = 0; i2 < attributeCount; i2++) {
                            String attributeName = xmlResourceParser.getAttributeName(i2);
                            if (attributeName.equals(abn.EXTRA_UA_APP_NAME)) {
                                str = xmlResourceParser.getAttributeValue(i2);
                            } else if (attributeName.equals("path")) {
                                str2 = xmlResourceParser.getAttributeValue(i2);
                            }
                        }
                        if (!TextUtils.isEmpty(name) && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                            arrayList.add(new dq(name, str, str2));
                        }
                    }
                }
                xmlResourceParser.close();
                return arrayList;
            } catch (Throwable unused) {
                if (xmlResourceParser != null) {
                    xmlResourceParser.close();
                }
                return null;
            }
        } catch (Throwable unused2) {
            xmlResourceParser = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:116:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void dq() {
        int i;
        Context context = com.bytedance.sdk.openadsdk.core.wp.getContext();
        if (context == null || !com.bytedance.sdk.component.utils.ig.ox()) {
            return;
        }
        dq(context);
        String packageName = context.getPackageName();
        int i2 = context.getApplicationInfo().targetSdkVersion;
        PackageManager packageManager = context.getPackageManager();
        boolean z = false;
        boolean z2 = false;
        for (ProviderInfo providerInfo : packageManager.queryContentProviders(context.getApplicationInfo().processName, context.getApplicationInfo().uid, 131072)) {
            if ("com.bytedance.sdk.openadsdk.multipro.TTMultiProvider".equals(providerInfo.name)) {
                String c2 = awf.c(packageName, ".TTMultiProvider");
                if (TextUtils.isEmpty(c2) || !c2.equals(providerInfo.authority)) {
                    com.bytedance.sdk.component.utils.ig.p("TTAdSdk-InitChecker", "AndroidManifest.xml中TTMultiProvider配置异常：android:authorities，请参考接入文档");
                    com.bytedance.sdk.openadsdk.tools.d.ox(3, "0");
                } else {
                    com.bytedance.sdk.openadsdk.tools.d.ox(3, "1");
                }
                z = true;
            } else {
                if (providerInfo.authority.equals(packageName + ".TTFileProvider")) {
                    int i3 = Build.VERSION.SDK_INT;
                    if (i3 < 24 || i2 < 24) {
                        com.bytedance.sdk.component.utils.ig.dq("TTAdSdk-InitChecker", "TTFileProvider不需要适配：target=" + i2 + "&phone=" + i3 + ", require=24");
                        com.bytedance.sdk.openadsdk.tools.d.ox(3, "1");
                    } else {
                        if (providerInfo.exported) {
                            com.bytedance.sdk.component.utils.ig.p("TTAdSdk-InitChecker", "AndroidManifest.xml中TTFileProvider配置异常：android:exported，请参考接入文档");
                            com.bytedance.sdk.openadsdk.tools.d.ox(3, "0");
                        }
                        if (!providerInfo.grantUriPermissions) {
                            com.bytedance.sdk.component.utils.ig.p("TTAdSdk-InitChecker", "AndroidManifest.xml中TTFileProvider配置异常：android:grantUriPermissions，请参考接入文档");
                            com.bytedance.sdk.openadsdk.tools.d.ox(3, "0");
                        }
                        try {
                            List<dq> dq2 = dq(context, Integer.valueOf(String.valueOf(packageManager.getProviderInfo(new ComponentName(packageName, providerInfo.name), TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME).metaData.get("android.support.FILE_PROVIDER_PATHS"))).intValue());
                            if (dq2 == null || dq2.isEmpty()) {
                                com.bytedance.sdk.component.utils.ig.p("TTAdSdk-InitChecker", "AndroidManifest.xml中TTFileProvider中路径配置异常，请参考接入文档");
                                com.bytedance.sdk.openadsdk.tools.d.ox(3, "0");
                            } else {
                                List<dq> ox = ox();
                                List<dq> p = p();
                                for (dq dqVar : dq2) {
                                    if (dqVar != null) {
                                        ox.remove(dqVar);
                                        p.remove(dqVar);
                                    }
                                }
                                if (ox.isEmpty() && p.isEmpty()) {
                                    com.bytedance.sdk.openadsdk.tools.d.ox(3, "1");
                                } else {
                                    Iterator<dq> it = ox.iterator();
                                    while (it.hasNext()) {
                                        com.bytedance.sdk.component.utils.ig.p("TTAdSdk-InitChecker", "    TTFileProvider缺少必要路径：" + it.next().toString());
                                    }
                                    Iterator<dq> it2 = p.iterator();
                                    while (it2.hasNext()) {
                                        com.bytedance.sdk.component.utils.ig.p("TTAdSdk-InitChecker", "    TTFileProvider缺少可选路径：" + it2.next().toString());
                                    }
                                    com.bytedance.sdk.openadsdk.tools.d.ox(3, "0");
                                }
                            }
                        } catch (Throwable th) {
                            com.bytedance.sdk.component.utils.ig.d("TTAdSdk-InitChecker", "AndroidManifest.xml中TTFileProvider配置错误，请参考接入文档", th);
                            com.bytedance.sdk.openadsdk.tools.d.ox(3, "0");
                        }
                    }
                    z2 = true;
                }
            }
        }
        try {
            String[] strArr = packageManager.getPackageInfo(packageName, 4096).requestedPermissions;
            if (strArr == null || strArr.length <= 0) {
                com.bytedance.sdk.component.utils.ig.p("TTAdSdk-InitChecker", "AndroidManifest.xml中uses-permission配置丢失，请参考接入文档");
            } else {
                List<String> d2 = d();
                for (String str : strArr) {
                    if (str != null) {
                        d2.remove(str);
                    }
                }
                if (!d2.isEmpty()) {
                    Iterator<String> it3 = d2.iterator();
                    while (it3.hasNext()) {
                        com.bytedance.sdk.component.utils.ig.p("TTAdSdk-InitChecker", "    可能缺少权限：" + it3.next() + "，请参考接入文档");
                    }
                }
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.ig.d("TTAdSdk-InitChecker", "AndroidManifest.xml中uses-permission配置错误，请参考接入文档", th2);
        }
        try {
            i = Build.VERSION.SDK_INT;
        } catch (Throwable th3) {
            com.bytedance.sdk.component.utils.ig.d("TTAdSdk-InitChecker", "动态权限获取异常，请检查并详细阅读接入文档", th3);
        }
        if (i >= 23 && i2 >= 23) {
            boolean dq3 = com.bytedance.sdk.openadsdk.core.k.s.dq().dq(context, "android.permission.READ_PHONE_STATE");
            boolean dq4 = com.bytedance.sdk.openadsdk.core.k.s.dq().dq(context, "android.permission.ACCESS_COARSE_LOCATION");
            boolean dq5 = com.bytedance.sdk.openadsdk.core.k.s.dq().dq(context, "android.permission.ACCESS_FINE_LOCATION");
            boolean dq6 = com.bytedance.sdk.openadsdk.core.k.s.dq().dq(context, "android.permission.WRITE_EXTERNAL_STORAGE");
            if (!dq3) {
                com.bytedance.sdk.component.utils.ig.p("TTAdSdk-InitChecker", "动态权限没有获取，可能影响转化：android.permission.READ_PHONE_STATE");
            }
            if (!dq4) {
                com.bytedance.sdk.component.utils.ig.p("TTAdSdk-InitChecker", "动态权限没有获取，可能影响转化：android.permission.ACCESS_COARSE_LOCATION");
            }
            if (!dq5) {
                com.bytedance.sdk.component.utils.ig.p("TTAdSdk-InitChecker", "动态权限没有获取，可能影响转化：android.permission.ACCESS_FINE_LOCATION");
            }
            if (!dq6) {
                com.bytedance.sdk.component.utils.ig.p("TTAdSdk-InitChecker", "动态权限没有获取，可能影响转化：android.permission.WRITE_EXTERNAL_STORAGE");
            }
            if (!z) {
                com.bytedance.sdk.component.utils.ig.p("TTAdSdk-InitChecker", "××您没有配置TTMultiProvider，请参考接入文档，否则影响转化××");
            }
            if (z2) {
                com.bytedance.sdk.component.utils.ig.p("TTAdSdk-InitChecker", "××您没有配置TTFileProvider，请参考接入文档，否则影响转化××");
                return;
            }
            return;
        }
        com.bytedance.sdk.component.utils.ig.dq("TTAdSdk-InitChecker", "动态权限不需要适配：target=" + i2 + "&phone=" + i + ", require=23");
        if (!z) {
        }
        if (z2) {
        }
    }

    private static List<dq> ox() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new dq("external-path", "tt_external_download", "Download"));
        arrayList.add(new dq("external-files-path", "tt_external_files_download", "Download"));
        arrayList.add(new dq("files-path", "tt_internal_file_download", "Download"));
        arrayList.add(new dq("cache-path", "tt_internal_cache_download", "Download"));
        return arrayList;
    }

    private static List<dq> p() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new dq("external-path", "tt_external_root", "."));
        return arrayList;
    }
}

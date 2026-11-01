package com.ss.android.downloadlib.mn;

import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: com.ss.android.downloadlib.mn.dq$dq, reason: collision with other inner class name */
    public static class C0221dq implements InvocationHandler {
        private Object dq;

        private C0221dq(Object obj) {
            this.dq = obj;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            try {
                if ("startActivity".contains(method.getName())) {
                    dq.dq(objArr);
                }
            } catch (Throwable unused) {
            }
            return method.invoke(this.dq, objArr);
        }
    }

    public static String d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            ApplicationInfo applicationInfo = com.ss.android.downloadlib.addownload.no.getContext().getPackageManager().getApplicationInfo(str, 0);
            if (applicationInfo != null) {
                return applicationInfo.sourceDir;
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static int dq(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return 5;
        }
        return com.ss.android.dq.ox.dq(str, new File(str2));
    }

    public static String dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return com.ss.android.dq.ox.dq(new File(str));
    }

    public static void dq() {
        if (com.ss.android.downloadlib.addownload.no.kk().optInt("hook", 0) != 1) {
            return;
        }
        com.ss.android.downloadlib.s.dq().dq(new Runnable() { // from class: com.ss.android.downloadlib.mn.dq.1
            @Override // java.lang.Runnable
            public void run() {
                com.ss.android.socialbase.appdownloader.iw.s.ia();
                dq.ox();
            }
        }, ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT);
    }

    public static void dq(Object[] objArr) {
        if (com.ss.android.downloadlib.addownload.no.kk().optInt("hook", 0) == 1 && (objArr[1] instanceof String)) {
            Object obj = objArr[2];
            if (obj instanceof Intent) {
                Intent intent = (Intent) obj;
                if ("android.intent.action.VIEW".equals(intent.getAction()) && com.ss.android.socialbase.downloader.constants.s.dq.equals(intent.getType())) {
                    if (com.ss.android.socialbase.appdownloader.iw.s.p()) {
                        String optString = com.ss.android.downloadlib.addownload.no.kk().optString("hook_vivo_arg", "com.android.settings");
                        if ("null".equals(optString)) {
                            return;
                        }
                        objArr[1] = optString;
                        return;
                    }
                    if (!com.ss.android.socialbase.appdownloader.iw.s.s()) {
                        if (com.ss.android.socialbase.appdownloader.iw.s.dq()) {
                            String optString2 = com.ss.android.downloadlib.addownload.no.kk().optString("hook_huawei_arg1", "com.huawei.appmarket");
                            if (!"null".equals(optString2)) {
                                objArr[1] = optString2;
                            }
                            intent.putExtra("caller_package", com.ss.android.downloadlib.addownload.no.kk().optString("hook_huawei_arg2", "com.huawei.appmarket"));
                            return;
                        }
                        return;
                    }
                    String optString3 = com.ss.android.downloadlib.addownload.no.kk().optString("hook_kllk_arg1", "com." + com.ss.android.socialbase.downloader.constants.s.ox + ".market");
                    if (!"null".equals(optString3)) {
                        objArr[1] = optString3;
                    }
                    String optString4 = com.ss.android.downloadlib.addownload.no.kk().optString("hook_kllk_arg2", "com.android.browser");
                    String optString5 = com.ss.android.downloadlib.addownload.no.kk().optString("hook_kllk_arg3", "m.store." + com.ss.android.socialbase.downloader.constants.s.ox + "mobile.com");
                    intent.putExtra(com.ss.android.socialbase.downloader.constants.s.ox + "_extra_pkg_name", optString4);
                    intent.putExtra("refererHost", optString5);
                    if (com.ss.android.downloadlib.addownload.no.kk().optInt("hook_kllk_arg4", 0) == 1) {
                        Intent intent2 = new Intent();
                        intent2.putExtra(com.ss.android.socialbase.downloader.constants.s.ox + "_extra_pkg_name", optString4);
                        intent2.putExtra("refererHost", optString5);
                        intent.putExtra("android.intent.extra.INTENT", intent2);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ox() {
        try {
            Field declaredField = Build.VERSION.SDK_INT < 26 ? Class.forName("android.app.ActivityManagerNative").getDeclaredField("gDefault") : Class.forName("android.app.ActivityManager").getDeclaredField("IActivityManagerSingleton");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(null);
            Field declaredField2 = Class.forName("android.util.Singleton").getDeclaredField("mInstance");
            declaredField2.setAccessible(true);
            Object obj2 = declaredField2.get(obj);
            if (obj2 == null) {
                return;
            }
            declaredField2.set(obj, Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{Class.forName("android.app.IActivityManager")}, new C0221dq(obj2)));
        } catch (Throwable unused) {
        }
    }
}

package com.bytedance.sdk.openadsdk.api.plugin;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.pangle.GlobalParam;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.ZeusPluginDecodeCallback;
import com.bytedance.pangle.ZeusPluginInstallListener;
import com.bytedance.pangle.ZeusPluginStateListener;
import com.bytedance.pangle.download.PluginDownloadBean;
import com.bytedance.pangle.log.IZeusLogger;
import com.bytedance.pangle.log.IZeusReporter;
import com.bytedance.pangle.plugin.Plugin;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
import com.bytedance.sdk.openadsdk.TTPluginListener;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import dalvik.system.BaseDexClassLoader;
import g.cpq;
import g.hat;
import java.io.File;
import java.io.Serializable;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class mn {
    private static volatile TTPluginListener ig;
    private static volatile BaseDexClassLoader p;
    private final Context kk;
    private static final String dq = "next" + File.separator;

    /* renamed from: d, reason: collision with root package name */
    private static final HashMap<String, TTPluginListener> f2418d = new HashMap<>();
    private static final HashMap<String, Handler> ox = new HashMap<>();
    private static volatile mn s = null;
    private final CountDownLatch iw = new CountDownLatch(1);
    private volatile boolean mn = false;
    private volatile String ia = LiveConfigKey.NONE;
    private JSONObject o = new JSONObject();
    private EventListener no = null;

    public static final class d implements IZeusLogger {
        private d() {
        }

        @Override // com.bytedance.pangle.log.IZeusLogger
        public void e(String str, String str2, Throwable th) {
            com.bytedance.sdk.openadsdk.api.ox.ox(str, str2, th);
        }

        @Override // com.bytedance.pangle.log.IZeusLogger
        public void i(String str, String str2) {
            com.bytedance.sdk.openadsdk.api.ox.ox(str, str2);
        }

        @Override // com.bytedance.pangle.log.IZeusLogger
        public void v(String str, String str2) {
            com.bytedance.sdk.openadsdk.api.ox.dq(str, str2);
        }

        @Override // com.bytedance.pangle.log.IZeusLogger
        public void w(String str, String str2) {
            com.bytedance.sdk.openadsdk.api.ox.p(str, str2);
        }

        @Override // com.bytedance.pangle.log.IZeusLogger
        public void w(String str, String str2, Throwable th) {
            com.bytedance.sdk.openadsdk.api.ox.d(str, str2, th);
        }
    }

    public static final class dq extends PluginDownloadBean {
        public String dq = "";

        /* renamed from: d, reason: collision with root package name */
        public File f2421d = null;

        public dq() {
            this.mBackupUrlList = null;
        }
    }

    public static final class ox implements EventListener, Serializable {
        private void dq(dq dqVar) {
            try {
                if (TextUtils.isEmpty(dqVar.mPackageName) || !dqVar.mPackageName.equals("com.byted.pangle")) {
                    return;
                }
                mn.dq(TTAppContextHolder.getContext()).d();
            } catch (Exception unused) {
            }
        }

        @Override // com.bykv.vk.openvk.api.proto.EventListener
        public ValueSet onEvent(int i, Result result) {
            hat f2 = hat.f();
            if (i == 1) {
                p.dq("plugin_download", "plugin update start");
                ValueSet values = result.values();
                if (values == null) {
                    p.dq("plugin_download", "valueSet empty");
                    return null;
                }
                String stringValue = values.stringValue(3);
                int code = result.code();
                if (!result.isSuccess()) {
                    p.dq("plugin_download", "plugin update received failed");
                    com.bytedance.sdk.openadsdk.api.ox.p("TTPluginManager", "plugin update received failed");
                    mn.ox(stringValue, code);
                    return null;
                }
                dq p = mn.p(values.stringValue(2));
                if (p == null || TextUtils.isEmpty(p.mPackageName)) {
                    p.dq("plugin_download", "plugin update received with invalid config");
                    com.bytedance.sdk.openadsdk.api.ox.p("TTPluginManager", "plugin update received with invalid config");
                    return null;
                }
                p.dq("plugin_download", "plugin update received: " + p.mPackageName);
                com.bytedance.sdk.openadsdk.api.ox.p("TTPluginManager", "plugin update received: " + p.mPackageName);
                if (p.isRevert()) {
                    p.dq("plugin_download", "plugin revert " + p.mPackageName);
                    Zeus.unInstallPlugin(p.mPackageName);
                } else {
                    dq(p);
                    p.dq("plugin_download", "plugin install");
                    if (mn.d(p)) {
                        f2.i(4, true);
                    }
                }
            }
            return f2.k();
        }
    }

    private mn(Context context) {
        this.kk = context.getApplicationContext();
        try {
            GlobalParam.getInstance().closeHookHuaweiOnInit(true);
        } catch (Throwable th) {
            com.bytedance.sdk.openadsdk.api.ox.d("TTPluginManager", "Unexpected error for closeHookHuaweiOnInit.", th);
        }
        d(context.getApplicationContext());
    }

    private void d(Context context) {
        try {
            IZeusReporter iZeusReporter = new IZeusReporter() { // from class: com.bytedance.sdk.openadsdk.api.plugin.mn.1
                @Override // com.bytedance.pangle.log.IZeusReporter
                public void report(String str, JSONObject jSONObject) {
                    if ("load_finish".equals(str) && jSONObject != null && "com.byted.pangle".endsWith(jSONObject.optString("plugin_package_name"))) {
                        try {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put(MediationConstant.EXTRA_DURATION, jSONObject.opt(MediationConstant.EXTRA_DURATION));
                            jSONObject2.put("message", jSONObject.opt("message"));
                            mn.this.o.put("zeus", jSONObject2);
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    if (TTAdSdk.isInitSuccess()) {
                        s.dq(str, jSONObject);
                    } else {
                        s.d(str, jSONObject);
                    }
                }

                @Override // com.bytedance.pangle.log.IZeusReporter
                public void saveRecord(String str, String str2) {
                    p.dq(str, str2);
                }
            };
            GlobalParam globalParam = GlobalParam.getInstance();
            globalParam.setReporter(iZeusReporter);
            globalParam.setCheckPermission(false);
            globalParam.setDownloadDir(ox(context));
            globalParam.setLogger(new d());
            globalParam.setSignature("com.byted.pangle", "MIIDfTCCAmWgAwIBAgIEfRwYPjANBgkqhkiG9w0BAQsFADBvMQswCQYDVQQGEwJDTjEQMA4GA1UECBMHQmVpamluZzEQMA4GA1UEBxMHQmVpamluZzESMBAGA1UEChMJQnl0ZURhbmNlMQ8wDQYDVQQLEwZQYW5nbGUxFzAVBgNVBAMTDkNodWFuIFNoYW4gSmlhMB4XDTIxMTEwODA2MjQzOVoXDTQ2MTEwMjA2MjQzOVowbzELMAkGA1UEBhMCQ04xEDAOBgNVBAgTB0JlaWppbmcxEDAOBgNVBAcTB0JlaWppbmcxEjAQBgNVBAoTCUJ5dGVEYW5jZTEPMA0GA1UECxMGUGFuZ2xlMRcwFQYDVQQDEw5DaHVhbiBTaGFuIEppYTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAIBKeRL+4mfCn1SLYv6OemfwwItkjlLPyqOEugkV6lanFTcZgLwEl5LIkL0y28UncPtMX1Mii6DzCdJ/plw7S9+RT/hYDneu339IKWojaU2qai/5FokHlQ0MMnYl5yry00ghVPsl1u+03cQA2ZnjIMiFhrBJpQzHt7IYvq2aEEMBcY8uT7iFoBI848e1mL1joVS2z02C3NliP7ZNARkXH+rTQAlCJulT5IZk+V/PTaKqzgNrkhsKh0/tBmU7m8u79x/xpgGsE19H18AgS4P/9/MDCRe2Z35boZeccaUy2MXCwv3djzUcDk3rRzQPYzdpyyRnrFMuhiKesc5VHgUMs9kCAwEAAaMhMB8wHQYDVR0OBBYEFENENrNWGzc2WhxdvhoMDs57U70zMA0GCSqGSIb3DQEBCwUAA4IBAQAHqDCrmvyBBmIGXwuL1rwS/Qv9ZJIZykBIaNMm+H1IfitCl4yXd9N2n+PjE0UZtxZ21UZOt9wAr+RFiSl5YRXqpt7WLARTy4YW3RiQ+wiL7bshzeSYBoSiC427Bfeq0WjwY0/jHlr8uouppyJOz++6U9hrYX2EW/6UjH5XlWiKQJ6b2ZzPcP8Xpg/TJn4tWvXJP6jw9kRRP2GmMttY78leWQst2QEZILmWJubXRLPj9O+qx2uP9oGTD4sc1vb9hzkOHBIHzGaalqLFbbGaeFpLFHoGTsnOfPTwUVKDZYmxbkcmR1bp7eYOW+nSQNMLn0FjDewZl5l37Sa/gz0WVHon");
            globalParam.setSignature("com.byted.csj.ext", "MIIDezCCAmOgAwIBAgIENkE1KDANBgkqhkiG9w0BAQsFADBtMQswCQYDVQQGEwI4NjEQMA4GA1UECBMHYmVpamluZzEQMA4GA1UEBxMHYmVpamluZzESMBAGA1UEChMJYnl0ZWRhbmNlMRIwEAYDVQQLEwlieXRlZGFuY2UxEjAQBgNVBAMTCWJ5dGVkYW5jZTAgFw0yMjExMDIwODI3MzlaGA8yMDUwMDMyMDA4MjczOVowbTELMAkGA1UEBhMCODYxEDAOBgNVBAgTB2JlaWppbmcxEDAOBgNVBAcTB2JlaWppbmcxEjAQBgNVBAoTCWJ5dGVkYW5jZTESMBAGA1UECxMJYnl0ZWRhbmNlMRIwEAYDVQQDEwlieXRlZGFuY2UwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCc9Z2F3xxOMX1qTXMy2aPmS9OSkqrp8C8bHwS1hkNVR4umKREuqOn73INNo+R706jaCVnlPwxDwWjtX6H74DE4CveivyM9f2wNC3yIyDW+5j7lW/keTQcOlGLDEJQv4O/6FbB/jNU6epjyNaNIZhgZcvTpgaSixbdyHzRTFmvMh+WovdVK/J9LnHOQ+pmPZj7NB6MQRGMUrPEotLHQca3cmnLrnPAaZQaVoaFE9lOt9syyqEuf361SprNIGDtbkJuX3EqV/QOKWFwZX94IS7ZGSvfyCojcD4kaUSbaSoZC7zEuBb7l69g+ZMrJ/v6wkm01wxsNNssUwF7k6Sp0zubbAgMBAAGjITAfMB0GA1UdDgQWBBSxk+gVdDco1dP65hP67qoKNlMEYDANBgkqhkiG9w0BAQsFAAOCAQEAfosExl/AYEbS2xqHBTHa28cvnp/SElUQuzW6aWLqkfk9cxmFSI/euUV3/eB8RN+U2X47Y05u6+XUxTv0tSSEtyXNawm0qWH8jkR4gZY38YqBChKjhea668oT5X3Uocrw7SYXO/BfI8SKPa0uI/U8Cyl3uctbmmq/pPUkd3mKAy+HgyJoThD6K0oyiADlygngUMVTv6Uvid4qPj/bBnxI+LvVeX4l1dxGqWkiafQW9sz+RbFdge3X2XsSH4eo01BsCwOYEv1lHO2FrbAtFNpnIsSqrERdFaAJZ3tlJmg9bA03png8A2AajEjkhaOhduJB8zkSlvHNpoQMIAS9WtkG/w==");
            globalParam.setSignature("com.byted.live.lite", "MIIDSTCCAjGgAwIBAgIEaLy5tzANBgkqhkiG9w0BAQsFADBVMQswCQYDVQQGEwIxMTEMMAoGA1UECBMDMTExMQ4wDAYDVQQHEwUxMTExMTEMMAoGA1UEChMDMTExMQwwCgYDVQQLEwMxMTExDDAKBgNVBAMTAzExMTAeFw0yMDEyMDMxMjQyMTJaFw00NTExMjcxMjQyMTJaMFUxCzAJBgNVBAYTAjExMQwwCgYDVQQIEwMxMTExDjAMBgNVBAcTBTExMTExMQwwCgYDVQQKEwMxMTExDDAKBgNVBAsTAzExMTEMMAoGA1UEAxMDMTExMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA45E52YdkJm4gPCXZq7KDoM1h6pgSswllC/CwDOmh8pDGvX4ROaYP1vr2biRlXMHg7G0iXpxWVdlTtx+4QFd3dC+cGJQk0f6apGo2n2RpMA0zIsSf0VO1a3GjWLei5INo+4RDdciqJ4jfsoqBIjZETRkky+UU4eO/oyrAwOu4KdMln3Bg3u7eHWU4kMFrXxrRruT3Q/9gzlO90yQa0CZPWVDrk6cGJtJwJGhWm+62S3U8D26HE++eGP7ve83QBDGtKqx7HpCAFWUiYBgXGq12H0amQDkKcPcr/EFCaBlombSgkN0t6zBX80m+wcUPC75IBTmMV/DT2dXcgjZ2I1JSCQIDAQABoyEwHzAdBgNVHQ4EFgQUPDyIeKI0KhZFPHyn36gMMIYrpukwDQYJKoZIhvcNAQELBQADggEBAHkl0DoCRwn+XKsDJE+wGMpBBqUDzL6DSOnJx4SNqb7YZZU0ThcDK7jY4If3QRkvMio6ODrVZc2U/m/Tc3VeMk5h2W2UZRUWHNH3k9Xe0720uL20ZeH2Y6IG4L5HG8kIbTbFtX3gJpPG/xAcez+CzyCFLWQAZt1N+csG0syWkXJ0Nryq8VrgSCyCXD1KzFxrOe+65wtu50Vi68Vlbk7BZe/G8Qm0RhKmxq5BPMBJ4uY3be+03Ba5qC//o1XQHOEAjrJKXcN5wqHdFZTkmuxVyIPogZOzx4JlNl0zOrYGDJxp7aZfKF9FkXQyF7x0Ns3mZEtjx/+flXRzAAU9MDhPr/0=");
            Zeus.registerPluginStateListener(new ZeusPluginStateListener() { // from class: com.bytedance.sdk.openadsdk.api.plugin.mn.2
                @Override // com.bytedance.pangle.ZeusPluginStateListener
                public void onPluginStateChange(String str, int i, Object... objArr) {
                    com.bytedance.sdk.openadsdk.api.ox.d("TTPluginManager", str + " state changed, " + i);
                    if (i != 9 || TextUtils.equals(str, "com.byted.pangle")) {
                        return;
                    }
                    mn.this.ox(str);
                }
            });
            Zeus.setDecodeCallback(new ZeusPluginDecodeCallback() { // from class: com.bytedance.sdk.openadsdk.api.plugin.mn.3
                @Override // com.bytedance.pangle.ZeusPluginDecodeCallback
                public String decode(String str) {
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        String optString = jSONObject.optString("cypher");
                        String optString2 = jSONObject.optString("message");
                        if (!TextUtils.equals(optString, "3") || TextUtils.isEmpty(optString2)) {
                            return null;
                        }
                        return com.bytedance.sdk.openadsdk.api.plugin.d.dq.dq(optString2);
                    } catch (Throwable th) {
                        com.bytedance.sdk.openadsdk.api.ox.d("TTPluginManager", "dex plugin decode throw error ".concat(String.valueOf(th)));
                        return null;
                    }
                }
            });
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("isDexPlugin", 1);
                jSONObject.put("apiVersionCode", 1000);
                jSONObject.put(TTDownloadField.TT_PACKAGE_NAME, TTAdSdk.PLUGIN_ADAPTER_PACKAGE_NAME);
                jSONObject.put("hostPackageName", "com.byted.pangle");
                jSONObject.put("minPluginVersion", 1000);
                jSONObject.put("maxPluginVersion", 999999999);
                jSONObject.put("internalPath", "");
                jSONObject.put("internalVersionCode", -1);
                jSONObject.put("appKey", "");
                jSONObject.put("appSecretKey", "");
                Zeus.addPackageDexManager(TTAdSdk.PLUGIN_ADAPTER_PACKAGE_NAME, jSONObject);
            } catch (Throwable th) {
                com.bytedance.sdk.openadsdk.api.ox.d("TTPluginManager", "init dex plugin config throw error " + th);
            }
            globalParam.closeBgDex2oat(true);
            Zeus.init((Application) context, true);
            Zeus.registerPluginInstallListener(new ZeusPluginInstallListener() { // from class: com.bytedance.sdk.openadsdk.api.plugin.mn.4
                @Override // com.bytedance.pangle.ZeusPluginInstallListener
                public void onPluginInstall(String str, int i, String str2) {
                    if (i == 7) {
                        mn.this.d(str, i);
                        return;
                    }
                    if (i == 6) {
                        mn.this.d(str, i);
                        if (mn.this.no == null || !"com.byted.pangle".equals(str)) {
                            com.bytedance.sdk.openadsdk.api.ox.d("TTPluginManager", "no main pl");
                            return;
                        }
                        EventListener eventListener = mn.this.no;
                        cpq f2 = cpq.f();
                        f2.f13287e = true;
                        eventListener.onEvent(0, f2.h());
                    }
                }
            });
            this.mn = true;
        } catch (Throwable th2) {
            com.bytedance.sdk.openadsdk.api.ox.d("TTPluginManager", "Unexpected error for init zeus.", th2);
            this.ia = th2.getMessage();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Plugin plugin) {
        if (plugin == null) {
            com.bytedance.sdk.openadsdk.api.ox.p("TTPluginManager", "plugin is null.");
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("action", 0);
        bundle.putString("plugin_pkg_name", plugin.mPkgName);
        bundle.putString(PluginConstants.KEY_PLUGIN_VERSION, dq(plugin.getVersion()));
        TTAdManager adManager = TTAdSdk.getAdManager();
        if (adManager != null) {
            adManager.getExtra(Bundle.class, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str, int i) {
        if ("com.byted.pangle".equals(str) && i == 6) {
            com.bytedance.sdk.openadsdk.api.ox.p("TTPluginManager", "notify to end wait");
            this.iw.countDown();
        }
        dq(i == 6, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean d(dq dqVar) {
        File file;
        if (dqVar == null || (file = dqVar.f2421d) == null) {
            com.bytedance.sdk.openadsdk.api.ox.p("TTPluginManager", "plugin config is null");
            return false;
        }
        boolean syncInstallPlugin = Zeus.syncInstallPlugin(dqVar.mPackageName, file.getAbsolutePath());
        dq(syncInstallPlugin, dqVar.mPackageName);
        return syncInstallPlugin;
    }

    private static dq dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        dq dqVar = new dq();
        dqVar.mPackageName = jSONObject.optString("package_name");
        dqVar.mVersionCode = jSONObject.optInt("version_code");
        dqVar.mUrl = jSONObject.optString("download_url");
        dqVar.mMd5 = jSONObject.optString(TTDownloadField.TT_MD5);
        dqVar.mApiVersionMin = jSONObject.optInt("min_version");
        dqVar.mApiVersionMax = jSONObject.optInt("max_version");
        dqVar.dq = jSONObject.optString("sign");
        dqVar.mFlag = jSONObject.optBoolean("is_revert") ? 3 : 2;
        dqVar.f2421d = new File(jSONObject.optString("plugin_file"));
        return dqVar;
    }

    public static mn dq(Context context) {
        if (s == null) {
            synchronized (mn.class) {
                try {
                    if (s == null) {
                        s = new mn(context);
                    }
                } finally {
                }
            }
        }
        return s;
    }

    public static String dq(int i) {
        char[] charArray = String.valueOf(i).toCharArray();
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < charArray.length; i2++) {
            sb.append(charArray[i2]);
            if (i2 < charArray.length - 1) {
                sb.append(".");
            }
        }
        return sb.toString();
    }

    public static String dq(String str) {
        Plugin plugin;
        try {
            if (!Zeus.isPluginInstalled(str) || (plugin = Zeus.getPlugin(str)) == null) {
                return null;
            }
            return dq(plugin.getVersion());
        } catch (Throwable unused) {
            com.bytedance.sdk.openadsdk.api.ox.p("TTPluginManager", "Get local version failed");
            return null;
        }
    }

    public static void dq(Throwable th) {
        if (th instanceof AbstractMethodError) {
            Zeus.unInstallPlugin("com.byted.pangle");
            com.bytedance.sdk.openadsdk.api.ox.p("TTPluginManager", "AbstractMethodError, rollback to builtin version.");
        }
    }

    private static void dq(boolean z, String str) {
        HashMap<String, TTPluginListener> hashMap = f2418d;
        TTPluginListener tTPluginListener = hashMap.get(str);
        StringBuilder sb = new StringBuilder("Install dl plugin ");
        sb.append(str);
        sb.append(z ? " success" : " failed");
        sb.append(", need notify: ");
        sb.append(tTPluginListener != null);
        com.bytedance.sdk.openadsdk.api.ox.d("TTPluginManager", sb.toString());
        HashMap<String, Handler> hashMap2 = ox;
        Handler handler = hashMap2.get(str);
        if (z) {
            TTPluginListener tTPluginListener2 = ig;
            if (!dq(tTPluginListener2, str) && (tTPluginListener == null || handler == null)) {
                return;
            }
            if (Zeus.loadPlugin(str)) {
                Plugin plugin = Zeus.getPlugin(str);
                d(plugin);
                if (handler != null) {
                    handler.removeCallbacksAndMessages(null);
                }
                if (tTPluginListener != null) {
                    tTPluginListener.onPluginListener(1000, plugin.mClassLoader, plugin.mResources, null);
                }
                if (dq(tTPluginListener2, str)) {
                    tTPluginListener2.onPluginListener(1000, plugin.mClassLoader, plugin.mResources, null);
                    ig = null;
                }
            } else {
                com.bytedance.sdk.openadsdk.api.ox.d("TTPluginManager", "handle installed, load failed");
                ox(str, 1002);
            }
        } else {
            com.bytedance.sdk.openadsdk.api.ox.d("TTPluginManager", "handle installed failed");
            ox(str, 1003);
        }
        hashMap.remove(str);
        hashMap2.remove(str);
    }

    private static boolean dq(TTPluginListener tTPluginListener, String str) {
        if (tTPluginListener == null || tTPluginListener.packageName() == null) {
            return false;
        }
        return tTPluginListener.packageName().equals(str);
    }

    private static File ox(Context context) {
        return new File(com.bytedance.sdk.openadsdk.api.plugin.d.dq(context, "tt_pangle_bykv_file", 0), dq);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox(String str) {
        Plugin plugin = Zeus.getPlugin(str, false);
        try {
            if (plugin.mClassLoader != null) {
                hat g2 = hat.g(3);
                SparseArray sparseArray = g2.f19148c;
                g2.o(0, 1);
                sparseArray.put(1, str);
                sparseArray.put(2, plugin.mClassLoader);
                TTAdSdk.getAdManager().register(g2.k());
            }
        } catch (Throwable th) {
            com.bytedance.sdk.openadsdk.api.ox.dq("TTPluginManager", "initPluginService failed in " + str, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ox(String str, int i) {
        com.bytedance.sdk.openadsdk.api.ox.p("TTPluginManager", "plugin update failed");
        Bundle bundle = new Bundle();
        bundle.putInt(PluginConstants.KEY_ERROR_CODE, i);
        TTPluginListener tTPluginListener = f2418d.get(str);
        if (tTPluginListener != null) {
            tTPluginListener.onPluginListener(1001, null, null, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static dq p(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return dq(new JSONObject(str));
        } catch (JSONException unused) {
            com.bytedance.sdk.openadsdk.api.ox.s("TTPluginManager", "Invalid plugin info:" + str);
            return null;
        }
    }

    private static boolean p(Context context) {
        File ox2 = ox(context);
        return ox2.exists() && ox2.listFiles().length != 0;
    }

    public void d() {
        EventListener eventListener = this.no;
        if (eventListener != null) {
            cpq f2 = cpq.f();
            f2.f13287e = true;
            eventListener.onEvent(1, f2.h());
        }
    }

    public void d(final TTPluginListener tTPluginListener) {
        com.bytedance.sdk.openadsdk.cd.dq.dq().d(new Runnable() { // from class: com.bytedance.sdk.openadsdk.api.plugin.mn.6
            @Override // java.lang.Runnable
            public void run() {
                String packageName = tTPluginListener.packageName();
                Plugin plugin = (Zeus.isPluginInstalled(packageName) && (Zeus.isPluginLoaded(packageName) || Zeus.loadPlugin(packageName))) ? Zeus.getPlugin(packageName) : null;
                StringBuilder sb = new StringBuilder("Find plugin:");
                sb.append(plugin != null);
                com.bytedance.sdk.openadsdk.api.ox.d("TTPluginManager", sb.toString());
                if (plugin == null) {
                    TTPluginListener unused = mn.ig = tTPluginListener;
                } else {
                    mn.d(plugin);
                    tTPluginListener.onPluginListener(1000, plugin.mClassLoader, plugin.mResources, null);
                }
            }
        });
    }

    public Bundle dq(String str, Bundle bundle) {
        String dq2 = dq(str);
        if (!TextUtils.isEmpty(dq2)) {
            bundle.putString(PluginConstants.KEY_PLUGIN_VERSION, dq2);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putBundle(str, bundle);
        Bundle bundle3 = new Bundle();
        bundle3.putBundle(PluginConstants.KEY_PL_CONFIG_INFO, bundle2);
        return bundle3;
    }

    public BaseDexClassLoader dq(iw iwVar, int i) throws Exception {
        boolean z;
        if (!this.mn) {
            com.bytedance.sdk.openadsdk.api.ox.p("TTPluginManager", "Zeus init failed.");
            throw new com.bytedance.sdk.openadsdk.api.plugin.ox(4, this.ia);
        }
        if (!Zeus.isPluginInstalled("com.byted.pangle")) {
            if (p(this.kk)) {
                Zeus.installFromDownloadDir();
            }
            try {
                com.bytedance.sdk.openadsdk.api.ox.d("TTPluginManager", "wait start");
                this.iw.await(i, TimeUnit.MILLISECONDS);
                com.bytedance.sdk.openadsdk.api.ox.d("TTPluginManager", "wait done");
                iwVar.d("wait_install_cost");
            } catch (Exception unused) {
                com.bytedance.sdk.openadsdk.api.ox.d("TTPluginManager", "Install wait time out");
                throw new com.bytedance.sdk.openadsdk.api.plugin.ox(8, "install wait timeout");
            }
        }
        if (Zeus.isPluginLoaded("com.byted.pangle") || Zeus.loadPlugin("com.byted.pangle")) {
            p = Zeus.getPlugin("com.byted.pangle").mClassLoader;
            z = true;
        } else {
            z = false;
        }
        iwVar.d("get_classloader_cost");
        Zeus.installFromDownloadDir();
        if (p == null) {
            if (this.iw.getCount() != 0) {
                com.bytedance.sdk.openadsdk.api.ox.p("TTPluginManager", "Install wait time out");
                throw new com.bytedance.sdk.openadsdk.api.plugin.ox(8, "install wait timeout");
            }
            if (z) {
                com.bytedance.sdk.openadsdk.api.ox.p("TTPluginManager", "Get null after load");
                throw new com.bytedance.sdk.openadsdk.api.plugin.ox(9, "Get null after load");
            }
        }
        iwVar.d("get_classloader_done");
        return p;
    }

    public JSONObject dq() {
        return this.o;
    }

    public void dq(EventListener eventListener) {
        this.no = eventListener;
    }

    public void dq(final TTPluginListener tTPluginListener) {
        if (!this.mn) {
            com.bytedance.sdk.openadsdk.api.ox.p("TTPluginManager", "Zeus init failed.");
            if (tTPluginListener != null) {
                tTPluginListener.onPluginListener(1002, null, null, null);
                return;
            }
            return;
        }
        Handler handler = new Handler(Looper.getMainLooper());
        handler.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.api.plugin.mn.5
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.api.ox.d("TTPluginManager", "Load plugin failed, caused by timeout.");
                tTPluginListener.onPluginListener(1001, null, null, null);
            }
        }, 180000L);
        String packageName = tTPluginListener.packageName();
        Plugin plugin = (Zeus.isPluginInstalled(packageName) && (Zeus.isPluginLoaded(packageName) || Zeus.loadPlugin(packageName))) ? Zeus.getPlugin(packageName) : null;
        StringBuilder sb = new StringBuilder("Find plugin:");
        sb.append(plugin != null);
        com.bytedance.sdk.openadsdk.api.ox.d("TTPluginManager", sb.toString());
        if (plugin == null) {
            f2418d.put(packageName, tTPluginListener);
            ox.put(packageName, handler);
        } else {
            d(plugin);
            handler.removeCallbacksAndMessages(null);
            tTPluginListener.onPluginListener(1000, plugin.mClassLoader, plugin.mResources, null);
        }
    }
}

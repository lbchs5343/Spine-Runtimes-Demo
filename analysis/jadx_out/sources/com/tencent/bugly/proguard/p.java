package com.tencent.bugly.proguard;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f9778a = true;

    /* renamed from: b, reason: collision with root package name */
    public static List<o> f9779b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public static boolean f9780c;

    /* renamed from: d, reason: collision with root package name */
    private static w f9781d;

    /* renamed from: e, reason: collision with root package name */
    private static boolean f9782e;

    public static synchronized void a(Context context) {
        synchronized (p.class) {
            a(context, null);
        }
    }

    public static synchronized void a(Context context, BuglyStrategy buglyStrategy) {
        synchronized (p.class) {
            if (f9782e) {
                al.d("[init] initial Multi-times, ignore this.", new Object[0]);
                return;
            }
            if (context == null) {
                return;
            }
            aa a2 = aa.a(context);
            if (a(a2)) {
                f9778a = false;
                return;
            }
            String e2 = a2.e();
            if (e2 == null) {
                Log.e(al.f9586b, "[init] meta data of BUGLY_APPID in AndroidManifest.xml should be set.");
            } else {
                a(context, e2, a2.D, buglyStrategy);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0179 A[Catch: all -> 0x001d, TryCatch #3 {, blocks: (B:4:0x000f, B:6:0x0014, B:14:0x0026, B:18:0x0030, B:20:0x0034, B:21:0x0070, B:23:0x00b1, B:26:0x00b5, B:28:0x00c7, B:30:0x00d3, B:32:0x00d9, B:33:0x00eb, B:35:0x00fa, B:38:0x0102, B:40:0x010c, B:42:0x0112, B:44:0x011a, B:45:0x012f, B:46:0x015c, B:47:0x016f, B:49:0x0179, B:51:0x017f, B:52:0x0191, B:53:0x01a0, B:55:0x01a6, B:57:0x01ac, B:58:0x01be, B:59:0x01ca, B:61:0x01d0, B:62:0x01dc, B:74:0x0168, B:76:0x016c, B:67:0x0140, B:69:0x014b, B:71:0x0155, B:80:0x01e9, B:87:0x0217, B:97:0x021a, B:99:0x021f, B:100:0x0226, B:91:0x020e, B:93:0x0214, B:83:0x01f1, B:85:0x0201), top: B:3:0x000f, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01a6 A[Catch: all -> 0x001d, TryCatch #3 {, blocks: (B:4:0x000f, B:6:0x0014, B:14:0x0026, B:18:0x0030, B:20:0x0034, B:21:0x0070, B:23:0x00b1, B:26:0x00b5, B:28:0x00c7, B:30:0x00d3, B:32:0x00d9, B:33:0x00eb, B:35:0x00fa, B:38:0x0102, B:40:0x010c, B:42:0x0112, B:44:0x011a, B:45:0x012f, B:46:0x015c, B:47:0x016f, B:49:0x0179, B:51:0x017f, B:52:0x0191, B:53:0x01a0, B:55:0x01a6, B:57:0x01ac, B:58:0x01be, B:59:0x01ca, B:61:0x01d0, B:62:0x01dc, B:74:0x0168, B:76:0x016c, B:67:0x0140, B:69:0x014b, B:71:0x0155, B:80:0x01e9, B:87:0x0217, B:97:0x021a, B:99:0x021f, B:100:0x0226, B:91:0x020e, B:93:0x0214, B:83:0x01f1, B:85:0x0201), top: B:3:0x000f, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01d0 A[Catch: all -> 0x001d, TryCatch #3 {, blocks: (B:4:0x000f, B:6:0x0014, B:14:0x0026, B:18:0x0030, B:20:0x0034, B:21:0x0070, B:23:0x00b1, B:26:0x00b5, B:28:0x00c7, B:30:0x00d3, B:32:0x00d9, B:33:0x00eb, B:35:0x00fa, B:38:0x0102, B:40:0x010c, B:42:0x0112, B:44:0x011a, B:45:0x012f, B:46:0x015c, B:47:0x016f, B:49:0x0179, B:51:0x017f, B:52:0x0191, B:53:0x01a0, B:55:0x01a6, B:57:0x01ac, B:58:0x01be, B:59:0x01ca, B:61:0x01d0, B:62:0x01dc, B:74:0x0168, B:76:0x016c, B:67:0x0140, B:69:0x014b, B:71:0x0155, B:80:0x01e9, B:87:0x0217, B:97:0x021a, B:99:0x021f, B:100:0x0226, B:91:0x020e, B:93:0x0214, B:83:0x01f1, B:85:0x0201), top: B:3:0x000f, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01f1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x021f A[Catch: all -> 0x001d, TryCatch #3 {, blocks: (B:4:0x000f, B:6:0x0014, B:14:0x0026, B:18:0x0030, B:20:0x0034, B:21:0x0070, B:23:0x00b1, B:26:0x00b5, B:28:0x00c7, B:30:0x00d3, B:32:0x00d9, B:33:0x00eb, B:35:0x00fa, B:38:0x0102, B:40:0x010c, B:42:0x0112, B:44:0x011a, B:45:0x012f, B:46:0x015c, B:47:0x016f, B:49:0x0179, B:51:0x017f, B:52:0x0191, B:53:0x01a0, B:55:0x01a6, B:57:0x01ac, B:58:0x01be, B:59:0x01ca, B:61:0x01d0, B:62:0x01dc, B:74:0x0168, B:76:0x016c, B:67:0x0140, B:69:0x014b, B:71:0x0155, B:80:0x01e9, B:87:0x0217, B:97:0x021a, B:99:0x021f, B:100:0x0226, B:91:0x020e, B:93:0x0214, B:83:0x01f1, B:85:0x0201), top: B:3:0x000f, inners: #2 }] */
    /* JADX WARN: Type inference failed for: r16v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r16v11 */
    /* JADX WARN: Type inference failed for: r16v12 */
    /* JADX WARN: Type inference failed for: r16v13 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r16v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static synchronized void a(Context context, String str, boolean z, BuglyStrategy buglyStrategy) {
        int i;
        char c2;
        char c3;
        String appPackageName;
        String deviceID;
        String deviceModel;
        byte[] bArr;
        char c4;
        synchronized (p.class) {
            if (f9782e) {
                al.d("[init] initial Multi-times, ignore this.", new Object[0]);
                return;
            }
            if (context == 0) {
                return;
            }
            if (str == null) {
                Log.e(al.f9586b, "init arg 'crashReportAppID' should not be null!");
                return;
            }
            f9782e = true;
            if (z) {
                f9780c = true;
                al.f9587c = true;
                al.d("Bugly debug模式开启，请在发布时把isDebug关闭。 -- Running in debug model for 'isDebug' is enabled. Please disable it when you release.", new Object[0]);
                al.e("--------------------------------------------------------------------------------------------", new Object[0]);
                al.d("Bugly debug模式将有以下行为特性 -- The following list shows the behaviour of debug model: ", new Object[0]);
                al.d("[1] 输出详细的Bugly SDK的Log -- More detailed log of Bugly SDK will be output to logcat;", new Object[0]);
                al.d("[2] 每一条Crash都会被立即上报 -- Every crash caught by Bugly will be uploaded immediately.", new Object[0]);
                al.d("[3] 自定义日志将会在Logcat中输出 -- Custom log will be output to logcat.", new Object[0]);
                al.e("--------------------------------------------------------------------------------------------", new Object[0]);
                al.b("[init] Open debug mode of Bugly.", new Object[0]);
            }
            al.a(" crash report start initializing...", new Object[0]);
            al.b("[init] Bugly start initializing...", new Object[0]);
            al.a("[init] Bugly complete version: v%s", "4.1.9.3");
            Context a2 = ap.a((Context) context);
            aa a3 = aa.a(a2);
            a3.o();
            ao.a(a2);
            f9781d = w.a(a2, f9779b);
            ai.a(a2);
            ac.a(a2, f9779b);
            u a4 = u.a(a2);
            if (a(a3)) {
                f9778a = false;
                return;
            }
            a3.r = str;
            a3.b("APP_ID", str);
            al.a("[param] Set APP ID:%s", str);
            if (buglyStrategy != null) {
                String appVersion = buglyStrategy.getAppVersion();
                if (!TextUtils.isEmpty(appVersion)) {
                    if (appVersion.length() > 100) {
                        String substring = appVersion.substring(0, 100);
                        al.d("appVersion %s length is over limit %d substring to %s", appVersion, 100, substring);
                        appVersion = substring;
                    }
                    a3.o = appVersion;
                    al.a("[param] Set App version: %s", buglyStrategy.getAppVersion());
                }
                try {
                } catch (Exception e2) {
                    e = e2;
                    c2 = 2;
                }
                try {
                    if (buglyStrategy.isReplaceOldChannel()) {
                        String appChannel = buglyStrategy.getAppChannel();
                        if (TextUtils.isEmpty(appChannel)) {
                            context = 2;
                        } else {
                            if (appChannel.length() > 100) {
                                String substring2 = appChannel.substring(0, 100);
                                c4 = 2;
                                al.d("appChannel %s length is over limit %d substring to %s", appChannel, 100, substring2);
                                appChannel = substring2;
                            } else {
                                c4 = 2;
                            }
                            f9781d.a(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEBUG_UI_NOTIFY, "app_channel", appChannel.getBytes(), false);
                            a3.s = appChannel;
                            context = c4;
                        }
                    } else {
                        context = 2;
                        context = 2;
                        context = 2;
                        Map<String, byte[]> a5 = f9781d.a(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEBUG_UI_NOTIFY, (v) null);
                        if (a5 != null && (bArr = a5.get("app_channel")) != null) {
                            a3.s = new String(bArr);
                        }
                    }
                    al.a("[param] Set App channel: %s", a3.s);
                    c3 = context;
                } catch (Exception e3) {
                    e = e3;
                    c2 = context;
                    c3 = c2;
                    if (f9780c) {
                        e.printStackTrace();
                        c3 = c2;
                    }
                    appPackageName = buglyStrategy.getAppPackageName();
                    if (!TextUtils.isEmpty(appPackageName)) {
                    }
                    deviceID = buglyStrategy.getDeviceID();
                    if (deviceID != null) {
                    }
                    deviceModel = buglyStrategy.getDeviceModel();
                    if (deviceModel != null) {
                    }
                    a3.f9539f = buglyStrategy.isUploadProcess();
                    ao.f9590b = buglyStrategy.isBuglyLogUpload();
                    while (i < f9779b.size()) {
                    }
                    s.a(a2, buglyStrategy);
                    if (buglyStrategy == null) {
                    }
                    final ac a6 = ac.a();
                    a6.f9547c.a(new Thread() { // from class: com.tencent.bugly.proguard.ac.1
                        @Override // java.lang.Thread, java.lang.Runnable
                        public final void run() {
                            try {
                                Map<String, byte[]> a7 = w.a().a(ac.f9544a, (v) null);
                                if (a7 != null) {
                                    byte[] bArr2 = a7.get("device");
                                    byte[] bArr3 = a7.get("gateway");
                                    if (bArr2 != null) {
                                        aa.a(ac.this.h).d(new String(bArr2));
                                    }
                                    if (bArr3 != null) {
                                        aa.a(ac.this.h).c(new String(bArr3));
                                    }
                                }
                                ac.this.f9550g = ac.d();
                                if (ac.this.f9550g != null) {
                                    if (ap.b(ac.i) || !ap.d(ac.i)) {
                                        ac.this.f9550g.q = StrategyBean.f9497a;
                                        ac.this.f9550g.r = StrategyBean.f9498b;
                                    } else {
                                        ac.this.f9550g.q = ac.i;
                                        ac.this.f9550g.r = ac.i;
                                    }
                                }
                            } catch (Throwable th) {
                                if (!al.a(th)) {
                                    th.printStackTrace();
                                }
                            }
                            ac acVar = ac.this;
                            acVar.a(acVar.f9550g, false);
                        }
                    }, r0);
                    al.b("[init] Bugly initialization finished.", new Object[0]);
                }
                appPackageName = buglyStrategy.getAppPackageName();
                if (!TextUtils.isEmpty(appPackageName)) {
                    if (appPackageName.length() > 100) {
                        String substring3 = appPackageName.substring(0, 100);
                        Object[] objArr = new Object[3];
                        objArr[0] = appPackageName;
                        objArr[1] = 100;
                        objArr[c3] = substring3;
                        al.d("appPackageName %s length is over limit %d substring to %s", objArr);
                        appPackageName = substring3;
                    }
                    a3.f9536c = appPackageName;
                    al.a("[param] Set App package: %s", buglyStrategy.getAppPackageName());
                }
                deviceID = buglyStrategy.getDeviceID();
                if (deviceID != null) {
                    if (deviceID.length() > 100) {
                        String substring4 = deviceID.substring(0, 100);
                        Object[] objArr2 = new Object[3];
                        objArr2[0] = deviceID;
                        objArr2[1] = 100;
                        objArr2[c3] = substring4;
                        al.d("deviceId %s length is over limit %d substring to %s", objArr2);
                        deviceID = substring4;
                    }
                    a3.a(deviceID);
                    al.a("[param] Set device ID: %s", deviceID);
                }
                deviceModel = buglyStrategy.getDeviceModel();
                if (deviceModel != null) {
                    a3.b(deviceModel);
                    al.a("[param] Set device model: %s", deviceModel);
                }
                a3.f9539f = buglyStrategy.isUploadProcess();
                ao.f9590b = buglyStrategy.isBuglyLogUpload();
            }
            for (i = 0; i < f9779b.size(); i++) {
                try {
                    if (a4.b(f9779b.get(i).id)) {
                        f9779b.get(i).init(a2, z, buglyStrategy);
                    }
                } catch (Throwable th) {
                    if (!al.a(th)) {
                        th.printStackTrace();
                    }
                }
            }
            s.a(a2, buglyStrategy);
            long appReportDelay = buglyStrategy == null ? buglyStrategy.getAppReportDelay() : 0L;
            final ac a62 = ac.a();
            a62.f9547c.a(new Thread() { // from class: com.tencent.bugly.proguard.ac.1
                @Override // java.lang.Thread, java.lang.Runnable
                public final void run() {
                    try {
                        Map<String, byte[]> a7 = w.a().a(ac.f9544a, (v) null);
                        if (a7 != null) {
                            byte[] bArr2 = a7.get("device");
                            byte[] bArr3 = a7.get("gateway");
                            if (bArr2 != null) {
                                aa.a(ac.this.h).d(new String(bArr2));
                            }
                            if (bArr3 != null) {
                                aa.a(ac.this.h).c(new String(bArr3));
                            }
                        }
                        ac.this.f9550g = ac.d();
                        if (ac.this.f9550g != null) {
                            if (ap.b(ac.i) || !ap.d(ac.i)) {
                                ac.this.f9550g.q = StrategyBean.f9497a;
                                ac.this.f9550g.r = StrategyBean.f9498b;
                            } else {
                                ac.this.f9550g.q = ac.i;
                                ac.this.f9550g.r = ac.i;
                            }
                        }
                    } catch (Throwable th2) {
                        if (!al.a(th2)) {
                            th2.printStackTrace();
                        }
                    }
                    ac acVar = ac.this;
                    acVar.a(acVar.f9550g, false);
                }
            }, appReportDelay);
            al.b("[init] Bugly initialization finished.", new Object[0]);
        }
    }

    public static synchronized void a(o oVar) {
        synchronized (p.class) {
            if (!f9779b.contains(oVar)) {
                f9779b.add(oVar);
            }
        }
    }

    private static boolean a(aa aaVar) {
        List<String> list = aaVar.v;
        return list != null && list.contains("bugly");
    }
}

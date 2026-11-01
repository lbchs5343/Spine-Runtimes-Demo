package com.bytedance.pangle.plugin;

import android.os.SystemClock;
import com.bytedance.pangle.ZeusPluginStateListener;
import com.bytedance.pangle.c.b;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.util.g;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.File;
import java.util.LinkedList;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private File f1493a;

    /* renamed from: b, reason: collision with root package name */
    private final String f1494b;

    public b(String str, File file) {
        this.f1493a = file;
        this.f1494b = str;
    }

    private static File a(File file) {
        if (file.exists() || file.getParent() == null) {
            return file;
        }
        File[] listFiles = new File(file.getParent()).listFiles();
        if (listFiles == null || listFiles.length == 0) {
            return null;
        }
        for (File file2 : listFiles) {
            if (file2.exists() && file2.getName().endsWith(".apk")) {
                return file2;
            }
        }
        return file;
    }

    private static void a(String str, int i, String str2, long j, String str3) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject.putOpt("status_code", com.bytedance.pangle.log.b.a(Integer.valueOf(i)));
            jSONObject.putOpt("plugin_package_name", com.bytedance.pangle.log.b.a(str2));
            jSONObject.putOpt("version_code", com.bytedance.pangle.log.b.a((Object) 0));
            jSONObject3.putOpt(MediationConstant.EXTRA_DURATION, Integer.valueOf(com.bytedance.pangle.log.b.b(Long.valueOf(j))));
            jSONObject2.putOpt("message", com.bytedance.pangle.log.b.a(str3));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        com.bytedance.pangle.c.b.a().a(str, jSONObject, jSONObject3, jSONObject2);
    }

    private void b() {
        int i = 3;
        while (i > 0) {
            i--;
            try {
                File file = new File(this.f1493a.getAbsolutePath() + "_unzip");
                if (file.exists()) {
                    file.delete();
                    file.mkdirs();
                }
                g.b(this.f1493a.getAbsolutePath(), file.getAbsolutePath());
                File[] listFiles = file.listFiles();
                File file2 = this.f1493a;
                if (listFiles != null && listFiles.length > 0) {
                    file2 = listFiles[0];
                }
                File a2 = a(file2);
                if (a2 != null && a2.exists() && a2.isFile()) {
                    this.f1493a = a2;
                    ZeusLogger.d("Plugin install : unZip count : " + (3 - i));
                    return;
                }
            } catch (Exception e2) {
                ZeusLogger.errReport(ZeusLogger.TAG_INIT, "Plugin install : unZip file failed !!!", e2);
                e2.printStackTrace();
            }
        }
    }

    private com.bytedance.pangle.f.a.e c() {
        com.bytedance.pangle.dex.a a2;
        if (this.f1493a == null) {
            return null;
        }
        try {
            File file = new File(this.f1493a.getAbsolutePath() + "_unzip");
            if (file.exists()) {
                g.a(file);
                file.mkdirs();
            }
            g.b(this.f1493a.getAbsolutePath(), file.getAbsolutePath());
            File[] listFiles = file.listFiles();
            LinkedList linkedList = new LinkedList();
            File file2 = null;
            for (File file3 : listFiles) {
                if (file3.getName().equals("config.json")) {
                    file2 = file3;
                } else if (file3.getName().endsWith(".dex")) {
                    linkedList.add(file3);
                }
            }
            g.a(this.f1493a);
            ZeusLogger.i(ZeusLogger.TAG_INSTALL, "PluginInstallRunnable Dex deleting downloadFile apkFile=" + this.f1493a);
            this.f1493a = file;
            if (linkedList.size() > 0 && file2 != null && file2.isFile() && (a2 = com.bytedance.pangle.dex.b.a(file2, linkedList)) != null) {
                return new com.bytedance.pangle.f.a.e(a2);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return null;
    }

    public final boolean a() {
        com.bytedance.pangle.f.a.e a2;
        File file = this.f1493a;
        if (file == null || !file.getName().endsWith(".dex.zip")) {
            if (g.b(this.f1493a)) {
                ZeusLogger.d("Plugin install : start unZip file ~~~~");
                long elapsedRealtime = SystemClock.elapsedRealtime();
                b();
                a(com.bytedance.pangle.c.b.h, b.a.G, this.f1494b, SystemClock.elapsedRealtime() - elapsedRealtime, "");
                ZeusLogger.d("Plugin install : start install from unZip ~~~~");
            } else {
                ZeusLogger.d("Plugin install : start install without unZip ~~~~");
            }
            a2 = com.bytedance.pangle.f.a.d.a(this.f1493a);
        } else {
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            ZeusLogger.d("Plugin install : start unDexZip file ~~~~");
            a2 = c();
            if (a2 != null) {
                a(com.bytedance.pangle.c.b.h, b.a.s, this.f1494b, SystemClock.elapsedRealtime() - elapsedRealtime2, "");
                ZeusLogger.d("Plugin install : finish install from unDexZip success ~~~~");
            } else {
                ZeusLogger.d("Plugin install : finish install from unDexZip fail ~~~~");
            }
        }
        if (a2 == null) {
            ZeusPluginStateListener.postStateChange(this.f1494b, 7, " read local file package info failed !!! pluginPkg = " + this.f1494b + " mApkFile.exists = " + this.f1493a.exists());
            StringBuilder sb = new StringBuilder("PluginInstallRunnable read local file package info failed !!! pluginPkg = ");
            sb.append(this.f1494b);
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, sb.toString());
            return false;
        }
        Plugin plugin = PluginManager.getInstance().getPlugin(a2.f1410a);
        if (plugin != null) {
            boolean install = plugin.install(this.f1493a, a2);
            if (install) {
                ZeusPluginStateListener.postStateChange(a2.f1410a, 6, new Object[0]);
                return install;
            }
            ZeusPluginStateListener.postStateChange(a2.f1410a, 7, "Internal error.");
            return install;
        }
        ZeusPluginStateListener.postStateChange(this.f1494b, 7, " plugin == null !!! pluginPkg = " + this.f1494b);
        ZeusLogger.w(ZeusLogger.TAG_INSTALL, "PluginInstallRunnable cannot query valid plugin !!! packageName = " + a2.f1410a);
        return false;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a();
    }
}

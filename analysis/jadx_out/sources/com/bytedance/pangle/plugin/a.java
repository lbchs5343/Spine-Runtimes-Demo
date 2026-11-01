package com.bytedance.pangle.plugin;

import android.content.SharedPreferences;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.util.f;
import com.bytedance.pangle.util.g;
import com.bytedance.pangle.util.l;
import g.awf;
import java.io.File;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class a extends Plugin {

    /* renamed from: a, reason: collision with root package name */
    private com.bytedance.pangle.dex.a f1492a;

    public a(JSONObject jSONObject) {
        super(jSONObject);
    }

    private void b() {
        List<String> list;
        l a2 = l.a();
        String str = this.mPkgName;
        if (!TextUtils.isEmpty(str)) {
            String string = a2.f1647a.getString("ALIAS_LAST_TIME_".concat(String.valueOf(f.a(str))), "");
            if (!TextUtils.isEmpty(string)) {
                list = Arrays.asList(string.split("_"));
                if (list != null || list.size() <= 0) {
                }
                for (String str2 : list) {
                    if (!TextUtils.isEmpty(str2)) {
                        int a3 = com.bytedance.pangle.dex.b.a(str2);
                        if (a3 != -1) {
                            l.a().a(str2, a3, false);
                        }
                        g.a(com.bytedance.pangle.d.c.a(str2));
                    }
                }
                l a4 = l.a();
                String str3 = this.mPkgName;
                if (!TextUtils.isEmpty(str3)) {
                    String a5 = f.a(str3);
                    SharedPreferences.Editor edit = a4.f1647a.edit();
                    edit.remove("ALIAS_LAST_TIME_".concat(String.valueOf(a5)));
                    edit.apply();
                }
                ZeusLogger.w(ZeusLogger.TAG_INIT, "DexPlugin deleteAliasLastTimePackageName list=".concat(String.valueOf(list)));
                return;
            }
        }
        list = null;
        if (list != null) {
        }
    }

    public final void a() {
        String a2 = com.bytedance.pangle.d.c.a(this.mPkgName);
        if (TextUtils.isEmpty(a2)) {
            return;
        }
        File[] listFiles = new File(a2).listFiles();
        if (listFiles == null || listFiles.length == 0) {
            ZeusLogger.d(ZeusLogger.TAG_LOAD, "DexPlugin clear install file, packageName=" + this.mPkgName + " no children files,need delete dir=" + a2);
            g.a(a2);
        }
    }

    @Override // com.bytedance.pangle.plugin.Plugin
    public final void deleteIfNeeded() {
        if (com.bytedance.pangle.d.d.a(Zeus.getAppApplication()) && l.a().f(this.mPkgName)) {
            l.a().e(this.mPkgName);
            String a2 = com.bytedance.pangle.d.c.a(this.mPkgName);
            g.a(a2);
            ZeusLogger.w(ZeusLogger.TAG_INIT, "DexPlugin deleteIfNeeded " + this.mPkgName + " dir=" + a2);
            b();
            String g2 = l.a().g(this.mPkgName);
            if (TextUtils.isEmpty(g2)) {
                return;
            }
            String a3 = com.bytedance.pangle.d.c.a(g2);
            g.a(a3);
            l a4 = l.a();
            String str = this.mPkgName;
            if (!TextUtils.isEmpty(str)) {
                String a5 = f.a(str);
                SharedPreferences.Editor edit = a4.f1647a.edit();
                edit.remove("ALIAS_".concat(String.valueOf(a5)));
                edit.apply();
            }
            ZeusLogger.w(ZeusLogger.TAG_INIT, "DexPlugin deleteA_PackageName dir=".concat(String.valueOf(a3)));
        }
    }

    @Override // com.bytedance.pangle.plugin.Plugin
    public final JSONObject getJsonConfig() {
        com.bytedance.pangle.dex.a aVar = this.f1492a;
        if (aVar == null) {
            return null;
        }
        return aVar.f1347f;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0095 A[Catch: all -> 0x000f, TryCatch #1 {all -> 0x000f, blocks: (B:6:0x0009, B:8:0x000d, B:11:0x0012, B:13:0x001c, B:15:0x002f, B:16:0x0031, B:18:0x0038, B:45:0x0047, B:47:0x004a, B:23:0x0073, B:25:0x0076, B:27:0x007c, B:29:0x0080, B:31:0x0086, B:32:0x008b, B:34:0x0095, B:36:0x00a8, B:37:0x00ac, B:38:0x00b1, B:20:0x0057, B:43:0x005f, B:48:0x00ee, B:49:0x00f5, B:50:0x00f8, B:52:0x00f2), top: B:5:0x0009, inners: #0 }] */
    @Override // com.bytedance.pangle.plugin.Plugin
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void init() {
        com.bytedance.pangle.dex.a aVar;
        if (this.mInitialized) {
            return;
        }
        synchronized (this.initializeLock) {
            try {
                if (this.mInitialized) {
                    return;
                }
                if (com.bytedance.pangle.d.d.a(Zeus.getAppApplication())) {
                    deleteIfNeeded();
                    String g2 = l.a().g(this.mPkgName);
                    if (TextUtils.isEmpty(g2)) {
                        g2 = this.mPkgName;
                    }
                    int a2 = com.bytedance.pangle.dex.b.a(g2);
                    if (a2 != -1) {
                        File[] k = com.bytedance.pangle.d.c.k(g2, a2);
                        File file = new File(com.bytedance.pangle.d.c.l(g2, a2));
                        if (k != null) {
                            try {
                            } catch (Exception e2) {
                                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPlugin initDexPlugins fail throw exception ".concat(String.valueOf(e2)));
                                e2.printStackTrace();
                            }
                            if (k.length > 0) {
                                this.f1492a = com.bytedance.pangle.dex.b.a(file, (List<File>) Arrays.asList(k));
                                if (k == null && k.length > 0 && file.isFile() && (aVar = this.f1492a) != null && aVar.a()) {
                                    updateToInstalled(a2);
                                } else {
                                    a2 = 0;
                                }
                                if (com.bytedance.pangle.d.d.a(Zeus.getAppApplication())) {
                                    b();
                                    String g3 = l.a().g(this.mPkgName);
                                    if (TextUtils.isEmpty(g3)) {
                                        com.bytedance.pangle.dex.b.a(this.mPkgName, a2);
                                    } else {
                                        com.bytedance.pangle.dex.b.a(g3, a2);
                                    }
                                }
                                ZeusLogger.i(ZeusLogger.TAG_INIT, "DexPlugin initDexPlugins result=".concat(String.valueOf(this)));
                                l.a().a(this.mPkgName);
                                l.a().b(this.mPkgName);
                                l.a().a(this.mPkgName, com.bytedance.pangle.util.b.a(Zeus.getAppApplication()));
                                l.a().a(this.mPkgName, this.mApiVersionCode);
                            }
                        }
                        ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPlugin initDexPlugins unDexZip fail throw exception");
                        if (k == null) {
                        }
                        a2 = 0;
                        if (com.bytedance.pangle.d.d.a(Zeus.getAppApplication())) {
                        }
                        ZeusLogger.i(ZeusLogger.TAG_INIT, "DexPlugin initDexPlugins result=".concat(String.valueOf(this)));
                        l.a().a(this.mPkgName);
                        l.a().b(this.mPkgName);
                        l.a().a(this.mPkgName, com.bytedance.pangle.util.b.a(Zeus.getAppApplication()));
                        l.a().a(this.mPkgName, this.mApiVersionCode);
                    }
                    a();
                } else {
                    updateInstallStateFromMainProcess();
                }
                this.mInitialized = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bytedance.pangle.plugin.Plugin
    public final boolean install(File file, com.bytedance.pangle.f.a.e eVar) {
        boolean z = false;
        if (eVar != null) {
            try {
                com.bytedance.pangle.dex.a aVar = eVar.f1412c;
                if (aVar != null) {
                    ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPlugin thread name=" + Thread.currentThread().getName() + " install dex from config " + aVar);
                    String str = aVar.f1343b;
                    int b2 = aVar.b();
                    synchronized (this.installLock) {
                        try {
                            ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPlugin synchronized begin, packageName=" + str + " plugin=" + this);
                            boolean a2 = aVar.a();
                            if (a2 && (z = com.bytedance.pangle.dex.b.a(aVar, SystemClock.elapsedRealtime()))) {
                                ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPlugin markPluginInstalled, packageName=" + str + " version=" + b2);
                            }
                            synchronized (this) {
                                try {
                                    if (!a2) {
                                        ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPlugin Dex invalid " + str + ":" + b2);
                                    } else if (this.mLifeCycle == 3) {
                                        ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPlugin Dex LIFE_LOADED " + str + ":" + this.mVersionCode);
                                    } else if (z) {
                                        updateToInstalled(b2);
                                        ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPlugin Dex INSTALLED_SUCCESS " + str + ":" + b2);
                                    } else {
                                        ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPlugin Dex INSTALL_FAILED " + str + ":" + b2);
                                    }
                                    g.a(file);
                                    ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPlugin Dex deleting unDexZip pkgName=" + str + " version=" + b2 + " apkFile=" + file);
                                } finally {
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return z;
                }
            } catch (Throwable th2) {
                ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "DexPlugin DEX ZIP IMPOSSIBLE!!!", th2);
            }
        }
        return z;
    }

    @Override // com.bytedance.pangle.plugin.Plugin
    public final String toString() {
        StringBuilder sb = new StringBuilder("DexPlugin{pkg=");
        sb.append(this.mPkgName);
        sb.append(", ver=");
        sb.append(this.mVersionCode);
        sb.append(", life=");
        return awf.s(sb, this.mLifeCycle, '}');
    }
}

package com.bytedance.pangle.plugin;

import android.content.ComponentCallbacks;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import android.content.res.Configuration;
import android.text.TextUtils;
import com.bytedance.pangle.ComponentManager;
import com.bytedance.pangle.GlobalParam;
import com.bytedance.pangle.PluginClassLoader;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.ZeusApplication;
import com.bytedance.pangle.ZeusPluginEventCallback;
import com.bytedance.pangle.ZeusPluginStateListener;
import com.bytedance.pangle.a.a;
import com.bytedance.pangle.c.b;
import com.bytedance.pangle.e.g;
import com.bytedance.pangle.i;
import com.bytedance.pangle.log.IZeusReporter;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.provider.ContentProviderManager;
import com.bytedance.pangle.res.PluginResources;
import com.bytedance.pangle.transform.ZeusTransformUtils;
import com.bytedance.pangle.util.FieldUtils;
import com.bytedance.pangle.util.MethodUtils;
import com.bytedance.pangle.util.l;
import com.bytedance.pangle.wrapper.PluginApplicationWrapper;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import dalvik.system.BaseDexClassLoader;
import g.awf;
import g.he;
import java.io.File;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    private static final i f1509a = i.a();

    /* JADX INFO: Access modifiers changed from: private */
    public PackageInfo a(String str, final Plugin plugin, StringBuilder sb, String str2, File file) {
        long currentTimeMillis = System.currentTimeMillis();
        PackageInfo packageArchiveInfo = Zeus.getAppApplication().getPackageManager().getPackageArchiveInfo(str2, 143);
        plugin.mHostApplication = (PluginApplicationWrapper) ZeusTransformUtils.wrapperContext2Application(Zeus.getAppApplication(), plugin.mPkgName);
        ApplicationInfo applicationInfo = new ApplicationInfo(Zeus.getAppApplication().getApplicationInfo());
        plugin.mHostApplicationInfoHookSomeField = applicationInfo;
        applicationInfo.nativeLibraryDir = file.getAbsolutePath();
        plugin.mHostApplicationInfoHookSomeField.dataDir = plugin.mHostApplication.getDataDir().getAbsolutePath();
        plugin.mHostApplicationInfoHookSomeField.sourceDir = str2;
        if (TextUtils.isEmpty(packageArchiveInfo.applicationInfo.sourceDir)) {
            packageArchiveInfo.applicationInfo.sourceDir = str2;
        }
        if (TextUtils.isEmpty(packageArchiveInfo.applicationInfo.publicSourceDir)) {
            packageArchiveInfo.applicationInfo.publicSourceDir = str2;
        }
        plugin.mResources = new PluginResources(Zeus.getAppApplication().getPackageManager().getResourcesForApplication(packageArchiveInfo.applicationInfo), str);
        Zeus.getAppApplication().registerComponentCallbacks(new ComponentCallbacks() { // from class: com.bytedance.pangle.plugin.d.3
            @Override // android.content.ComponentCallbacks
            public final void onConfigurationChanged(Configuration configuration) {
                plugin.mResources.updateConfiguration(configuration, Zeus.getAppApplication().getResources().getDisplayMetrics());
            }

            @Override // android.content.ComponentCallbacks
            public final void onLowMemory() {
            }
        });
        sb.append("makeResources cost:");
        sb.append(System.currentTimeMillis() - currentTimeMillis);
        sb.append(";");
        return packageArchiveInfo;
    }

    private static void a(Plugin plugin, String str) {
        JSONObject optJSONObject;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        JSONObject jSONObject = new JSONObject(str);
        JSONObject optJSONObject2 = jSONObject.optJSONObject("mapping");
        HashMap hashMap = new HashMap();
        if (optJSONObject2 != null) {
            Iterator<String> keys = optJSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, optJSONObject2.getString(next));
            }
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("forceMappings");
        if (optJSONArray != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
                int optInt = jSONObject2.optInt("minApi", 0);
                int optInt2 = jSONObject2.optInt("maxApi", he.UNDEFINED_ITEM_ID);
                int apiVersionCode = plugin.getApiVersionCode();
                if (apiVersionCode <= optInt2 && apiVersionCode >= optInt && (optJSONObject = jSONObject2.optJSONObject("mapping")) != null) {
                    Iterator<String> keys2 = optJSONObject.keys();
                    while (keys2.hasNext()) {
                        String next2 = keys2.next();
                        hashMap.put(next2, optJSONObject.getString(next2));
                    }
                }
            }
        }
        for (String str2 : hashMap.keySet()) {
            String str3 = (String) hashMap.get(str2);
            String str4 = plugin.mPkgName;
            StringBuilder sb = new StringBuilder();
            sb.append((str3 == null || !str3.contains(".")) ? awf.ad(new StringBuilder(), plugin.mPkgName, ".") : "");
            sb.append((String) hashMap.get(str2));
            ComponentManager.registerActivity(str4, sb.toString(), str2);
        }
    }

    private static void a(Plugin plugin, String str, File file, File file2) {
        if (com.bytedance.pangle.util.i.k()) {
            PluginClassLoader pluginClassLoader = new PluginClassLoader("", file2, file.getAbsolutePath(), null);
            plugin.mClassLoader = pluginClassLoader;
            a(pluginClassLoader, str);
            return;
        }
        if (!com.bytedance.pangle.util.i.b()) {
            plugin.mClassLoader = new PluginClassLoader(str, file2, file.getAbsolutePath(), null);
            return;
        }
        String a2 = g.a(plugin.mPkgName, plugin.getVersion());
        String[] split = a2.split(":");
        long currentTimeMillis = System.currentTimeMillis();
        boolean a3 = com.bytedance.pangle.e.b.a(file2.getAbsolutePath(), split);
        StringBuilder sb = new StringBuilder("useDirect:");
        sb.append(System.currentTimeMillis() - currentTimeMillis);
        sb.append(" ");
        sb.append(!a3);
        ZeusLogger.d(ZeusLogger.TAG_LOAD, sb.toString());
        PluginClassLoader pluginClassLoader2 = new PluginClassLoader(a3 ? a2 : "", file2, file.getAbsolutePath(), null);
        plugin.mClassLoader = pluginClassLoader2;
        if (a3) {
            return;
        }
        com.bytedance.pangle.dex.c.a(pluginClassLoader2, plugin.mPkgName, plugin.getVersion());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final Plugin plugin, String str, File file, File file2, StringBuilder sb) {
        long currentTimeMillis = System.currentTimeMillis();
        a(plugin, str, file, file2);
        sb.append("classLoader cost:");
        sb.append(System.currentTimeMillis() - currentTimeMillis);
        sb.append(" ;");
        if (plugin.mOpenLoadClassOpt) {
            com.bytedance.pangle.d.e.a(new Runnable() { // from class: com.bytedance.pangle.plugin.d.4
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        PluginClassLoader pluginClassLoader = plugin.mClassLoader;
                        pluginClassLoader.setAllPluginClasses((HashSet) MethodUtils.invokeStaticMethod(pluginClassLoader.loadClass("com.volcengine.PluginClassHolder"), "getPluginClasses", new Object[0]));
                    } catch (Throwable unused) {
                    }
                }
            });
        }
        long currentTimeMillis2 = System.currentTimeMillis();
        try {
            String str2 = (String) FieldUtils.readStaticField(plugin.mClassLoader.loadClass("com.volcengine.StubConfig"), "actStubV1");
            if (str2 != null) {
                a(plugin, str2);
            }
        } catch (ClassNotFoundException unused) {
        } catch (Throwable th) {
            sb.append("actStubV1 cost:");
            sb.append(System.currentTimeMillis() - currentTimeMillis2);
            sb.append(";");
            throw th;
        }
        sb.append("actStubV1 cost:");
        sb.append(System.currentTimeMillis() - currentTimeMillis2);
        sb.append(";");
    }

    private static void a(Plugin plugin, StringBuilder sb, PackageInfo packageInfo) {
        ActivityInfo[] activityInfoArr = packageInfo.activities;
        if (activityInfoArr != null) {
            for (ActivityInfo activityInfo : activityInfoArr) {
                if (TextUtils.isEmpty(activityInfo.processName) || !activityInfo.processName.contains(":")) {
                    activityInfo.processName = "main";
                } else {
                    activityInfo.processName = activityInfo.processName.split(":")[1];
                }
                plugin.pluginActivities.put(activityInfo.name, activityInfo);
            }
        }
        ServiceInfo[] serviceInfoArr = packageInfo.services;
        if (serviceInfoArr != null) {
            for (ServiceInfo serviceInfo : serviceInfoArr) {
                if (TextUtils.isEmpty(serviceInfo.processName) || !serviceInfo.processName.contains(":")) {
                    serviceInfo.processName = "main";
                } else {
                    serviceInfo.processName = serviceInfo.processName.split(":")[1];
                }
                plugin.pluginServices.put(serviceInfo.name, serviceInfo);
            }
        }
        ActivityInfo[] activityInfoArr2 = packageInfo.receivers;
        if (activityInfoArr2 != null) {
            for (ActivityInfo activityInfo2 : activityInfoArr2) {
                if (TextUtils.isEmpty(activityInfo2.processName) || !activityInfo2.processName.contains(":")) {
                    activityInfo2.processName = "main";
                } else {
                    activityInfo2.processName = activityInfo2.processName.split(":")[1];
                }
                plugin.pluginReceiver.put(activityInfo2.name, activityInfo2);
            }
        }
        ProviderInfo[] providerInfoArr = packageInfo.providers;
        if (providerInfoArr != null) {
            for (ProviderInfo providerInfo : providerInfoArr) {
                if (TextUtils.isEmpty(providerInfo.processName) || !providerInfo.processName.contains(":")) {
                    providerInfo.processName = "main";
                } else {
                    providerInfo.processName = providerInfo.processName.split(":")[1];
                }
                plugin.pluginProvider.put(providerInfo.name, providerInfo);
            }
        }
        long currentTimeMillis = System.currentTimeMillis();
        HashMap<String, ProviderInfo> hashMap = plugin.pluginProvider;
        if (hashMap != null && hashMap.size() > 0) {
            ContentProviderManager.getInstance().installContentProviders(plugin.pluginProvider.values(), plugin);
        }
        sb.append("installProvider cost:");
        sb.append(System.currentTimeMillis() - currentTimeMillis);
        sb.append(";");
        long currentTimeMillis2 = System.currentTimeMillis();
        if (!TextUtils.isEmpty(packageInfo.applicationInfo.className)) {
            ZeusApplication zeusApplication = (ZeusApplication) plugin.mClassLoader.loadClass(packageInfo.applicationInfo.className).newInstance();
            plugin.mApplication = zeusApplication;
            zeusApplication.attach(plugin, Zeus.getAppApplication());
        }
        sb.append("makeApplication cost:");
        sb.append(System.currentTimeMillis() - currentTimeMillis2);
        sb.append(";");
    }

    private static void a(String str, int i, String str2, int i2, long j, String str3) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject.putOpt("status_code", com.bytedance.pangle.log.b.a(Integer.valueOf(i)));
            jSONObject.putOpt("plugin_package_name", com.bytedance.pangle.log.b.a(str2));
            jSONObject.putOpt("version_code", com.bytedance.pangle.log.b.a(Integer.valueOf(i2)));
            jSONObject3.putOpt(MediationConstant.EXTRA_DURATION, Integer.valueOf(com.bytedance.pangle.log.b.b(Long.valueOf(j))));
            jSONObject2.putOpt("message", com.bytedance.pangle.log.b.a(str3));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        com.bytedance.pangle.c.b.a().a(str, jSONObject, jSONObject3, jSONObject2);
    }

    public static boolean a(Object obj, String str) {
        if (str != null) {
            try {
                for (String str2 : str.split(File.pathSeparator)) {
                    new File(str2).setReadOnly();
                }
            } catch (Throwable th) {
                th.printStackTrace();
                ZeusLogger.errReport(ZeusLogger.TAG_LOAD, "PluginLoader createPluginClassLoader#addDexPath fail >>>".concat(String.valueOf(str)), th);
                return false;
            }
        }
        MethodUtils.getAccessibleMethod(BaseDexClassLoader.class, "addDexPath", String.class).invoke(obj, str);
        ZeusLogger.i(ZeusLogger.TAG_LOAD, "PluginLoader createPluginClassLoader#addDexPath success >>>".concat(String.valueOf(str)));
        return true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:15|(5:(2:79|80)(2:21|(15:23|(1:76)(2:26|(13:28|29|30|31|(2:33|(1:35)(1:36))|37|(1:41)|42|43|45|(2:47|48)(7:52|53|54|55|56|57|58)|49|50)(1:74))|75|29|30|31|(0)|37|(2:39|41)|42|43|45|(0)(0)|49|50)(1:77))|45|(0)(0)|49|50)|78|30|31|(0)|37|(0)|42|43) */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x024a, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01cc, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01a6 A[Catch: all -> 0x01cc, TryCatch #3 {all -> 0x01cc, blocks: (B:31:0x0182, B:33:0x01a6, B:39:0x01d1, B:41:0x01d7, B:49:0x023e, B:58:0x0233), top: B:30:0x0182 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01d1 A[Catch: all -> 0x01cc, TryCatch #3 {all -> 0x01cc, blocks: (B:31:0x0182, B:33:0x01a6, B:39:0x01d1, B:41:0x01d7, B:49:0x023e, B:58:0x0233), top: B:30:0x0182 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01e2 A[Catch: all -> 0x020f, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x020f, blocks: (B:47:0x01e2, B:56:0x0224), top: B:45:0x01e0 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x02b1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean a(final String str, final Plugin plugin, final StringBuilder sb) {
        boolean z;
        String str2;
        final File file;
        PackageInfo[] packageInfoArr;
        boolean z2;
        boolean z3;
        String str3 = str;
        Plugin plugin2 = plugin;
        final StringBuilder sb2 = sb;
        try {
            if (plugin2 == null) {
                sb2.append("loadPluginInternal, plugin == null;");
                ZeusLogger.w(ZeusLogger.TAG_LOAD, "PluginLoader loadPluginInternal, plugin[" + str3 + "] not exist !!!");
                return false;
            }
            if (!plugin2.isInstalled()) {
                sb2.append("loadPluginInternal, !plugin.isInstalled();");
                ZeusLogger.w(ZeusLogger.TAG_LOAD, "PluginLoader loadPluginInternal, plugin[" + str3 + "] not installed !!!");
                return false;
            }
            String b2 = com.bytedance.pangle.d.c.b(plugin2.mPkgName, plugin2.getVersion());
            ZeusLogger.w(ZeusLogger.TAG_LOAD, "PluginLoaderfind Apk: sourceApk:" + b2 + " ; pkgName:" + plugin2.mPkgName + " ; " + plugin2.getVersion());
            if (!new File(b2).exists()) {
                sb2.append("loadPluginInternal, sourceApk not exist;");
                ZeusLogger.w(ZeusLogger.TAG_LOAD, "PluginLoader loadPluginInternal, plugin[" + str3 + "] file not exist !!!");
                return false;
            }
            try {
                if (com.bytedance.pangle.util.i.b() || com.bytedance.pangle.util.i.f() || com.bytedance.pangle.util.i.k()) {
                    str2 = b2;
                    sb2.append("removeEntry skip 1;");
                } else {
                    if ((l.a().c(plugin2.mPkgName, plugin2.getVersion()) & 1) != 0) {
                        boolean a2 = com.bytedance.pangle.d.d.a(Zeus.getAppApplication());
                        boolean z4 = l.a().f1647a.getBoolean("dex_opt_state_" + plugin2.mPkgName + "_" + plugin2.getVersion(), false);
                        if (a2 && z4) {
                            if (!l.a().f1647a.getBoolean("dex_remove_state_" + plugin2.mPkgName + "_" + plugin2.getVersion(), false)) {
                                long currentTimeMillis = System.currentTimeMillis();
                                str2 = b2;
                                z3 = com.bytedance.pangle.util.b.b.a(str2, true, false, plugin2.mPkgName, plugin2.getVersion(), 2);
                                sb2.append("removeEntry cost:");
                                sb2.append(System.currentTimeMillis() - currentTimeMillis);
                                sb2.append(";");
                                l.a().c(plugin2.mPkgName, plugin2.getVersion(), true);
                                z = z3;
                                final File file2 = new File(com.bytedance.pangle.d.c.d(plugin2.mPkgName, plugin2.getVersion()));
                                File file3 = new File(com.bytedance.pangle.d.c.c(plugin2.mPkgName, plugin2.getVersion()));
                                if (com.bytedance.pangle.util.i.e()) {
                                    if (!com.bytedance.pangle.e.b.a(file3 + File.separator + com.bytedance.pangle.e.b.a(str2))) {
                                        file3 = null;
                                    }
                                }
                                file = file3;
                                if (file != null && !file.exists()) {
                                    file.mkdirs();
                                }
                                final PackageInfo[] packageInfoArr2 = new PackageInfo[1];
                                if (com.bytedance.pangle.util.i.k()) {
                                    final String str4 = str2;
                                    z2 = true;
                                    packageInfoArr = packageInfoArr2;
                                    com.bytedance.pangle.a.a.a(new a.InterfaceC0093a() { // from class: com.bytedance.pangle.plugin.d.1
                                        @Override // com.bytedance.pangle.a.a.InterfaceC0093a
                                        public final void a() {
                                            d.this.a(plugin, str4, file2, file, sb2);
                                        }
                                    }, new a.InterfaceC0093a() { // from class: com.bytedance.pangle.plugin.d.2
                                        @Override // com.bytedance.pangle.a.a.InterfaceC0093a
                                        public final void a() {
                                            packageInfoArr2[0] = d.this.a(str, plugin, sb, str4, file2);
                                        }
                                    });
                                    str3 = str;
                                    plugin2 = plugin;
                                    sb2 = sb;
                                } else {
                                    packageInfoArr = packageInfoArr2;
                                    String str5 = str2;
                                    z2 = true;
                                    try {
                                        a(plugin2, str5, file2, file, sb2);
                                        ZeusLogger.w(ZeusLogger.TAG_LOAD, "PluginLoader before makeResources");
                                        str3 = str;
                                        plugin2 = plugin;
                                        sb2 = sb;
                                        packageInfoArr[0] = a(str3, plugin2, sb2, str5, file2);
                                        ZeusLogger.w(ZeusLogger.TAG_LOAD, "PluginLoader after makeResources");
                                    } catch (Throwable th) {
                                        th = th;
                                        plugin2 = plugin2;
                                        sb2 = sb2;
                                        str3 = str;
                                        GlobalParam.getInstance().getReporter().saveRecord(IZeusReporter.ZEUS_STAGE_ERROR, "loadPluginInternal stack:" + Arrays.toString(th.getStackTrace()));
                                        GlobalParam.getInstance().getReporter().saveRecord(IZeusReporter.ZEUS_STAGE_ERROR, "loadLog:" + sb2.toString());
                                        sb2.append("loadPluginInternal ");
                                        sb2.append(th.getMessage());
                                        sb2.append(";");
                                        ZeusLogger.w(ZeusLogger.TAG_LOAD, "PluginLoader loadPluginInternal, plugin[" + str3 + "] ", th);
                                        if (z) {
                                            l.a().a(str3, plugin2.getVersion(), "load");
                                            if (l.a().b(str3, plugin2.getVersion(), "load") > 3) {
                                                Zeus.unInstallPlugin(str3);
                                            }
                                        }
                                        return false;
                                    }
                                }
                                a(plugin2, sb2, packageInfoArr[0]);
                                return z2;
                            }
                            str2 = b2;
                            sb2.append("removeEntry skip 3;");
                        } else {
                            str2 = b2;
                            sb2.append("removeEntry skip 4 ");
                            sb2.append(a2);
                            sb2.append(" ");
                            sb2.append(z4);
                            sb2.append(";");
                        }
                        z3 = false;
                        z = z3;
                        final File file22 = new File(com.bytedance.pangle.d.c.d(plugin2.mPkgName, plugin2.getVersion()));
                        File file32 = new File(com.bytedance.pangle.d.c.c(plugin2.mPkgName, plugin2.getVersion()));
                        if (com.bytedance.pangle.util.i.e()) {
                        }
                        file = file32;
                        if (file != null) {
                            file.mkdirs();
                        }
                        final PackageInfo[] packageInfoArr22 = new PackageInfo[1];
                        if (com.bytedance.pangle.util.i.k()) {
                        }
                        a(plugin2, sb2, packageInfoArr[0]);
                        return z2;
                    }
                    str2 = b2;
                    sb2.append("removeEntry skip 2;");
                }
                if (com.bytedance.pangle.util.i.k()) {
                }
                a(plugin2, sb2, packageInfoArr[0]);
                return z2;
            } catch (Throwable th2) {
                th = th2;
                str3 = str;
                plugin2 = plugin;
                sb2 = sb;
                GlobalParam.getInstance().getReporter().saveRecord(IZeusReporter.ZEUS_STAGE_ERROR, "loadPluginInternal stack:" + Arrays.toString(th.getStackTrace()));
                GlobalParam.getInstance().getReporter().saveRecord(IZeusReporter.ZEUS_STAGE_ERROR, "loadLog:" + sb2.toString());
                sb2.append("loadPluginInternal ");
                sb2.append(th.getMessage());
                sb2.append(";");
                ZeusLogger.w(ZeusLogger.TAG_LOAD, "PluginLoader loadPluginInternal, plugin[" + str3 + "] ", th);
                if (z) {
                }
                return false;
            }
            z = false;
            final File file222 = new File(com.bytedance.pangle.d.c.d(plugin2.mPkgName, plugin2.getVersion()));
            File file322 = new File(com.bytedance.pangle.d.c.c(plugin2.mPkgName, plugin2.getVersion()));
            if (com.bytedance.pangle.util.i.e()) {
            }
            file = file322;
            if (file != null) {
            }
            final PackageInfo[] packageInfoArr222 = new PackageInfo[1];
        } catch (Throwable th3) {
            th = th3;
            z = false;
        }
    }

    public final boolean a(String str) {
        Plugin plugin = PluginManager.getInstance().getPlugin(str);
        if (plugin == null) {
            ZeusLogger.w(ZeusLogger.TAG_LOAD, "PluginLoader loadPlugin, plugin == null, pkg = ".concat(String.valueOf(str)));
            return false;
        }
        synchronized (plugin) {
            try {
                if (!plugin.isInstalled()) {
                    ZeusLogger.w(ZeusLogger.TAG_LOAD, "PluginLoader loadPlugin, UN_INSTALLED, ".concat(String.valueOf(str)));
                    return false;
                }
                if (plugin.isLoaded()) {
                    return true;
                }
                i iVar = f1509a;
                iVar.a(ZeusPluginEventCallback.EVENT_START_LOAD, 0, plugin.mPkgName, plugin.getVersion(), null);
                com.bytedance.pangle.log.a a2 = com.bytedance.pangle.log.a.a(ZeusLogger.TAG_LOAD, "PluginLoader", "loadPlugin:".concat(String.valueOf(str)));
                a(com.bytedance.pangle.c.b.i, b.a.D, plugin.mPkgName, plugin.getVersion(), -1L, (String) null);
                ZeusPluginStateListener.postStateChange(str, 8, new Object[0]);
                StringBuilder sb = new StringBuilder();
                boolean a3 = plugin.isIsDexPlugin() ? com.bytedance.pangle.dex.b.a(plugin, sb) : a(str, plugin, sb);
                if ((plugin instanceof a) && plugin.isIsDexPlugin()) {
                    ((a) plugin).a();
                }
                a2.a("loadPluginInternal:".concat(String.valueOf(a3)));
                if (a3) {
                    plugin.setLifeCycle(3);
                    a(com.bytedance.pangle.c.b.j, b.a.E, plugin.mPkgName, plugin.getVersion(), a2.a(), sb.toString());
                    ZeusPluginStateListener.postStateChange(str, 9, new Object[0]);
                    iVar.a(ZeusPluginEventCallback.EVENT_FINISH_LOAD, 0, plugin.mPkgName, plugin.getVersion(), null);
                } else {
                    sb.append("plugin:");
                    sb.append(plugin.mPkgName);
                    sb.append(" versionCode:");
                    sb.append(plugin.getVersion());
                    sb.append("load failed;");
                    a(com.bytedance.pangle.c.b.j, b.a.F, plugin.mPkgName, plugin.getVersion(), -1L, sb.toString());
                    ZeusPluginStateListener.postStateChange(str, 10, new Object[0]);
                    iVar.a(ZeusPluginEventCallback.EVENT_FINISH_LOAD, -1, plugin.mPkgName, plugin.getVersion(), null);
                }
                ZeusLogger.i(ZeusLogger.TAG_LOAD, "PluginLoader loadFinished, ".concat(String.valueOf(plugin)));
                if (!plugin.isLoaded()) {
                    return false;
                }
                ZeusLogger.d(ZeusLogger.TAG_LOAD, "PluginLoader postResult, LOADED " + plugin.mPkgName);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

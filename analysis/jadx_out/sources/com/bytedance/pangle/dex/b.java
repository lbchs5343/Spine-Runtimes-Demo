package com.bytedance.pangle.dex;

import android.content.SharedPreferences;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.pangle.PluginClassLoader;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.ZeusPluginDecodeCallback;
import com.bytedance.pangle.ZeusPluginStateListener;
import com.bytedance.pangle.c.b;
import com.bytedance.pangle.i;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.plugin.Plugin;
import com.bytedance.pangle.plugin.d;
import com.bytedance.pangle.util.f;
import com.bytedance.pangle.util.g;
import com.bytedance.pangle.util.h;
import com.bytedance.pangle.util.l;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class b {
    public static int a(String str) {
        String a2;
        File[] k;
        int i = -1;
        if (TextUtils.isEmpty(str) || (a2 = com.bytedance.pangle.d.c.a(str)) == null) {
            return -1;
        }
        File[] listFiles = new File(a2).listFiles(new FileFilter() { // from class: com.bytedance.pangle.dex.b.1
            @Override // java.io.FileFilter
            public final boolean accept(File file) {
                return file != null && file.getName().matches("^version-(\\d+)$");
            }
        });
        if (listFiles != null && listFiles.length > 0) {
            for (File file : listFiles) {
                int parseInt = Integer.parseInt(file.getName().split("-")[1]);
                if (parseInt > i && l.a().b(str, parseInt) && (k = com.bytedance.pangle.d.c.k(str, parseInt)) != null && k.length > 0) {
                    i = parseInt;
                }
            }
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ba, code lost:
    
        if (r5 == 0) goto L48;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b7  */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static a a(File file, List<File> list) {
        FileInputStream fileInputStream;
        InputStreamReader inputStreamReader;
        ?? r5;
        if (file != null && list != null && list.size() > 0) {
            try {
                StringBuilder sb = new StringBuilder();
                fileInputStream = new FileInputStream(file);
                try {
                    inputStreamReader = new InputStreamReader(fileInputStream);
                    try {
                        r5 = new BufferedReader(inputStreamReader);
                        while (true) {
                            try {
                                String readLine = r5.readLine();
                                if (readLine == null) {
                                    break;
                                }
                                sb.append(readLine);
                            } catch (Throwable th) {
                                th = th;
                                r5 = r5;
                                try {
                                    ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPluginUtils parse dex config fail throw error ".concat(String.valueOf(th)));
                                    if (fileInputStream != null) {
                                        fileInputStream.close();
                                    }
                                    if (inputStreamReader != null) {
                                        inputStreamReader.close();
                                    }
                                } catch (Throwable th2) {
                                    if (fileInputStream != null) {
                                        fileInputStream.close();
                                    }
                                    if (inputStreamReader != null) {
                                        inputStreamReader.close();
                                    }
                                    if (r5 != 0) {
                                        r5.close();
                                    }
                                    throw th2;
                                }
                            }
                        }
                        ZeusPluginDecodeCallback zeusPluginDecodeCallback = i.a().f1469d;
                        if (zeusPluginDecodeCallback != null) {
                            String decode = zeusPluginDecodeCallback.decode(sb.toString());
                            if (!TextUtils.isEmpty(decode)) {
                                JSONObject jSONObject = new JSONObject(decode);
                                ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPluginUtils parse dex config json success");
                                a aVar = new a();
                                aVar.f1342a = jSONObject.optString("version");
                                aVar.f1343b = jSONObject.optString("package_name");
                                aVar.f1344c = jSONObject.optJSONObject("adn_adapter_md5");
                                aVar.f1348g = jSONObject.optString("alias_package_name");
                                aVar.f1345d = list;
                                aVar.f1346e = file;
                                aVar.f1347f = jSONObject;
                                fileInputStream.close();
                                inputStreamReader.close();
                                r5.close();
                                return aVar;
                            }
                            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPluginUtils parse dex config fail decode content is empty");
                        } else {
                            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPluginUtils parse dex config fail decode callback is null");
                        }
                        fileInputStream.close();
                        inputStreamReader.close();
                    } catch (Throwable th3) {
                        th = th3;
                        r5 = 0;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    inputStreamReader = null;
                    r5 = inputStreamReader;
                    ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPluginUtils parse dex config fail throw error ".concat(String.valueOf(th)));
                    if (fileInputStream != null) {
                    }
                    if (inputStreamReader != null) {
                    }
                }
            } catch (Throwable th5) {
                th = th5;
                fileInputStream = null;
                inputStreamReader = null;
            }
            r5.close();
        }
        return null;
    }

    public static void a(final String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String a2 = com.bytedance.pangle.d.c.a(str);
        if (TextUtils.isEmpty(a2)) {
            return;
        }
        final String concat = "version-".concat(String.valueOf(i));
        new File(a2).listFiles(new FileFilter() { // from class: com.bytedance.pangle.dex.b.2
            @Override // java.io.FileFilter
            public final boolean accept(File file) {
                if (file != null && !concat.equals(file.getName())) {
                    g.a(file.getAbsolutePath());
                    if (file.getName().matches("^version-(\\d+)$")) {
                        l.a().a(str, Integer.parseInt(file.getName().split("-")[1]), false);
                    }
                }
                return false;
            }
        });
    }

    public static boolean a(a aVar, long j) {
        List<File> list;
        File file;
        if (aVar != null) {
            list = aVar.f1345d;
            file = aVar.f1346e;
        } else {
            list = null;
            file = null;
        }
        if (file == null || list == null || list.size() <= 0) {
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPluginUtils install dex fail config is null");
        } else {
            int b2 = aVar.b();
            String str = aVar.f1343b;
            ZeusPluginStateListener.postStateChange(str, 11, new Object[0]);
            com.bytedance.pangle.plugin.c.a(com.bytedance.pangle.c.b.f1314e, b.a.r, str, b2, -1L, null);
            ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPluginUtils install dex start packageName = " + str + " version is " + b2);
            String g2 = l.a().g(str);
            if (!TextUtils.isEmpty(g2) && a(g2) >= b2) {
                com.bytedance.pangle.plugin.c.a(com.bytedance.pangle.c.b.f1315f, b.a.t, str, b2, -1L, "dex installed version more than download version can no install new dex zip");
                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPluginUtils ".concat("dex installed version more than download version can no install new dex zip"));
                return false;
            }
            String str2 = TextUtils.isEmpty(aVar.f1348g) ? str : aVar.f1348g;
            if (com.bytedance.pangle.d.c.j(str2, b2)) {
                com.bytedance.pangle.plugin.c.a(com.bytedance.pangle.c.b.f1315f, b.a.s, str, b2, SystemClock.elapsedRealtime() - j, "install success 已经安装完成");
                ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPluginUtils install dex already install packageName = " + str + " version = " + b2);
                return true;
            }
            try {
                ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPluginUtils install dex no dir need install packageName=" + str + " version=" + b2);
                for (File file2 : list) {
                    if (file2.getName().endsWith(".dex")) {
                        String a2 = com.bytedance.pangle.d.c.a(str2, b2, file2.getName());
                        ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPluginUtils install dex = " + file2.getName());
                        h.a(file2.getAbsolutePath(), a2);
                    }
                }
                if (file.getName().endsWith(".json")) {
                    String l = com.bytedance.pangle.d.c.l(str2, b2);
                    ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPluginUtils install dex config = " + file.getName());
                    h.a(file.getAbsolutePath(), l);
                }
                if (com.bytedance.pangle.d.c.j(str2, b2)) {
                    ZeusLogger.i(ZeusLogger.TAG_INSTALL, "DexPluginUtils install dex success packageName = " + str + " version = " + b2);
                    ZeusPluginStateListener.postStateChange(str, 12, new Object[0]);
                    com.bytedance.pangle.plugin.c.a(com.bytedance.pangle.c.b.f1315f, b.a.s, str, b2, SystemClock.elapsedRealtime() - j, "install success");
                    l.a().a(str2, b2, true);
                    if (!TextUtils.isEmpty(aVar.f1348g)) {
                        l a3 = l.a();
                        if (!TextUtils.isEmpty(str)) {
                            String a4 = f.a(str);
                            SharedPreferences.Editor edit = a3.f1647a.edit();
                            edit.putString("ALIAS_".concat(String.valueOf(a4)), str2);
                            edit.apply();
                        }
                        l a5 = l.a();
                        SharedPreferences.Editor edit2 = a5.f1647a.edit();
                        if (!TextUtils.isEmpty(str)) {
                            String a6 = f.a(str);
                            String string = a5.f1647a.getString("ALIAS_LAST_TIME_".concat(String.valueOf(a6)), "");
                            if (TextUtils.isEmpty(string)) {
                                edit2.putString("ALIAS_LAST_TIME_".concat(String.valueOf(a6)), g2);
                            } else {
                                edit2.putString("ALIAS_LAST_TIME_".concat(String.valueOf(a6)), string + "_" + g2);
                            }
                            edit2.apply();
                        }
                    }
                    return true;
                }
                com.bytedance.pangle.plugin.c.a(com.bytedance.pangle.c.b.f1315f, b.a.t, str, b2, -1L, "install dir not exists");
                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPluginUtils ".concat("install dir not exists"));
            } catch (Exception e2) {
                com.bytedance.pangle.plugin.c.a(com.bytedance.pangle.c.b.f1315f, b.a.t, str, b2, -1L, "throw exception: ".concat(String.valueOf(e2)));
                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "DexPluginUtils install dex fail throw exception");
                e2.printStackTrace();
            }
        }
        return false;
    }

    public static boolean a(Plugin plugin, StringBuilder sb) {
        try {
            if (plugin == null) {
                sb.append("loadDexPlugin fail, plugin == null;");
                return false;
            }
            if (!plugin.isInstalled()) {
                sb.append("loadDexPlugin fail, plugin is not installed");
                return false;
            }
            if (!(plugin instanceof com.bytedance.pangle.plugin.a)) {
                sb.append("loadDexPlugin fail, plugin must be dexPlugin");
                return false;
            }
            String g2 = l.a().g(plugin.mPkgName);
            if (TextUtils.isEmpty(g2)) {
                g2 = plugin.mPkgName;
            }
            int a2 = a(g2);
            if (a2 == -1) {
                sb.append("loadDexPlugin fail, get Plugin version is -1");
                return false;
            }
            File[] k = com.bytedance.pangle.d.c.k(g2, a2);
            if (k != null && k.length != 0) {
                String l = com.bytedance.pangle.d.c.l(g2, a2);
                if (TextUtils.isEmpty(l)) {
                    sb.append("loadDexPlugin fail, configFileString is empty");
                    return false;
                }
                File file = new File(l);
                if (file.exists() && file.isFile()) {
                    a a3 = a(file, (List<File>) Arrays.asList(k));
                    if (a3 == null) {
                        sb.append("loadDexPlugin fail, config is null");
                        return false;
                    }
                    if (!a3.a()) {
                        sb.append("loadDexPlugin fail, check dex fail");
                        return false;
                    }
                    StringBuilder sb2 = new StringBuilder();
                    for (File file2 : k) {
                        if (file2.isFile()) {
                            sb2.append(file2.getAbsolutePath());
                            sb2.append(":");
                        }
                    }
                    String sb3 = sb2.toString();
                    if (TextUtils.isEmpty(sb3)) {
                        sb.append("loadDexPlugin fail, dexPath is empty");
                        return false;
                    }
                    Map<String, JSONObject> map = i.a().f1470e;
                    if (map != null && map.size() != 0) {
                        JSONObject jSONObject = map.get(plugin.mPkgName);
                        if (jSONObject != null && jSONObject.has("hostPackageName")) {
                            String optString = jSONObject.optString("hostPackageName");
                            if (TextUtils.isEmpty(optString)) {
                                sb.append("loadDexPlugin fail, hostPackageName is empty");
                                return false;
                            }
                            Plugin plugin2 = Zeus.getPlugin(optString);
                            if (plugin2 == null) {
                                sb.append("loadDexPlugin fail, hostPlugin is null hostPackageName=");
                                sb.append(optString);
                                return false;
                            }
                            if (com.bytedance.pangle.util.i.h()) {
                                sb.append("loadDexPlugin addDexPath success");
                                return d.a(plugin2.mClassLoader, sb3);
                            }
                            if (plugin2.mClassLoader == null) {
                                sb.append("loadDexPlugin fail classLoader is null");
                                return false;
                            }
                            ArrayList arrayList = new ArrayList(1);
                            arrayList.add(new PluginClassLoader(sb2.toString(), null, null, null));
                            sb.append("loadDexPlugin setOtherPluginClassLoader success dexPath=");
                            sb.append(sb3);
                            plugin2.mClassLoader.setOtherPluginClassLoader(arrayList);
                            return true;
                        }
                        sb.append("loadDexPlugin fail, dex config can not get hostPackageName");
                        return false;
                    }
                    sb.append("loadDexPlugin fail, getPackageDexManager is empty");
                    return false;
                }
                sb.append("loadDexPlugin fail, config file is not exists or is not file");
                return false;
            }
            sb.append("loadDexPlugin fail, get dex files is null or length is 0");
            return false;
        } catch (Throwable th) {
            sb.append("loadDexPlugin fail, throw error ");
            sb.append(th);
            return false;
        }
    }
}

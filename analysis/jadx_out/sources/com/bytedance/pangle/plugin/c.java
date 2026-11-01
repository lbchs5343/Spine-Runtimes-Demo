package com.bytedance.pangle.plugin;

import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import com.bytedance.pangle.GlobalParam;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.a.a;
import com.bytedance.pangle.c.b;
import com.bytedance.pangle.e.f;
import com.bytedance.pangle.e.g;
import com.bytedance.pangle.i;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.util.g;
import com.bytedance.pangle.util.h;
import com.bytedance.pangle.util.l;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private static final i f1495a = i.a();

    public static class a extends IOException {
        private a(String str) {
            super(str);
        }

        public /* synthetic */ a(String str, byte b2) {
            this(str);
        }

        private a(String str, Throwable th) {
            super(str, th);
        }

        public /* synthetic */ a(String str, Throwable th, byte b2) {
            this(str, th);
        }
    }

    public static /* synthetic */ void a(File file, String str, int i, StringBuffer stringBuffer) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            try {
                if (com.bytedance.pangle.g.e.a(file.getAbsolutePath(), str)) {
                } else {
                    throw new RuntimeException("安装包签名校验失败[1]");
                }
            } catch (Exception e2) {
                a(com.bytedance.pangle.c.b.f1315f, b.a.u, str, i, -1L, null);
                f1495a.a(1100, -3, str, i, e2);
                throw new a(e2.getMessage(), e2, (byte) 0);
            }
        } finally {
            stringBuffer.append("checkSignature cost:");
            stringBuffer.append(System.currentTimeMillis() - currentTimeMillis);
            stringBuffer.append(";");
        }
    }

    public static /* synthetic */ void a(String str, int i) {
        byte b2 = 0;
        try {
            if (!com.bytedance.pangle.util.i.e() && !com.bytedance.pangle.util.i.g()) {
                return;
            }
            l.a().b(str, i, false);
            com.bytedance.pangle.e.b.a(Zeus.getAppApplication()).edit().putInt(str, i).apply();
            f.a();
        } catch (Exception e2) {
            a(com.bytedance.pangle.c.b.f1315f, b.a.z, str, i, -1L, null);
            throw new a("dexOpt2失败", e2, b2);
        }
    }

    public static void a(String str, int i, String str2, int i2, long j, String str3) {
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

    public static /* synthetic */ void a(String str, int i, Map map, StringBuffer stringBuffer) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            try {
                com.bytedance.pangle.d.b.a(new File(com.bytedance.pangle.d.c.b(str, i)), new File(com.bytedance.pangle.d.c.d(str, i)), str, (Map<String, List<ZipEntry>>) map);
            } catch (Exception e2) {
                a(com.bytedance.pangle.c.b.f1315f, b.a.x, str, i, -1L, com.bytedance.pangle.log.b.a((Object) e2));
                f1495a.a(1100, -7, str, i, e2);
                throw new a("安装包动态库拷贝失败", e2, (byte) 0);
            }
        } finally {
            stringBuffer.append("copySo cost:");
            stringBuffer.append(System.currentTimeMillis() - currentTimeMillis);
            stringBuffer.append(";");
        }
    }

    public static /* synthetic */ void a(String str, String str2, int i, StringBuffer stringBuffer) {
        long currentTimeMillis = System.currentTimeMillis();
        StringBuilder sb = new StringBuilder();
        byte b2 = 0;
        int a2 = new com.bytedance.pangle.res.a.c().a(new File(str), false, sb);
        stringBuffer.append(a2 == 100 ? "modifyRes" : "noModifyRes");
        stringBuffer.append(" cost:");
        stringBuffer.append(System.currentTimeMillis() - currentTimeMillis);
        stringBuffer.append(";");
        if (a2 == 100 || a2 == 200) {
            return;
        }
        String sb2 = sb.toString();
        a(com.bytedance.pangle.c.b.f1315f, b.a.B, str2, i, -1L, sb2);
        f1495a.a(1100, -2, str2, i, null);
        throw new a("modifyRes failed. result = " + a2 + ", errorLog = " + sb2, b2);
    }

    public static boolean a(final File file, String str, final int i) {
        final String str2;
        int i2;
        i iVar;
        String str3;
        com.bytedance.pangle.log.a a2;
        a.InterfaceC0093a interfaceC0093a;
        final StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("useOpt;");
        final boolean[] zArr = {false};
        try {
            iVar = f1495a;
            str3 = str;
            try {
                iVar.a(1000, 0, str3, i, null);
                a2 = com.bytedance.pangle.log.a.a(ZeusLogger.TAG_INSTALL, "PluginInstaller", "install:".concat(String.valueOf(str)));
                str2 = str;
                try {
                    a(com.bytedance.pangle.c.b.f1314e, b.a.r, str2, i, -1L, null);
                    int b2 = l.a().b(str2, i, "install");
                    int b3 = l.a().b(str2, i, "load");
                    int removeApkEntryFlag = GlobalParam.getInstance().getRemoveApkEntryFlag(str2);
                    if (b2 > 3 || b3 > 3) {
                        removeApkEntryFlag = 0;
                    }
                    SharedPreferences.Editor edit = l.a().f1647a.edit();
                    edit.putInt("remove_entry_flag_" + str2 + "_" + i, removeApkEntryFlag);
                    edit.apply();
                    l.a().c(str2, i, false);
                    g.a(com.bytedance.pangle.d.c.a(str, i));
                    interfaceC0093a = new a.InterfaceC0093a() { // from class: com.bytedance.pangle.plugin.c.1
                        @Override // com.bytedance.pangle.a.a.InterfaceC0093a
                        public final void a() {
                            c.a(file, str2, i, stringBuffer);
                        }
                    };
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Throwable th2) {
                th = th2;
                str2 = str3;
            }
        } catch (Throwable th3) {
            th = th3;
            str2 = str;
        }
        try {
            a.InterfaceC0093a interfaceC0093a2 = new a.InterfaceC0093a() { // from class: com.bytedance.pangle.plugin.c.2
                @Override // com.bytedance.pangle.a.a.InterfaceC0093a
                public final void a() {
                    final Map f2 = c.f(file, str2, i, stringBuffer);
                    c.c(file, str2, i, stringBuffer);
                    c.a(c.g(file, str2, i, stringBuffer), str2, i, stringBuffer);
                    if (com.bytedance.pangle.util.i.f() || com.bytedance.pangle.util.i.b()) {
                        final boolean[] zArr2 = {false};
                        com.bytedance.pangle.a.a.a(new a.InterfaceC0093a() { // from class: com.bytedance.pangle.plugin.c.2.1
                            @Override // com.bytedance.pangle.a.a.InterfaceC0093a
                            public final void a() {
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                c.a(str2, i, f2, stringBuffer);
                            }
                        }, new a.InterfaceC0093a() { // from class: com.bytedance.pangle.plugin.c.2.2
                            @Override // com.bytedance.pangle.a.a.InterfaceC0093a
                            public final void a() {
                                boolean[] zArr3 = zArr2;
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                zArr3[0] = c.h(file, str2, i, stringBuffer);
                            }
                        });
                        zArr[0] = c.a(str2, i, zArr2[0], stringBuffer);
                    } else {
                        c.a(str2, i, f2, stringBuffer);
                        zArr[0] = c.a(str2, i, false, stringBuffer);
                        c.a(str2, i);
                    }
                }
            };
            stringBuffer = stringBuffer;
            zArr = zArr;
            com.bytedance.pangle.a.a.a(interfaceC0093a, interfaceC0093a2);
            g.a(file);
            str2 = str;
            a(com.bytedance.pangle.c.b.f1315f, b.a.s, str2, i, a2.a(), stringBuffer.toString());
            a2.a("success");
            str3 = str;
            iVar.a(1100, 0, str3, i, null);
            return true;
        } catch (Throwable th4) {
            th = th4;
            stringBuffer = stringBuffer;
            zArr = zArr;
            Throwable th5 = th;
            if (th5 instanceof a) {
                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "PluginInstaller " + str2 + " install failed.", th5);
                i2 = i;
            } else {
                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "PluginInstaller " + str2 + " install failed unknown error.", th5);
                a(com.bytedance.pangle.c.b.f1315f, b.a.t, str2, i, -1L, stringBuffer.toString());
                f1495a.a(1100, -1, str, i, th5);
                str2 = str;
                i2 = i;
            }
            if (zArr[0]) {
                l.a().a(str2, i2, "install");
            }
            return false;
        }
    }

    public static /* synthetic */ boolean a(String str, int i, boolean z, StringBuffer stringBuffer) {
        int c2 = l.a().c(str, i);
        boolean z2 = (c2 & 1) != 0;
        boolean z3 = (c2 & 2) != 0;
        if (!z2 && !z3) {
            stringBuffer.append("removeEntry skip;");
            return false;
        }
        boolean z4 = z && z2;
        String b2 = com.bytedance.pangle.d.c.b(str, i);
        long currentTimeMillis = System.currentTimeMillis();
        boolean a2 = com.bytedance.pangle.util.b.b.a(b2, z4, z3, str, i, 1);
        stringBuffer.append("removeEntry cost:");
        stringBuffer.append(System.currentTimeMillis() - currentTimeMillis);
        stringBuffer.append(";");
        return a2;
    }

    public static /* synthetic */ void c(File file, String str, int i, StringBuffer stringBuffer) {
        long currentTimeMillis = System.currentTimeMillis();
        byte b2 = 0;
        try {
            try {
                PackageInfo packageInfo = Zeus.getAppApplication().getPackageManager().getPackageInfo(Zeus.getAppApplication().getPackageName(), 4096);
                PackageInfo packageArchiveInfo = Zeus.getAppApplication().getPackageManager().getPackageArchiveInfo(file.getAbsolutePath(), 4096);
                List asList = Arrays.asList(packageInfo.requestedPermissions);
                String[] strArr = packageArchiveInfo.requestedPermissions;
                if (strArr != null && strArr.length > 0) {
                    ArrayList arrayList = new ArrayList();
                    for (String str2 : packageArchiveInfo.requestedPermissions) {
                        if (!asList.contains(str2)) {
                            arrayList.add(str2);
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        ZeusLogger.w("PluginInstaller", "The following permissions are declared in the plugin but not in the host: ".concat(String.valueOf(arrayList)));
                        if (GlobalParam.getInstance().checkPermission()) {
                            throw new a("The following permissions are declared in the plugin but not in the host: ".concat(String.valueOf(arrayList)), b2);
                        }
                    }
                }
            } catch (Exception e2) {
                a(com.bytedance.pangle.c.b.f1315f, b.a.v, str, i, -1L, null);
                f1495a.a(1100, -4, str, i, e2);
                throw new a("安装包权限校验失败", e2, b2);
            }
        } finally {
            stringBuffer.append("checkPermissions cost:");
            stringBuffer.append(System.currentTimeMillis() - currentTimeMillis);
            stringBuffer.append(";");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map<String, List<ZipEntry>> f(File file, String str, int i, StringBuffer stringBuffer) {
        String str2 = "插件包包含so不符合宿主ABI类型";
        if (!GlobalParam.getInstance().checkMatchHostAbi()) {
            return null;
        }
        long currentTimeMillis = System.currentTimeMillis();
        byte b2 = 0;
        try {
            try {
                com.bytedance.pangle.util.e<Boolean, Map<String, List<ZipEntry>>> a2 = com.bytedance.pangle.d.b.a(file);
                boolean booleanValue = a2.f1638a.booleanValue();
                Map<String, List<ZipEntry>> map = a2.f1639b;
                if (booleanValue) {
                    return map;
                }
                throw new a(str2, b2);
            } catch (Exception e2) {
                a(com.bytedance.pangle.c.b.f1315f, b.a.A, str, i, -1L, null);
                f1495a.a(1100, -5, str, i, e2);
                throw new a(str2, e2, b2);
            }
        } finally {
            stringBuffer.append("checkMatchHostAbi cost:");
            stringBuffer.append(System.currentTimeMillis() - currentTimeMillis);
            stringBuffer.append(";");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String g(File file, String str, int i, StringBuffer stringBuffer) {
        long currentTimeMillis = System.currentTimeMillis();
        String b2 = com.bytedance.pangle.d.c.b(str, i);
        try {
            try {
                h.a(file.getAbsolutePath(), b2);
                return b2;
            } catch (Exception e2) {
                a(com.bytedance.pangle.c.b.f1315f, b.a.w, str, i, -1L, null);
                f1495a.a(1100, -6, str, i, e2);
                throw new a("安装包拷贝失败", e2, (byte) 0);
            }
        } finally {
            stringBuffer.append("copyApk cost:");
            stringBuffer.append(System.currentTimeMillis() - currentTimeMillis);
            stringBuffer.append(";");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean h(File file, String str, int i, StringBuffer stringBuffer) {
        long j;
        boolean z;
        ZipFile zipFile;
        int i2;
        String str2;
        String str3 = ".dex";
        String str4 = "classes";
        long currentTimeMillis = System.currentTimeMillis();
        try {
            try {
                int i3 = 1;
                try {
                    if (!com.bytedance.pangle.util.i.b()) {
                        j = currentTimeMillis;
                        z = false;
                        if (com.bytedance.pangle.util.i.f()) {
                            String c2 = com.bytedance.pangle.d.c.c(str, i);
                            String b2 = com.bytedance.pangle.d.c.b(str, i);
                            StringBuilder sb = new StringBuilder();
                            sb.append(c2);
                            String str5 = File.separator;
                            sb.append(str5);
                            sb.append(com.bytedance.pangle.e.b.a(b2));
                            String sb2 = sb.toString();
                            if (com.bytedance.pangle.e.b.a(b2, c2 + str5 + com.bytedance.pangle.e.b.a(b2)) && com.bytedance.pangle.e.b.a(sb2)) {
                                stringBuffer.append("dexOpt1 cost:");
                                stringBuffer.append(System.currentTimeMillis() - j);
                                stringBuffer.append(";");
                                return true;
                            }
                        }
                    } else {
                        if (!file.exists() || str == null) {
                            throw new IOException("Could not check apk info " + file.getAbsolutePath());
                        }
                        ZipFile zipFile2 = null;
                        try {
                            ZipFile zipFile3 = new ZipFile(file);
                            try {
                                ArrayList arrayList = new ArrayList();
                                z = false;
                                try {
                                    File file2 = new File(com.bytedance.pangle.d.c.i(str, i));
                                    com.bytedance.pangle.e.g.a(file2);
                                    j = currentTimeMillis;
                                    int i4 = 1;
                                    while (true) {
                                        try {
                                            StringBuilder sb3 = new StringBuilder(str4);
                                            sb3.append(i4 == i3 ? "" : Integer.valueOf(i4));
                                            sb3.append(str3);
                                            ZipEntry entry = zipFile3.getEntry(sb3.toString());
                                            if (entry == null) {
                                                ZipFile zipFile4 = zipFile3;
                                                file.getName();
                                                SharedPreferences.Editor edit = com.bytedance.pangle.e.g.a().edit();
                                                edit.putInt((str + "-" + i) + ".dex.number", arrayList.size());
                                                edit.commit();
                                                g.a(zipFile4);
                                                com.bytedance.pangle.e.b.a(Zeus.getAppApplication()).edit().putInt(str, i).apply();
                                                f.a();
                                                break;
                                            }
                                            StringBuilder sb4 = new StringBuilder();
                                            sb4.append(str4);
                                            sb4.append(i4 == 1 ? "" : Integer.valueOf(i4));
                                            sb4.append(str3);
                                            g.a aVar = new g.a(file2, sb4.toString());
                                            String str6 = str3;
                                            int i5 = 0;
                                            boolean z2 = false;
                                            while (i5 < 3 && !z2) {
                                                try {
                                                    com.bytedance.pangle.e.g.a(zipFile3, entry, aVar, str4);
                                                    i2 = i5;
                                                    str2 = str4;
                                                    z2 = true;
                                                } catch (IOException e2) {
                                                    i2 = i5;
                                                    str2 = str4;
                                                    ZeusLogger.w(ZeusLogger.TAG_INSTALL, "Plugin-MultiDex Failed to extract entry from " + aVar.getAbsolutePath(), e2);
                                                } catch (Throwable th) {
                                                    th = th;
                                                    zipFile2 = zipFile3;
                                                    com.bytedance.pangle.util.g.a(zipFile2);
                                                    throw th;
                                                }
                                                i5 = i2 + 1;
                                                StringBuilder sb5 = new StringBuilder("Plugin-MultiDex Extraction ");
                                                sb5.append(z2 ? "succeeded" : "failed");
                                                sb5.append(" '");
                                                sb5.append(aVar.getAbsolutePath());
                                                sb5.append("': length ");
                                                zipFile = zipFile3;
                                                try {
                                                    sb5.append(aVar.length());
                                                    ZeusLogger.i(ZeusLogger.TAG_INSTALL, sb5.toString());
                                                    if (!z2) {
                                                        aVar.delete();
                                                        if (aVar.exists()) {
                                                            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "Plugin-MultiDex Failed to delete corrupted secondary dex '" + aVar.getPath() + "'");
                                                        }
                                                    }
                                                    zipFile3 = zipFile;
                                                    str4 = str2;
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    zipFile2 = zipFile;
                                                    com.bytedance.pangle.util.g.a(zipFile2);
                                                    throw th;
                                                }
                                            }
                                            String str7 = str4;
                                            ZipFile zipFile5 = zipFile3;
                                            if (!z2) {
                                                throw new IOException("Could not create zip file " + aVar.getAbsolutePath() + " for secondary dex (" + i4 + ")");
                                            }
                                            arrayList.add(aVar);
                                            i4++;
                                            zipFile3 = zipFile5;
                                            str3 = str6;
                                            str4 = str7;
                                            i3 = 1;
                                        } catch (Throwable th3) {
                                            th = th3;
                                            zipFile = zipFile3;
                                            zipFile2 = zipFile;
                                            com.bytedance.pangle.util.g.a(zipFile2);
                                            throw th;
                                        }
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                zipFile = zipFile3;
                            }
                        } catch (Throwable th6) {
                            th = th6;
                        }
                    }
                    stringBuffer.append("dexOpt1 cost:");
                    stringBuffer.append(System.currentTimeMillis() - j);
                    stringBuffer.append(";");
                    return z;
                } catch (Exception e3) {
                    e = e3;
                    Exception exc = e;
                    a(com.bytedance.pangle.c.b.f1315f, b.a.z, str, i, -1L, null);
                    throw new a("dexOpt1失败", exc, (byte) 0);
                }
            } catch (Throwable th7) {
                th = th7;
                stringBuffer.append("dexOpt1 cost:");
                stringBuffer.append(System.currentTimeMillis() - currentTimeMillis);
                stringBuffer.append(";");
                throw th;
            }
        } catch (Exception e4) {
            e = e4;
        } catch (Throwable th8) {
            th = th8;
            stringBuffer.append("dexOpt1 cost:");
            stringBuffer.append(System.currentTimeMillis() - currentTimeMillis);
            stringBuffer.append(";");
            throw th;
        }
    }
}

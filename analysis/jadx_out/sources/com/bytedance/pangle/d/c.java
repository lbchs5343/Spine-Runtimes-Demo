package com.bytedance.pangle.d;

import android.app.Application;
import android.os.Environment;
import android.text.TextUtils;
import com.bytedance.pangle.GlobalParam;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.h;
import com.bytedance.pangle.util.i;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.awf;
import java.io.File;
import java.io.FileFilter;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private static File f1332a;

    /* renamed from: b, reason: collision with root package name */
    private static File f1333b;

    /* renamed from: c, reason: collision with root package name */
    private static File f1334c;

    public static String a() {
        Application appApplication = Zeus.getAppApplication();
        if (f1333b == null) {
            File downloadDir = GlobalParam.getInstance().getDownloadDir();
            if (downloadDir == null) {
                downloadDir = new File(appApplication.getFilesDir(), ".pangle" + h.f1461b);
            }
            f1333b = downloadDir;
        }
        return a(f1333b);
    }

    private static String a(File file) {
        if (file == null) {
            return null;
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getPath();
    }

    public static String a(String str) {
        return a(str);
    }

    public static String a(String str, int i) {
        d();
        File file = f1332a;
        String[] strArr = {str, "version-".concat(String.valueOf(i))};
        for (int i2 = 0; i2 < 2; i2++) {
            String str2 = strArr[i2];
            if (!TextUtils.isEmpty(str2)) {
                file = new File(file, str2);
            }
        }
        if (file != null) {
            return file.getPath();
        }
        return null;
    }

    public static String a(String str, int i, String str2) {
        return new File(a(str, "version-".concat(String.valueOf(i)), "dex"), str2).getPath();
    }

    private static String a(String... strArr) {
        d();
        File file = f1332a;
        if (strArr.length > 0) {
            for (String str : strArr) {
                if (!TextUtils.isEmpty(str)) {
                    file = new File(file, str);
                }
            }
        }
        return a(file);
    }

    public static String b() {
        Application appApplication = Zeus.getAppApplication();
        if (f1334c == null) {
            f1334c = new File(appApplication.getFilesDir(), ".pangle" + h.f1460a);
        }
        return a(f1334c);
    }

    public static String b(String str, int i) {
        return new File(a(str, "version-".concat(String.valueOf(i)), "apk"), "base-1.apk").getPath();
    }

    public static String c() {
        Application appApplication = Zeus.getAppApplication();
        try {
            if (!"mounted".equals(Environment.getExternalStorageState())) {
                return null;
            }
            File externalFilesDir = appApplication.getExternalFilesDir(".pangle" + h.f1461b);
            if (externalFilesDir != null) {
                return a(externalFilesDir);
            }
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static String c(String str, int i) {
        return i.i() ? a(str, "version-".concat(String.valueOf(i)), "apk", "oat", com.bytedance.pangle.e.b.a()) : a(str, "version-".concat(String.valueOf(i)), "dalvik-cache");
    }

    public static String d(String str, int i) {
        return a(str, "version-".concat(String.valueOf(i)), "lib");
    }

    private static void d() {
        if (f1332a == null) {
            File file = new File(Zeus.getAppApplication().getFilesDir(), MediationConstant.ADN_PANGLE + h.f1462c);
            f1332a = file;
            a(file);
        }
    }

    public static String e(String str, int i) {
        return new File(a(str, "version-".concat(String.valueOf(i)), "apk", "temp"), "base-1.apk").getPath();
    }

    public static String f(String str, int i) {
        return new File(a(str, "version-".concat(String.valueOf(i)), "apk")).getPath();
    }

    public static String g(String str, int i) {
        return new File(a(str, "version-".concat(String.valueOf(i)), "apk", "temp")).getPath();
    }

    public static String h(String str, int i) {
        return i.i() ? a(str, "version-".concat(String.valueOf(i)), "apk", "temp", "oat", com.bytedance.pangle.e.b.a()) : a(str, "version-".concat(String.valueOf(i)), "dalvik-cache");
    }

    public static String i(String str, int i) {
        return a(str, "version-".concat(String.valueOf(i)), "secondary-dexes");
    }

    public static boolean j(String str, int i) {
        StringBuilder sb = new StringBuilder();
        d();
        sb.append(f1332a.getPath());
        String str2 = File.separator;
        awf.y(sb, str2, str, str2, "version-");
        sb.append(i);
        return new File(sb.toString()).exists();
    }

    public static File[] k(String str, int i) {
        String a2 = a(str, "version-".concat(String.valueOf(i)), "dex");
        if (TextUtils.isEmpty(a2)) {
            return null;
        }
        return new File(a2).listFiles(new FileFilter() { // from class: com.bytedance.pangle.d.c.1
            @Override // java.io.FileFilter
            public final boolean accept(File file) {
                return file.isFile() && file.getName().endsWith(".dex");
            }
        });
    }

    public static String l(String str, int i) {
        return new File(a(str, "version-".concat(String.valueOf(i)), "config"), "config.json").getPath();
    }
}

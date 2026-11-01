package com.bytedance.sdk.openadsdk.api.plugin;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.File;
import java.io.FileFilter;

/* loaded from: classes.dex */
public final class d {
    public static SharedPreferences d(Context context, String str, int i) {
        return i == 0 ? context.getSharedPreferences(dq(str), i) : context.getSharedPreferences(str, i);
    }

    public static File d(Context context) {
        return dq(new File(context.getCacheDir(), "pangle_com.byted.pangle"));
    }

    public static File dq(Context context) {
        return dq(new File(context.getFilesDir(), "pangle_com.byted.pangle"));
    }

    public static File dq(Context context, String str) {
        return dq(new File(context.getExternalFilesDir(str), "pangle_com.byted.pangle"));
    }

    public static File dq(Context context, String str, int i) {
        return i == 0 ? dq(new File(context.getDir(str, i), "pangle_com.byted.pangle")) : context.getDir(str, i);
    }

    private static File dq(File file) {
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    private static String dq(String str) {
        return "pangle_com.byted.pangle_".concat(String.valueOf(str));
    }

    public static File ox(Context context) {
        return dq(new File(context.getExternalCacheDir(), "pangle_com.byted.pangle"));
    }

    public static boolean p(Context context) {
        File[] listFiles;
        File file = new File(context.getFilesDir(), "/pangle_p/com.byted.pangle");
        return (!file.exists() || (listFiles = file.listFiles(new FileFilter() { // from class: com.bytedance.sdk.openadsdk.api.plugin.d.1
            @Override // java.io.FileFilter
            public boolean accept(File file2) {
                return file2 != null && file2.getName().matches("^version-(\\d+)$");
            }
        })) == null || listFiles.length == 0) ? false : true;
    }
}

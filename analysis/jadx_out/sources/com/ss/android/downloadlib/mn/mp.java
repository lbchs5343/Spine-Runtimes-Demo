package com.ss.android.downloadlib.mn;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Environment;
import android.os.Looper;
import android.os.StatFs;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.ss.android.download.api.config.jy;
import com.ss.android.download.api.constant.BaseConstants;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import g.awf;
import g.tn;
import java.io.File;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class mp {

    /* renamed from: d, reason: collision with root package name */
    private static Object[] f9242d = new Object[0];
    private static Object[] ox = new Object[73];
    static final char[] dq = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static String p = null;

    public static int d(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return -1;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            if (packageInfo != null) {
                return packageInfo.versionCode;
            }
            return -1;
        } catch (PackageManager.NameNotFoundException unused) {
            return -1;
        }
    }

    public static long d(long j) {
        try {
            return dq(Environment.getExternalStorageDirectory(), j);
        } catch (Exception e2) {
            e2.printStackTrace();
            return j;
        }
    }

    public static HashMap<String, String> d(JSONObject jSONObject) {
        HashMap<String, String> hashMap = new HashMap<>();
        if (jSONObject != null) {
            try {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap.put(next, jSONObject.optString(next));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return hashMap;
    }

    public static boolean d() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static boolean d(Context context, Intent intent) {
        if (intent == null) {
            return false;
        }
        if (context == null) {
            context = com.ss.android.downloadlib.addownload.no.getContext();
        }
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 65536);
        return queryIntentActivities != null && queryIntentActivities.size() > 0;
    }

    public static boolean d(com.ss.android.downloadad.api.dq.d dVar) {
        if (dVar == null) {
            return false;
        }
        return dq(dVar.s(), dVar.ce(), dVar.er()).dq();
    }

    public static boolean d(String str) {
        return !TextUtils.isEmpty(str) && new File(str).exists();
    }

    public static int dq(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int dq(String str, String str2) {
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                if (str.equals(str2)) {
                    return 0;
                }
                String[] split = str.split("\\.");
                String[] split2 = str2.split("\\.");
                int min = Math.min(split.length, split2.length);
                int i = 0;
                int i2 = 0;
                while (i < min) {
                    i2 = Integer.parseInt(split[i]) - Integer.parseInt(split2[i]);
                    if (i2 != 0) {
                        break;
                    }
                    i++;
                }
                if (i2 != 0) {
                    return i2 > 0 ? 1 : -1;
                }
                for (int i3 = i; i3 < split.length; i3++) {
                    if (Integer.parseInt(split[i3]) > 0) {
                        return 1;
                    }
                }
                while (i < split2.length) {
                    if (Integer.parseInt(split2[i]) > 0) {
                        return -1;
                    }
                    i++;
                }
                return 0;
            }
        } catch (Exception unused) {
        }
        return -2;
    }

    public static long dq(File file) {
        if (file == null) {
            return -1L;
        }
        try {
            return new StatFs(file.getAbsolutePath()).getTotalBytes();
        } catch (Throwable th) {
            th.printStackTrace();
            return -1L;
        }
    }

    public static long dq(File file, long j) {
        if (file == null) {
            return j;
        }
        try {
            return com.ss.android.socialbase.downloader.kk.iw.p(file.getAbsolutePath());
        } catch (Exception e2) {
            e2.printStackTrace();
            return j;
        }
    }

    public static long dq(JSONObject jSONObject, String str) {
        return com.ss.android.download.api.ox.d.dq(jSONObject, str);
    }

    public static PackageInfo dq(com.ss.android.downloadad.api.dq.d dVar) {
        DownloadInfo downloadInfo;
        if (dVar == null || (downloadInfo = Downloader.getInstance(com.ss.android.downloadlib.addownload.no.getContext()).getDownloadInfo(dVar.gh())) == null) {
            return null;
        }
        try {
            return com.ss.android.socialbase.appdownloader.ox.dq(com.ss.android.downloadlib.addownload.no.getContext(), downloadInfo, downloadInfo.getSavePath(), downloadInfo.getName());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Drawable dq(Context context, String str) {
        PackageManager packageManager;
        PackageInfo packageArchiveInfo;
        if (context != null && !TextUtils.isEmpty(str) && (packageArchiveInfo = (packageManager = context.getPackageManager()).getPackageArchiveInfo(str, 0)) != null) {
            ApplicationInfo applicationInfo = packageArchiveInfo.applicationInfo;
            applicationInfo.sourceDir = str;
            applicationInfo.publicSourceDir = str;
            try {
                return applicationInfo.loadIcon(packageManager);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public static com.ss.android.downloadlib.addownload.d.ox dq(String str, int i, String str2) {
        com.ss.android.downloadlib.addownload.d.ox oxVar = new com.ss.android.downloadlib.addownload.d.ox();
        if (!TextUtils.isEmpty(str)) {
            try {
                PackageInfo packageInfo = com.ss.android.downloadlib.addownload.no.getContext().getPackageManager().getPackageInfo(str, 0);
                if (packageInfo != null) {
                    oxVar.d(packageInfo.versionCode);
                    oxVar.dq(com.ss.android.downloadlib.addownload.d.ox.f9149d);
                    jy mn = com.ss.android.downloadlib.addownload.no.mn();
                    if (mn != null && mn.dq() && !dq(packageInfo.versionCode, i, packageInfo.versionName, str2)) {
                        oxVar.dq(com.ss.android.downloadlib.addownload.d.ox.ox);
                        return oxVar;
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                return oxVar;
            }
        }
        return oxVar;
    }

    public static <T> T dq(T... tArr) {
        if (tArr == null) {
            throw new IllegalArgumentException("args is null");
        }
        for (T t : tArr) {
            if (t != null) {
                return t;
            }
        }
        throw new IllegalArgumentException("args is null");
    }

    public static String dq(long j) {
        DecimalFormat decimalFormat = new DecimalFormat("0.00");
        if (j >= 1073741824) {
            return tn.f(j / 1073741824, "G", new StringBuilder());
        }
        if (j >= BaseConstants.MB_VALUE) {
            return tn.f(j / BaseConstants.MB_VALUE, "M", new StringBuilder());
        }
        return decimalFormat.format(j / 1048576.0f) + "M";
    }

    public static String dq(String str, int i) {
        return i == 0 ? "" : (TextUtils.isEmpty(str) || str.length() <= i) ? str : str.substring(0, i);
    }

    public static String dq(String... strArr) {
        return com.ss.android.download.api.ox.d.dq(strArr);
    }

    public static JSONObject dq(JSONObject jSONObject) {
        return com.ss.android.download.api.ox.d.dq(jSONObject);
    }

    public static JSONObject dq(JSONObject jSONObject, JSONObject jSONObject2) {
        return com.ss.android.download.api.ox.d.dq(jSONObject, jSONObject2);
    }

    public static JSONObject dq(JSONObject... jSONObjectArr) {
        return com.ss.android.download.api.ox.d.dq(jSONObjectArr);
    }

    public static void dq(JSONObject jSONObject, String str, Object obj) {
        if (jSONObject == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            jSONObject.putOpt(str, obj);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public static boolean dq() {
        try {
            if (com.ss.android.downloadlib.addownload.no.getContext().getPackageManager().getPackageInfo(com.ss.android.downloadlib.addownload.no.getContext().getPackageName(), 0).applicationInfo.targetSdkVersion == 33) {
                if (Build.VERSION.SDK_INT == 33) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private static boolean dq(int i, int i2, String str, String str2) {
        if (i2 == 0 && TextUtils.isEmpty(str2)) {
            return true;
        }
        return (i2 > 0 && i >= i2) || dq(str, str2) >= 0;
    }

    public static boolean dq(Context context, Intent intent) {
        try {
            List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 65536);
            if (queryIntentActivities != null) {
                if (!queryIntentActivities.isEmpty()) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean dq(Context context, String str, String str2) {
        PackageInfo packageArchiveInfo;
        PackageInfo packageInfo;
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        try {
            File file = new File(str);
            if (!file.exists() || (packageArchiveInfo = context.getPackageManager().getPackageArchiveInfo(file.getAbsolutePath(), 0)) == null || !packageArchiveInfo.packageName.equals(str2)) {
                return false;
            }
            int i = packageArchiveInfo.versionCode;
            try {
                packageInfo = context.getPackageManager().getPackageInfo(str2, 0);
            } catch (PackageManager.NameNotFoundException unused) {
                packageInfo = null;
            }
            if (packageInfo == null) {
                return false;
            }
            return i == packageInfo.versionCode;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static boolean dq(DownloadModel downloadModel) {
        if (downloadModel == null) {
            return false;
        }
        return dq(downloadModel.getPackageName(), downloadModel.getVersionCode(), downloadModel.getVersionName()).dq();
    }

    public static boolean dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return new File(str).exists();
    }

    public static boolean dq(Signature[] signatureArr, Signature[] signatureArr2) {
        if (signatureArr == signatureArr2) {
            return true;
        }
        if (signatureArr == null || signatureArr2 == null || signatureArr.length != signatureArr2.length) {
            return false;
        }
        for (int i = 0; i < signatureArr.length; i++) {
            Signature signature = signatureArr[i];
            if ((signature == null && signatureArr2[i] != null) || (signature != null && !signature.equals(signatureArr2[i]))) {
                return false;
            }
        }
        return true;
    }

    public static Signature[] ia(Context context, String str) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 64);
            if (packageInfo != null) {
                return packageInfo.signatures;
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static boolean iw(Context context, String str) {
        PackageInfo packageArchiveInfo;
        PackageInfo packageInfo;
        if (context == null || str == null || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            File file = new File(str);
            if (!file.exists() || (packageArchiveInfo = context.getPackageManager().getPackageArchiveInfo(file.getAbsolutePath(), 0)) == null) {
                return false;
            }
            String str2 = packageArchiveInfo.packageName;
            int i = packageArchiveInfo.versionCode;
            try {
                packageInfo = context.getPackageManager().getPackageInfo(str2, 0);
            } catch (PackageManager.NameNotFoundException unused) {
                packageInfo = null;
            }
            if (packageInfo == null) {
                return false;
            }
            return i <= packageInfo.versionCode;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static Signature[] kk(Context context, String str) {
        try {
            PackageInfo packageArchiveInfo = context.getPackageManager().getPackageArchiveInfo(str, 64);
            if (packageArchiveInfo != null) {
                return packageArchiveInfo.signatures;
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static Intent mn(Context context, String str) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null) {
            return null;
        }
        if (!launchIntentForPackage.hasCategory("android.intent.category.LAUNCHER")) {
            launchIntentForPackage.addCategory("android.intent.category.LAUNCHER");
        }
        launchIntentForPackage.setPackage(null);
        launchIntentForPackage.addFlags(2097152);
        launchIntentForPackage.addFlags(C.ENCODING_PCM_MU_LAW);
        return launchIntentForPackage;
    }

    public static File o(Context context, String str) {
        File parentFile = context.getExternalFilesDir(null).getParentFile();
        File file = new File(awf.ad(awf.o(parentFile != null ? parentFile.getParent() : null), File.separator, str));
        com.ss.android.socialbase.downloader.ox.dq.d("ToolUtils", "getExtDir: file.toString()-->" + file.toString());
        return file;
    }

    public static String ox(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            return packageInfo != null ? packageInfo.versionName : "";
        } catch (PackageManager.NameNotFoundException unused) {
            return "";
        }
    }

    @SuppressLint({"MissingPermission"})
    public static void ox() {
        ComponentName componentName;
        try {
            if (com.ss.android.downloadlib.addownload.no.s().dq(com.ss.android.downloadlib.addownload.no.getContext(), "android.permission.REORDER_TASKS")) {
                ActivityManager activityManager = (ActivityManager) com.ss.android.downloadlib.addownload.no.getContext().getSystemService(TTDownloadField.TT_ACTIVITY);
                for (ActivityManager.RunningTaskInfo runningTaskInfo : activityManager.getRunningTasks(20)) {
                    String packageName = com.ss.android.downloadlib.addownload.no.getContext().getPackageName();
                    componentName = runningTaskInfo.topActivity;
                    if (packageName.equals(componentName.getPackageName())) {
                        activityManager.moveTaskToFront(runningTaskInfo.id, 1);
                        return;
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0034, code lost:
    
        if (r3 != false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0036, code lost:
    
        if (r1 > 29) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean ox(String str) {
        boolean isExternalStorageLegacy;
        Context context = com.ss.android.downloadlib.addownload.no.getContext();
        if (!TextUtils.isEmpty(str) && s(context, str)) {
            int i = context.getApplicationInfo().targetSdkVersion;
            if (com.ss.android.downloadlib.addownload.no.kk().optInt("get_ext_dir_mode") == 0 && Build.VERSION.SDK_INT >= 29) {
                if (i == 29) {
                    isExternalStorageLegacy = Environment.isExternalStorageLegacy();
                }
            }
            try {
                File file = (Build.VERSION.SDK_INT < 29 || context.getApplicationInfo().targetSdkVersion < 29 || com.ss.android.downloadlib.addownload.no.kk().optInt("get_ext_dir_mode") != 1) ? new File(Environment.getExternalStorageDirectory().getPath(), "android/data/".concat(String.valueOf(str))) : o(context, str);
                if (file.exists()) {
                    long dq2 = mn.dq(file);
                    PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
                    if (packageInfo != null) {
                        if (packageInfo.lastUpdateTime < dq2) {
                            return true;
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                return true;
            }
        }
        return false;
    }

    public static Drawable p(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            return packageManager.getApplicationInfo(str, 0).loadIcon(packageManager);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static boolean s(Context context, String str) {
        if (context == null) {
            context = com.ss.android.downloadlib.addownload.no.getContext();
        }
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                if (context.getPackageManager().getPackageInfo(str, 0) != null) {
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }
}

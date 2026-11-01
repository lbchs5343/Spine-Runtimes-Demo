package com.ss.android.socialbase.appdownloader;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.content.FileProvider;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.ss.android.download.api.constant.BaseConstants;
import com.ss.android.socialbase.appdownloader.ox.o;
import com.ss.android.socialbase.downloader.constants.DownloadStatus;
import com.ss.android.socialbase.downloader.depend.IDownloadFileUriProvider;
import com.ss.android.socialbase.downloader.depend.kx;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import g.ahq;
import g.awf;
import g.cch;
import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private static NotificationChannel f9290d;
    private static int dq;

    public static int d(final Context context, final int i, final boolean z) {
        final DownloadInfo downloadInfo = Downloader.getInstance(context).getDownloadInfo(i);
        if (downloadInfo != null && "application/vnd.android.package-archive".equals(downloadInfo.getMimeType()) && !TextUtils.isEmpty(downloadInfo.getSavePath()) && !TextUtils.isEmpty(downloadInfo.getName())) {
            final File file = new File(downloadInfo.getSavePath(), downloadInfo.getName());
            if (file.exists()) {
                com.ss.android.socialbase.downloader.downloader.ox.d(new Runnable() { // from class: com.ss.android.socialbase.appdownloader.ox.2
                    @Override // java.lang.Runnable
                    public void run() {
                        p.o().no();
                        int dq2 = ox.dq(context, i, z, downloadInfo, file);
                        if (dq2 == 1 && p.o().fw() != null) {
                            p.o().fw().dq(downloadInfo, null);
                        }
                        ox.d(downloadInfo, z, dq2);
                    }
                });
                return 1;
            }
        }
        d(downloadInfo, z, 2);
        return 2;
    }

    public static int d(Context context, DownloadInfo downloadInfo) {
        if (context != null && downloadInfo != null && !TextUtils.isEmpty(downloadInfo.getSavePath()) && !TextUtils.isEmpty(downloadInfo.getName())) {
            int appVersionCode = downloadInfo.getAppVersionCode();
            if (appVersionCode > 0) {
                return appVersionCode;
            }
            try {
                PackageInfo dq2 = dq(context, downloadInfo, downloadInfo.getSavePath(), downloadInfo.getName());
                if (dq2 != null) {
                    int i = dq2.versionCode;
                    downloadInfo.setAppVersionCode(i);
                    return i;
                }
            } catch (Throwable unused) {
            }
        }
        return 0;
    }

    public static String d() {
        return com.ss.android.socialbase.downloader.kk.iw.s();
    }

    public static String d(long j) {
        long[] jArr = {1099511627776L, 1073741824, BaseConstants.MB_VALUE, 1024, 1};
        String[] strArr = {"TB", "GB", "MB", "KB", "B"};
        if (j < 1) {
            return "0 " + strArr[4];
        }
        for (int i = 0; i < 5; i++) {
            long j2 = jArr[i];
            if (j >= j2) {
                return dq(j, j2, strArr[i]);
            }
        }
        return null;
    }

    @TargetApi(26)
    public static String d(Context context) {
        try {
            if (f9290d != null) {
                return "111111";
            }
            cch.s();
            NotificationChannel j = ahq.j();
            f9290d = j;
            j.setSound(null, null);
            f9290d.setShowBadge(false);
            ((NotificationManager) context.getSystemService("notification")).createNotificationChannel(f9290d);
            return "111111";
        } catch (Throwable th) {
            th.printStackTrace();
            return "111111";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(DownloadInfo downloadInfo, boolean z, int i) {
        if (downloadInfo == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("by_user", z ? 1 : 2);
            jSONObject.put("view_result", i);
            jSONObject.put("real_package_name", downloadInfo.getFilePackageName());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        com.ss.android.socialbase.downloader.downloader.ox.t().dq(downloadInfo.getId(), "install_view_result", jSONObject);
    }

    public static boolean d(Context context, DownloadInfo downloadInfo, PackageInfo packageInfo) {
        return dq(context, downloadInfo, packageInfo, false);
    }

    public static boolean d(String str) {
        JSONObject jSONObject;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            jSONObject = new JSONObject(str);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        if (!jSONObject.optBoolean("bind_app", false)) {
            if (jSONObject.optBoolean("auto_install_with_notification", true)) {
                return false;
            }
        }
        return true;
    }

    public static int dq() {
        return p.o().iw() ? 16384 : 0;
    }

    public static int dq(int i) {
        if (i == 0) {
            return 0;
        }
        if (i == -2) {
            return 2;
        }
        if (i == 1) {
            return 4;
        }
        if (DownloadStatus.isDownloading(i) || i == 11) {
            return 1;
        }
        return DownloadStatus.isDownloadOver(i) ? 3 : 0;
    }

    public static int dq(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int dq(final Context context, final int i, final boolean z) {
        o mn = p.o().mn();
        if (mn == null) {
            return p(context, i, z);
        }
        DownloadInfo downloadInfo = Downloader.getInstance(context).getDownloadInfo(i);
        dq = 1;
        mn.dq(downloadInfo, new com.ss.android.socialbase.appdownloader.ox.kk() { // from class: com.ss.android.socialbase.appdownloader.ox.1
            @Override // com.ss.android.socialbase.appdownloader.ox.kk
            public void dq() {
                int unused = ox.dq = ox.p(context, i, z);
            }
        });
        return dq;
    }

    public static int dq(Context context, int i, boolean z, DownloadInfo downloadInfo, File file) {
        Process process;
        PackageInfo packageInfo;
        Intent dq2;
        if (file.getPath().startsWith(Environment.getDataDirectory().getAbsolutePath())) {
            try {
                process = Runtime.getRuntime().exec("chmod 555 " + file.getAbsolutePath());
                try {
                    process.waitFor();
                } catch (Throwable th) {
                    th = th;
                    try {
                        th.printStackTrace();
                    } finally {
                        if (process != null) {
                            process.destroy();
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                process = null;
            }
        }
        try {
            packageInfo = dq(downloadInfo, file);
            if (packageInfo != null) {
                try {
                    downloadInfo.setFilePackageName(packageInfo.packageName);
                } catch (Throwable th3) {
                    th = th3;
                }
            }
            th = null;
        } catch (Throwable th4) {
            th = th4;
            packageInfo = null;
        }
        if (p.o().ox() != null) {
            if (packageInfo == null) {
                BaseException baseException = new BaseException(2001, th);
                p.o().ox().dq(downloadInfo, baseException, baseException.getErrorCode());
            } else {
                p.o().ox().dq(downloadInfo, null, 11);
            }
        }
        if (dq(context, downloadInfo, packageInfo)) {
            return 2;
        }
        if (packageInfo != null && com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).dq("install_callback_error")) {
            downloadInfo.getTempCacheData().put("extra_apk_package_name", packageInfo.packageName);
            downloadInfo.getTempCacheData().put("extra_apk_version_code", Integer.valueOf(packageInfo.versionCode));
        }
        int[] iArr = new int[1];
        if (d(context, downloadInfo, packageInfo)) {
            dq2 = context.getPackageManager().getLaunchIntentForPackage(packageInfo.packageName);
        } else {
            if (!z && dq(context, i, file)) {
                downloadInfo.getTempCacheData().put("extra_silent_install_succeed", Boolean.TRUE);
                return 1;
            }
            dq2 = dq(context, downloadInfo, file, z, iArr);
        }
        if (dq2 == null) {
            return iArr[0] == 1 ? 2 : 0;
        }
        dq2.addFlags(C.ENCODING_PCM_MU_LAW);
        if (downloadInfo.getLinkMode() > 0 && com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).dq("app_install_return_result", 0) == 1) {
            dq2.putExtra("android.intent.extra.RETURN_RESULT", true);
        }
        if (iArr[0] == 0 && d.dq(context, downloadInfo, dq2, z)) {
            return 1;
        }
        return dq(context, dq2);
    }

    public static int dq(Context context, Intent intent) {
        try {
            if (p.o().f() != null) {
                if (p.o().f().dq(intent)) {
                    return 1;
                }
            }
        } catch (Throwable unused) {
        }
        try {
            context.startActivity(intent);
            return 1;
        } catch (Throwable unused2) {
            return 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static Intent dq(Context context, DownloadInfo downloadInfo, File file, boolean z, int[] iArr) {
        Uri dq2 = dq(downloadInfo.getId(), Downloader.getInstance(context).getDownloadFileUriProvider(downloadInfo.getId()), context, p.o().p(), file);
        if (dq2 == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        if (Build.VERSION.SDK_INT >= 24) {
            intent.addFlags(1);
        }
        intent.setDataAndType(dq2, "application/vnd.android.package-archive");
        com.ss.android.socialbase.appdownloader.ox.p d2 = p.o().d();
        int dq3 = d2 != null ? d2.dq(downloadInfo.getId(), z) : 0;
        kx downloadNotificationEventListener = Downloader.getInstance(context).getDownloadNotificationEventListener(downloadInfo.getId());
        int i = dq3;
        if (downloadNotificationEventListener != null) {
            i = downloadNotificationEventListener.dq(z);
        }
        iArr[0] = i;
        if (i != 0) {
            return null;
        }
        return intent;
    }

    public static PackageInfo dq(Context context, DownloadInfo downloadInfo, String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        File file = new File(str, str2);
        if (!file.exists()) {
            return null;
        }
        Log.e("AppDownloadUtils", "isApkInstalled apkFileSize：fileName:" + file.getPath() + " apkFileSize" + file.length());
        return dq(downloadInfo, file);
    }

    public static PackageInfo dq(DownloadInfo downloadInfo, File file) {
        if (downloadInfo == null) {
            return com.ss.android.socialbase.appdownloader.iw.dq.s.dq(com.ss.android.socialbase.downloader.downloader.ox.ob(), file, dq());
        }
        PackageInfo packageInfo = downloadInfo.getPackageInfo();
        if (packageInfo != null) {
            return packageInfo;
        }
        PackageInfo dq2 = com.ss.android.socialbase.appdownloader.iw.dq.s.dq(com.ss.android.socialbase.downloader.downloader.ox.ob(), file, dq());
        downloadInfo.setPackageInfo(dq2);
        return dq2;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0021 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Uri dq(int i, IDownloadFileUriProvider iDownloadFileUriProvider, Context context, String str, File file) {
        Uri uri;
        if (iDownloadFileUriProvider == null) {
            com.ss.android.socialbase.appdownloader.ox.iw s = p.o().s();
            if (s != null) {
                uri = s.dq(i, str, file.getAbsolutePath());
            }
            uri = null;
            if (uri == null) {
                try {
                    uri = (Build.VERSION.SDK_INT < 24 || TextUtils.isEmpty(str)) ? Uri.fromFile(file) : FileProvider.getUriForFile(context, str, file);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            return uri;
        }
        uri = iDownloadFileUriProvider.getUriForFile(str, file.getAbsolutePath());
        if (uri == null) {
        }
        return uri;
    }

    public static String dq(long j) {
        return dq(j, true);
    }

    private static String dq(long j, long j2, String str) {
        double d2 = j;
        if (j2 > 1) {
            d2 /= j2;
        }
        if ("MB".equals(str)) {
            return new DecimalFormat("#").format(d2) + str;
        }
        return new DecimalFormat("#.##").format(d2) + str;
    }

    private static String dq(long j, long j2, String str, boolean z) {
        double d2 = j;
        if (j2 > 1) {
            d2 /= j2;
        }
        if (z || "GB".equals(str) || "TB".equals(str)) {
            return new DecimalFormat("#.##").format(d2) + " " + str;
        }
        return new DecimalFormat("#").format(d2) + " " + str;
    }

    public static String dq(long j, boolean z) {
        long[] jArr = {1099511627776L, 1073741824, BaseConstants.MB_VALUE, 1024, 1};
        String[] strArr = {"TB", "GB", "MB", "KB", "B"};
        if (j < 1) {
            return "0 " + strArr[4];
        }
        for (int i = 0; i < 5; i++) {
            long j2 = jArr[i];
            if (j >= j2) {
                return dq(j, j2, strArr[i], z);
            }
        }
        return null;
    }

    public static String dq(String str, com.ss.android.socialbase.downloader.mn.dq dqVar) {
        JSONObject p;
        if (dqVar == null || (p = dqVar.p("download_dir")) == null) {
            return "";
        }
        String optString = p.optString("dir_name");
        if (!TextUtils.isEmpty(optString) && optString.startsWith("/")) {
            optString = optString.substring(1);
        }
        if (TextUtils.isEmpty(optString)) {
            return optString;
        }
        if (optString.contains("%s")) {
            try {
                optString = String.format(optString, str);
            } catch (Throwable unused) {
            }
        } else {
            optString = awf.c(optString, str);
        }
        return optString.length() > 255 ? optString.substring(optString.length() - MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) : optString;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0056, code lost:
    
        if (android.text.TextUtils.isEmpty(r4) == false) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String dq(String str, String str2, String str3, boolean z) {
        String str4 = "";
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        Uri parse = Uri.parse(str);
        if (z) {
            if (TextUtils.isEmpty(str2)) {
                if (!TextUtils.isEmpty(parse.getLastPathSegment()) && !parse.getLastPathSegment().contains("..")) {
                    str2 = parse.getLastPathSegment();
                }
                str2 = "default.apk";
            }
            return (ox(str3) || str2.endsWith(".apk")) ? str2 : str2.concat(".apk");
        }
        if (!TextUtils.isEmpty(parse.getLastPathSegment()) && !parse.getLastPathSegment().contains("..")) {
            str4 = parse.getLastPathSegment();
        }
        if (!TextUtils.isEmpty(str4)) {
            str2 = str4;
        }
        if (ox(str3)) {
        }
    }

    public static void dq(Activity activity) {
        if (activity != null) {
            try {
                if (activity.isFinishing()) {
                    return;
                }
                activity.finish();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static void dq(DownloadInfo downloadInfo, boolean z, boolean z2) {
        p.o().dq(new iw(com.ss.android.socialbase.downloader.downloader.ox.ob(), downloadInfo.getUrl()).dq(downloadInfo.getTitle()).d(downloadInfo.getName()).ox(downloadInfo.getSavePath()).dq(downloadInfo.isShowNotification()).d(downloadInfo.isAutoInstallWithoutNotification()).ox(downloadInfo.isOnlyWifi() || z2).s(downloadInfo.getExtra()).iw(downloadInfo.getMimeType()).dq(downloadInfo.getExtraHeaders()).s(true).d(downloadInfo.getRetryCount()).ox(downloadInfo.getBackUpUrlRetryCount()).d(downloadInfo.getBackUpUrls()).p(downloadInfo.getMinProgressTimeMsInterval()).s(downloadInfo.getMaxProgressCount()).iw(z).p(downloadInfo.isNeedHttpsToHttpRetry()).mn(downloadInfo.getPackageName()).ia(downloadInfo.getMd5()).dq(downloadInfo.getExpectFileLength()).kk(downloadInfo.isNeedDefaultHttpServiceBackUp()).o(downloadInfo.isNeedReuseFirstConnection()).ig(downloadInfo.isNeedIndependentProcess()).dq(downloadInfo.getEnqueueType()).q(downloadInfo.isForce()).mp(downloadInfo.isHeadConnectionAvailable()).mn(downloadInfo.isNeedRetryDelay()).kk(downloadInfo.getRetryDelayTimeArray()).dq(p(downloadInfo.getDownloadSettingString())).no(downloadInfo.getIconUrl()).iw(downloadInfo.getExecutorGroup()).f(downloadInfo.isAutoInstall()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0036, code lost:
    
        if (r4 == null) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean dq(Context context) {
        TypedArray typedArray;
        if (context == null) {
            return false;
        }
        try {
            int color = context.getResources().getColor(s.d());
            typedArray = context.obtainStyledAttributes(s.s(), new int[]{s.ox(), s.p()});
            try {
                if (color == typedArray.getColor(0, 0)) {
                    try {
                        typedArray.recycle();
                        return true;
                    } catch (Throwable unused) {
                        return true;
                    }
                }
            } catch (Throwable unused2) {
            }
        } catch (Throwable unused3) {
            typedArray = null;
        }
        try {
            typedArray.recycle();
        } catch (Throwable unused4) {
        }
        return false;
    }

    public static boolean dq(Context context, int i, File file) {
        if (com.ss.android.socialbase.downloader.mn.dq.dq(i).dq("back_miui_silent_install", 1) == 1) {
            return false;
        }
        if ((com.ss.android.socialbase.appdownloader.iw.s.mp() || com.ss.android.socialbase.appdownloader.iw.s.q()) && com.ss.android.socialbase.downloader.kk.o.dq(context, "com.miui.securitycore", "com.miui.enterprise.service.EntInstallService")) {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.miui.securitycore", "com.miui.enterprise.service.EntInstallService"));
            Bundle bundle = new Bundle();
            bundle.putInt("userId", 0);
            bundle.putInt("flag", 256);
            bundle.putString("apkPath", file.getPath());
            bundle.putString("installerPkg", "com.miui.securitycore");
            intent.putExtras(bundle);
            try {
                context.startService(intent);
                return true;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return false;
    }

    public static boolean dq(Context context, DownloadInfo downloadInfo) {
        return dq(context, downloadInfo, true);
    }

    public static boolean dq(Context context, DownloadInfo downloadInfo, PackageInfo packageInfo) {
        if (packageInfo == null || packageInfo.packageName.equals(downloadInfo.getPackageName())) {
            return false;
        }
        com.ss.android.socialbase.appdownloader.ox.p d2 = p.o().d();
        if (d2 != null) {
            d2.dq(downloadInfo.getId(), 8, downloadInfo.getPackageName(), packageInfo.packageName, "");
            if (d2.dq()) {
                return true;
            }
        }
        kx downloadNotificationEventListener = Downloader.getInstance(context).getDownloadNotificationEventListener(downloadInfo.getId());
        if (downloadNotificationEventListener == null) {
            return false;
        }
        downloadNotificationEventListener.dq(8, downloadInfo, packageInfo.packageName, "");
        com.ss.android.socialbase.appdownloader.ox.ox dq2 = p.o().dq();
        return (dq2 instanceof com.ss.android.socialbase.appdownloader.ox.dq) && ((com.ss.android.socialbase.appdownloader.ox.dq) dq2).d();
    }

    public static boolean dq(Context context, DownloadInfo downloadInfo, PackageInfo packageInfo, boolean z) {
        PackageInfo packageInfo2;
        if (packageInfo == null) {
            return false;
        }
        String str = packageInfo.packageName;
        int i = packageInfo.versionCode;
        if (downloadInfo != null) {
            downloadInfo.setAppVersionCode(i);
        }
        try {
            packageInfo2 = context.getPackageManager().getPackageInfo(str, dq());
        } catch (PackageManager.NameNotFoundException unused) {
            packageInfo2 = null;
        }
        if (packageInfo2 == null) {
            return false;
        }
        int i2 = packageInfo2.versionCode;
        return z ? i < i2 : (downloadInfo == null || com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).dq("install_with_same_version_code", 0) != 1) ? i <= i2 : i < i2;
    }

    public static boolean dq(Context context, DownloadInfo downloadInfo, String str) {
        if (context == null) {
            return false;
        }
        try {
            File file = new File(downloadInfo.getSavePath(), downloadInfo.getName());
            PackageInfo packageInfo = null;
            if (file.exists()) {
                Log.e("AppDownloadUtils", "isPackageNameEqualsWithApk fileName:" + downloadInfo.getName() + " apkFileSize：" + file.length() + " fileUrl：" + downloadInfo.getUrl());
                PackageInfo dq2 = dq(downloadInfo, file);
                if (dq2 == null || !dq2.packageName.equals(str)) {
                    return false;
                }
                int i = dq2.versionCode;
                try {
                    packageInfo = context.getPackageManager().getPackageInfo(str, dq());
                } catch (PackageManager.NameNotFoundException unused) {
                }
                if (packageInfo == null || i != packageInfo.versionCode) {
                    return false;
                }
            } else {
                if (!com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).dq("install_callback_error")) {
                    return false;
                }
                String dq3 = com.ss.android.socialbase.downloader.kk.iw.dq(downloadInfo.getTempCacheData().get("extra_apk_package_name"), (String) null);
                int dq4 = com.ss.android.socialbase.downloader.kk.iw.dq(downloadInfo.getTempCacheData().get("extra_apk_version_code"), 0);
                if (dq3 == null || TextUtils.isEmpty(dq3) || !dq3.equals(str)) {
                    return false;
                }
                try {
                    packageInfo = context.getPackageManager().getPackageInfo(str, dq());
                } catch (PackageManager.NameNotFoundException unused2) {
                }
                if (packageInfo == null || dq4 != packageInfo.versionCode) {
                    return false;
                }
            }
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static boolean dq(Context context, DownloadInfo downloadInfo, boolean z) {
        PackageInfo packageInfo;
        if (downloadInfo == null) {
            return false;
        }
        String packageName = downloadInfo.getPackageName();
        int appVersionCode = downloadInfo.getAppVersionCode();
        if (appVersionCode <= 0 && z) {
            return ox(context, downloadInfo);
        }
        try {
            packageInfo = context.getPackageManager().getPackageInfo(packageName, dq());
        } catch (PackageManager.NameNotFoundException unused) {
            packageInfo = null;
        }
        if (packageInfo == null) {
            return false;
        }
        return com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).dq("install_with_same_version_code", 0) == 1 ? appVersionCode < packageInfo.versionCode : appVersionCode <= packageInfo.versionCode;
    }

    public static boolean dq(DownloadInfo downloadInfo, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (TextUtils.isEmpty(downloadInfo.getPackageName()) || !str.equals(downloadInfo.getPackageName())) {
            return !TextUtils.isEmpty(downloadInfo.getName()) && dq(com.ss.android.socialbase.downloader.downloader.ox.ob(), downloadInfo, str);
        }
        return true;
    }

    public static boolean dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return new JSONObject(str).optBoolean("bind_app", false);
    }

    public static List<String> ox() {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add("application/vnd.android.package-archive");
        arrayList.add("application/ttpatch");
        return arrayList;
    }

    public static boolean ox(Context context, DownloadInfo downloadInfo) {
        if (context == null || downloadInfo == null || TextUtils.isEmpty(downloadInfo.getSavePath()) || TextUtils.isEmpty(downloadInfo.getName())) {
            return false;
        }
        return d(context, downloadInfo, dq(context, downloadInfo, downloadInfo.getSavePath(), downloadInfo.getName()));
    }

    public static boolean ox(String str) {
        return !TextUtils.isEmpty(str) && str.equals("application/vnd.android.package-archive");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int p(Context context, int i, boolean z) {
        if (com.ss.android.socialbase.downloader.mn.dq.dq(i).d("notification_opt_2") == 1) {
            com.ss.android.socialbase.downloader.notification.d.dq().iw(i);
        }
        dq((Activity) ia.dq().d());
        return com.ss.android.socialbase.downloader.mn.dq.dq(i).dq("install_queue_enable", 0) == 1 ? ia.dq().dq(context, i, z) : d(context, i, z);
    }

    private static JSONObject p(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new JSONObject(str);
        } catch (Throwable unused) {
            return null;
        }
    }
}

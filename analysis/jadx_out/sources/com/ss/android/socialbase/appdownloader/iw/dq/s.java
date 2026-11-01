package com.ss.android.socialbase.appdownloader.iw.dq;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.bykv.vk.component.ttvideo.player.C;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class s {
    private static PackageInfo d(Context context, File file, int i) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            dq("unzip_getpackagearchiveinfo", "packageManager == null");
            return null;
        }
        try {
            return packageManager.getPackageArchiveInfo(file.getPath(), i);
        } catch (Throwable th) {
            dq("unzip_getpackagearchiveinfo", "pm.getPackageArchiveInfo failed: " + th.getMessage());
            return null;
        }
    }

    public static PackageInfo dq(Context context, File file, int i) {
        if (com.ss.android.socialbase.downloader.kk.dq.dq(C.ENCODING_PCM_MU_LAW) && Build.VERSION.SDK_INT < 26) {
            try {
                return dq(file);
            } catch (Throwable th) {
                dq("getPackageInfo::unzip_getpackagearchiveinfo", th.getMessage());
            }
        }
        return d(context, file, i);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:107:0x0142
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:131)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:57)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:49)
        */
    public static android.content.pm.PackageInfo dq(java.io.File r13) {
        /*
            Method dump skipped, instructions count: 381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.appdownloader.iw.dq.s.dq(java.io.File):android.content.pm.PackageInfo");
    }

    private static String dq(int i) {
        return (i >>> 24) == 1 ? "android:" : "";
    }

    public static String dq(Context context, PackageInfo packageInfo, String str) {
        ApplicationInfo applicationInfo;
        if (packageInfo == null || (applicationInfo = packageInfo.applicationInfo) == null) {
            return null;
        }
        applicationInfo.sourceDir = str;
        applicationInfo.publicSourceDir = str;
        try {
            return applicationInfo.loadLabel(context.getPackageManager()).toString();
        } catch (OutOfMemoryError e2) {
            dq("getPackageInfo::fail_load_label", e2.getMessage());
            return null;
        }
    }

    private static String dq(dq dqVar, int i) {
        int d2 = dqVar.d(i);
        int ox = dqVar.ox(i);
        return d2 == 3 ? dqVar.p(i) : d2 == 2 ? String.format("?%s%08X", dq(ox), Integer.valueOf(ox)) : (d2 < 16 || d2 > 31) ? String.format("<0x%X, type 0x%02X>", Integer.valueOf(ox), Integer.valueOf(d2)) : String.valueOf(ox);
    }

    private static void dq(String str, String str2) {
        if (com.ss.android.socialbase.downloader.downloader.ox.mn() == null) {
            return;
        }
        try {
            new JSONObject().put("message", str2);
        } catch (JSONException unused) {
        }
    }
}

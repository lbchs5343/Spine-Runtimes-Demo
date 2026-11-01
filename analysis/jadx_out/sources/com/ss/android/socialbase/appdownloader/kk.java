package com.ss.android.socialbase.appdownloader;

import android.content.Context;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;

/* loaded from: classes.dex */
public class kk {
    public static int d(String str) {
        return dq(com.ss.android.socialbase.downloader.downloader.ox.ob(), str);
    }

    public static int d(String str, String str2) {
        try {
            return com.ss.android.socialbase.downloader.downloader.ox.ob().getResources().getIdentifier(str, "attr", str2);
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public static int dq(Context context, String str) {
        try {
            return context.getResources().getIdentifier(str, "string", context.getPackageName());
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public static int dq(String str) {
        try {
            return com.ss.android.socialbase.downloader.downloader.ox.ob().getResources().getIdentifier(str, "layout", com.ss.android.socialbase.downloader.downloader.ox.ob().getPackageName());
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public static int dq(String str, String str2) {
        try {
            return com.ss.android.socialbase.downloader.downloader.ox.ob().getResources().getIdentifier(str, "drawable", str2);
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public static int iw(String str) {
        try {
            return com.ss.android.socialbase.downloader.downloader.ox.ob().getResources().getIdentifier(str, "color", com.ss.android.socialbase.downloader.downloader.ox.ob().getPackageName());
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public static int ox(String str) {
        try {
            return dq(str, com.ss.android.socialbase.downloader.downloader.ox.ob().getPackageName());
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public static int p(String str) {
        try {
            return com.ss.android.socialbase.downloader.downloader.ox.ob().getResources().getIdentifier(str, "style", com.ss.android.socialbase.downloader.downloader.ox.ob().getPackageName());
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public static int s(String str) {
        try {
            return com.ss.android.socialbase.downloader.downloader.ox.ob().getResources().getIdentifier(str, TTDownloadField.TT_ID, com.ss.android.socialbase.downloader.downloader.ox.ob().getPackageName());
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }
}

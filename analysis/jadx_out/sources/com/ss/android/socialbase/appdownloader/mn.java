package com.ss.android.socialbase.appdownloader;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class mn {

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        private String f9289d;
        private String dq;
        private int iw;
        private boolean mn;
        private Drawable ox;
        private String p;
        private String s;

        public dq(String str, String str2, Drawable drawable, String str3, String str4, int i, boolean z) {
            d(str2);
            dq(drawable);
            dq(str);
            ox(str3);
            p(str4);
            dq(i);
            dq(z);
        }

        public void d(String str) {
            this.f9289d = str;
        }

        public boolean d() {
            return this.mn;
        }

        public Drawable dq() {
            return this.ox;
        }

        public void dq(int i) {
            this.iw = i;
        }

        public void dq(Drawable drawable) {
            this.ox = drawable;
        }

        public void dq(String str) {
            this.dq = str;
        }

        public void dq(boolean z) {
            this.mn = z;
        }

        public int iw() {
            return this.iw;
        }

        public String mn() {
            return this.s;
        }

        public String ox() {
            return this.dq;
        }

        public void ox(String str) {
            this.p = str;
        }

        public String p() {
            return this.f9289d;
        }

        public void p(String str) {
            this.s = str;
        }

        public String s() {
            return this.p;
        }

        public String toString() {
            return "{\n  pkg name: " + ox() + "\n  app icon: " + dq() + "\n  app name: " + p() + "\n  app path: " + s() + "\n  app v name: " + mn() + "\n  app v code: " + iw() + "\n  is system: " + d() + "}";
        }
    }

    public static dq d(String str) {
        try {
            PackageManager packageManager = com.ss.android.socialbase.downloader.downloader.ox.ob().getPackageManager();
            if (packageManager == null) {
                return null;
            }
            return dq(packageManager, packageManager.getPackageInfo(str, 0));
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static int dq(String str) {
        if (ox(str)) {
            return -1;
        }
        try {
            PackageInfo packageInfo = com.ss.android.socialbase.downloader.downloader.ox.ob().getPackageManager().getPackageInfo(str, 0);
            if (packageInfo == null) {
                return -1;
            }
            return packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    private static dq dq(PackageManager packageManager, PackageInfo packageInfo) {
        Drawable drawable = null;
        if (packageInfo == null) {
            return null;
        }
        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
        String str = packageInfo.packageName;
        String charSequence = (applicationInfo == null || applicationInfo.loadLabel(packageManager) == null) ? "" : applicationInfo.loadLabel(packageManager).toString();
        try {
            drawable = applicationInfo.loadIcon(packageManager);
        } catch (Exception unused) {
        }
        return new dq(str, charSequence, drawable, applicationInfo.sourceDir, packageInfo.versionName, packageInfo.versionCode, (applicationInfo.flags & 1) != 0);
    }

    private static boolean ox(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }
}

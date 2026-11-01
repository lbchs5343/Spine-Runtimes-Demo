package com.ss.android.downloadlib.addownload;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import com.ss.android.download.api.config.f;
import com.ss.android.download.api.config.fw;
import com.ss.android.download.api.config.gh;
import com.ss.android.download.api.config.i;
import com.ss.android.download.api.config.jy;
import com.ss.android.download.api.model.dq;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.io.File;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class no {
    private static com.ss.android.download.api.config.mp cd;

    /* renamed from: d, reason: collision with root package name */
    private static Context f9163d;
    public static final JSONObject dq = new JSONObject();

    /* renamed from: f, reason: collision with root package name */
    private static i f9164f;
    private static com.ss.android.download.api.config.q fw;
    private static f gh;
    private static fw i;
    private static com.ss.android.download.api.config.o ia;
    private static com.ss.android.download.api.config.p ig;
    private static com.ss.android.download.api.config.ia iw;
    private static com.ss.android.download.api.config.no jy;
    private static com.ss.android.download.api.model.dq kk;
    private static gh le;
    private static com.ss.android.download.api.config.kk mn;
    private static com.ss.android.download.api.config.s mp;
    private static com.ss.android.socialbase.appdownloader.ox.ia no;
    private static com.ss.android.download.api.config.d o;
    private static com.ss.android.download.api.config.mn ox;
    private static com.ss.android.download.api.config.ox p;
    private static jy q;
    private static com.ss.android.download.api.d.dq r;
    private static com.ss.android.download.api.config.ig s;

    public static fw cd() {
        return i;
    }

    public static com.ss.android.download.api.config.ox d() {
        if (p == null) {
            p = new com.ss.android.download.api.config.ox() { // from class: com.ss.android.downloadlib.addownload.no.1
            };
        }
        return p;
    }

    public static void d(Context context) {
        if (f9163d != null || context == null || context.getApplicationContext() == null) {
            return;
        }
        f9163d = context.getApplicationContext();
    }

    public static com.ss.android.download.api.config.mn dq() {
        return ox;
    }

    public static void dq(Context context) {
        if (context == null || context.getApplicationContext() == null) {
            throw new IllegalArgumentException("Context is null");
        }
        f9163d = context.getApplicationContext();
    }

    public static void dq(com.ss.android.download.api.config.d dVar) {
        o = dVar;
    }

    public static void dq(fw fwVar) {
        i = fwVar;
    }

    public static void dq(com.ss.android.download.api.config.ia iaVar) {
        iw = iaVar;
    }

    public static void dq(com.ss.android.download.api.config.ig igVar) {
        s = igVar;
    }

    public static void dq(com.ss.android.download.api.config.kk kkVar) {
        mn = kkVar;
    }

    public static void dq(com.ss.android.download.api.config.mn mnVar) {
        ox = mnVar;
    }

    public static void dq(com.ss.android.download.api.config.o oVar) {
        ia = oVar;
    }

    public static void dq(com.ss.android.download.api.d.dq dqVar) {
        r = dqVar;
    }

    public static void dq(com.ss.android.download.api.model.dq dqVar) {
        kk = dqVar;
    }

    public static void dq(String str) {
        com.ss.android.socialbase.appdownloader.p.o().dq(str);
    }

    public static com.ss.android.download.api.config.s f() {
        return mp;
    }

    public static com.ss.android.download.api.config.no fw() {
        return jy;
    }

    public static Context getContext() {
        Context context = f9163d;
        if (context != null) {
            return context;
        }
        throw new IllegalArgumentException("Context is null");
    }

    public static i gh() {
        return f9164f;
    }

    public static gh i() {
        if (le == null) {
            le = new gh() { // from class: com.ss.android.downloadlib.addownload.no.5
            };
        }
        return le;
    }

    public static f ia() {
        if (gh == null) {
            gh = new f() { // from class: com.ss.android.downloadlib.addownload.no.3
            };
        }
        return gh;
    }

    public static com.ss.android.download.api.config.d ig() {
        return o;
    }

    public static com.ss.android.socialbase.appdownloader.ox.ia iw() {
        if (no == null) {
            no = new com.ss.android.socialbase.appdownloader.ox.ia() { // from class: com.ss.android.downloadlib.addownload.no.2
                @Override // com.ss.android.socialbase.appdownloader.ox.ia
                public void dq(DownloadInfo downloadInfo, BaseException baseException, int i2) {
                }
            };
        }
        return no;
    }

    public static com.ss.android.download.api.config.p jy() {
        return ig;
    }

    public static boolean k() {
        return (ox == null || iw == null || ia == null || o == null || i == null) ? false : true;
    }

    public static JSONObject kk() {
        com.ss.android.download.api.config.o oVar = ia;
        return (oVar == null || oVar.dq() == null) ? dq : ia.dq();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0018, code lost:
    
        if (r0 > 29) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0016, code lost:
    
        if (r1 != false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0028, code lost:
    
        return getContext().getExternalFilesDir(android.os.Environment.DIRECTORY_DOWNLOADS).getAbsolutePath();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String le() {
        boolean isExternalStorageLegacy;
        try {
            int i2 = getContext().getApplicationInfo().targetSdkVersion;
            if (Build.VERSION.SDK_INT >= 29) {
                if (i2 == 29) {
                    isExternalStorageLegacy = Environment.isExternalStorageLegacy();
                }
            }
            return Environment.getExternalStorageDirectory().getPath() + File.separator + kk().optString("default_save_dir_name", "ByteDownload");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static jy mn() {
        return q;
    }

    public static com.ss.android.download.api.config.q mp() {
        return fw;
    }

    public static com.ss.android.download.api.config.mp no() {
        return cd;
    }

    public static com.ss.android.download.api.model.dq o() {
        if (kk == null) {
            kk = new dq.C0212dq().dq();
        }
        return kk;
    }

    public static com.ss.android.download.api.config.ig ox() {
        if (s == null) {
            s = new com.ss.android.download.api.dq.dq();
        }
        return s;
    }

    public static com.ss.android.download.api.config.ia p() {
        return iw;
    }

    public static String q() {
        return "1.7.0";
    }

    public static com.ss.android.download.api.d.dq r() {
        if (r == null) {
            r = new com.ss.android.download.api.d.dq() { // from class: com.ss.android.downloadlib.addownload.no.4
                @Override // com.ss.android.download.api.d.dq
                public void dq(Throwable th, String str) {
                }
            };
        }
        return r;
    }

    public static com.ss.android.download.api.config.kk s() {
        if (mn == null) {
            mn = new com.ss.android.download.api.dq.d();
        }
        return mn;
    }
}

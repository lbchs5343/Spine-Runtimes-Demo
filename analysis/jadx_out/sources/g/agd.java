package g;

import android.util.Log;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.internal.ads.zzbep;
import com.google.android.gms.internal.ads.zzfxd;

/* loaded from: classes3.dex */
public abstract class agd {

    /* renamed from: a, reason: collision with root package name */
    public static final zzfxd f10175a = zzfxd.zza(TTAdConstant.INIT_LOCAL_FAIL_CODE);

    public static void b(String str) {
        if (!i(5) || str == null || str.length() <= 4000) {
            return;
        }
        for (String str2 : f10175a.zzc(str)) {
        }
    }

    public static void c(String str) {
        if (!i(3) || str == null || str.length() <= 4000) {
            return;
        }
        for (String str2 : f10175a.zzc(str)) {
        }
    }

    public static void d(String str) {
        if (i(6)) {
            if (str == null || str.length() <= 4000) {
                Log.e("Ads", str);
                return;
            }
            boolean z = true;
            for (String str2 : f10175a.zzc(str)) {
                if (z) {
                    Log.e("Ads", str2);
                } else {
                    Log.e("Ads-cont", str2);
                }
                z = false;
            }
        }
    }

    public static void e(String str) {
        if (!h() || str == null || str.length() <= 4000) {
            return;
        }
        for (String str2 : f10175a.zzc(str)) {
        }
    }

    public static void f(String str, Throwable th) {
        if (i(6)) {
            Log.e("Ads", str, th);
        }
    }

    public static void g(String str, Exception exc) {
        if (i(5)) {
            if (exc != null) {
                j(str);
            } else {
                b(j(str));
            }
        }
    }

    public static boolean h() {
        return i(2) && ((Boolean) zzbep.zza.zze()).booleanValue();
    }

    public static boolean i(int i) {
        return i >= 5 || Log.isLoggable("Ads", i);
    }

    public static String j(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace.length < 4) {
            return str;
        }
        return str + " @" + stackTrace[3].getLineNumber();
    }

    public static void k(String str) {
        if (!i(4) || str == null || str.length() <= 4000) {
            return;
        }
        for (String str2 : f10175a.zzc(str)) {
        }
    }
}

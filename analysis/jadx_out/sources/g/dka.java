package g;

import android.content.Context;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;

/* loaded from: classes3.dex */
public abstract class dka {

    /* renamed from: a, reason: collision with root package name */
    public static volatile exu f14295a = dfh.f14091a;

    /* renamed from: b, reason: collision with root package name */
    public static final Object f14296b = new Object();

    /* JADX WARN: Can't wrap try/catch for region: R(11:18|(1:20)(8:33|(1:35)(1:41)|36|(2:38|(1:40))|27|28|29|30)|21|22|23|24|(1:26)|27|28|29|30) */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean c(Context context, Uri uri) {
        String authority = uri.getAuthority();
        boolean z = false;
        if (!"com.google.android.gms.phenotype".equals(authority)) {
            Log.e("PhenotypeClientHelper", String.valueOf(authority).concat(" is an unsupported authority. Only com.google.android.gms.phenotype authority is supported."));
            return false;
        }
        if (f14295a.c()) {
            return ((Boolean) f14295a.b()).booleanValue();
        }
        synchronized (f14296b) {
            try {
                if (f14295a.c()) {
                    return ((Boolean) f14295a.b()).booleanValue();
                }
                if (!"com.google.android.gms".equals(context.getPackageName())) {
                    ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.phenotype", Build.VERSION.SDK_INT < 29 ? 0 : C.ENCODING_PCM_MU_LAW);
                    if (resolveContentProvider != null) {
                        if (!"com.google.android.gms".equals(resolveContentProvider.packageName)) {
                        }
                    }
                    f14295a = new gla(Boolean.valueOf(z));
                    return ((Boolean) f14295a.b()).booleanValue();
                }
                if ((context.getPackageManager().getApplicationInfo("com.google.android.gms", 0).flags & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA) != 0) {
                    z = true;
                }
                f14295a = new gla(Boolean.valueOf(z));
                return ((Boolean) f14295a.b()).booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

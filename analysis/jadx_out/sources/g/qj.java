package g;

import android.content.Context;
import android.os.PowerManager;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;

/* loaded from: classes.dex */
public abstract class qj {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f19859a = 0;

    static {
        bff.e(cyl.g("WakeLocks"), "tagWithPrefix(\"WakeLocks\")");
    }

    public static final PowerManager.WakeLock b(Context context, String str) {
        bff.p(context, "context");
        bff.p(str, TTDownloadField.TT_TAG);
        Object systemService = context.getApplicationContext().getSystemService("power");
        bff.ag(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        String concat = "WorkManager: ".concat(str);
        PowerManager.WakeLock newWakeLock = ((PowerManager) systemService).newWakeLock(1, concat);
        synchronized (da.f13831a) {
        }
        bff.e(newWakeLock, "wakeLock");
        return newWakeLock;
    }
}

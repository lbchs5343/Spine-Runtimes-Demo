package g;

import android.os.Process;
import android.webkit.CookieManager;

/* loaded from: classes3.dex */
public class lp extends feo {
    public final CookieManager a() {
        ti tiVar = ti.f20033a;
        esy esyVar = tiVar.z;
        int myUid = Process.myUid();
        if (myUid != 0 && myUid != 1000) {
            try {
                return CookieManager.getInstance();
            } catch (Throwable th) {
                agd.f("Failed to obtain CookieManager.", th);
                tiVar.f20034ab.zzv(th, "ApiLevelUtil.getCookieManager");
            }
        }
        return null;
    }
}

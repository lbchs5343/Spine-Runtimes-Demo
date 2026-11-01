package androidx.multidex;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.util.Log;
import bin.mt.signature.KillerApplication55;
import g.ia;
import java.io.File;

/* loaded from: classes.dex */
public class MultiDexApplication extends KillerApplication55 {
    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        ApplicationInfo applicationInfo;
        super.attachBaseContext(context);
        if (ia.f19404b) {
            return;
        }
        try {
            try {
                applicationInfo = getApplicationInfo();
            } catch (Exception e2) {
                Log.e("MultiDex", "MultiDex installation failure", e2);
                throw new RuntimeException("MultiDex installation failed (" + e2.getMessage() + ").");
            }
        } catch (RuntimeException unused) {
            applicationInfo = null;
        }
        if (applicationInfo == null) {
            return;
        }
        ia.f(this, new File(applicationInfo.sourceDir), new File(applicationInfo.dataDir));
    }
}

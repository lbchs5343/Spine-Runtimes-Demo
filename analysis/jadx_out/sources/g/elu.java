package g;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;

/* loaded from: classes3.dex */
public final /* synthetic */ class elu implements boa {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15779a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f15780b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f15781c;

    public /* synthetic */ elu(Object obj, int i, Object obj2) {
        this.f15779a = i;
        this.f15780b = obj;
        this.f15781c = obj2;
    }

    @Override // g.boa
    public final Object get() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        switch (this.f15779a) {
            case 0:
                dlf dlfVar = (dlf) this.f15780b;
                bdf bdfVar = (bdf) this.f15781c;
                return bdfVar.f11311b.e(new xa(bdfVar, dlfVar));
            case 1:
                return new dpi((Context) this.f15780b, (String) this.f15781c);
            default:
                rm rmVar = (rm) this.f15780b;
                Context context = (Context) this.f15781c;
                String r = rmVar.r();
                epp eppVar = new epp();
                int i = Build.VERSION.SDK_INT;
                if (i >= 24) {
                    context = i >= 24 ? cml.g(context) : null;
                }
                SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.firebase.common.prefs:" + r, 0);
                boolean z = true;
                if (sharedPreferences.contains("firebase_data_collection_default_enabled")) {
                    z = sharedPreferences.getBoolean("firebase_data_collection_default_enabled", true);
                } else {
                    try {
                        PackageManager packageManager = context.getPackageManager();
                        if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("firebase_data_collection_default_enabled")) {
                            z = applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
                        }
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                }
                eppVar.f15945a = z;
                return eppVar;
        }
    }
}

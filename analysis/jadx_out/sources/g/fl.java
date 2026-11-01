package g;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class fl {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f16954a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public static String f16955b = "";

    public static PackageInfo c(PackageManager packageManager) {
        if (f16955b.equals("moe.shizuku.privileged.api") || byh.k) {
            return packageManager.getPackageInfo("moe.shizuku.privileged.api", 0);
        }
        throw new PackageManager.NameNotFoundException("Not agreed");
    }
}

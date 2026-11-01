package g;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;

/* loaded from: classes.dex */
public abstract class djv {

    /* renamed from: a, reason: collision with root package name */
    public static final String f14292a;

    static {
        String g2 = cyl.g("NetworkStateTracker");
        bff.e(g2, "tagWithPrefix(\"NetworkStateTracker\")");
        f14292a = g2;
    }

    public static final dod b(ConnectivityManager connectivityManager) {
        Network activeNetwork;
        NetworkCapabilities networkCapabilities;
        boolean hasCapability;
        bff.p(connectivityManager, "<this>");
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        boolean z = activeNetworkInfo != null && activeNetworkInfo.isConnected();
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                activeNetwork = connectivityManager.getActiveNetwork();
                networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
            } catch (SecurityException e2) {
                cyl.f().j(f14292a, "Unable to validate active network", e2);
            }
            if (networkCapabilities != null) {
                hasCapability = networkCapabilities.hasCapability(16);
                return new dod(z, hasCapability, connectivityManager.isActiveNetworkMetered(), activeNetworkInfo == null && !activeNetworkInfo.isRoaming());
            }
        }
        hasCapability = false;
        return new dod(z, hasCapability, connectivityManager.isActiveNetworkMetered(), activeNetworkInfo == null && !activeNetworkInfo.isRoaming());
    }
}

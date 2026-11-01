package g;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;

/* loaded from: classes.dex */
public final class eze extends ConnectivityManager.NetworkCallback {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f16407a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final cjz f16408b;

    public eze(cjz cjzVar) {
        this.f16408b = cjzVar;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        bff.p(network, "network");
        bff.p(networkCapabilities, "networkCapabilities");
        cyl f2 = cyl.f();
        int i = gx.f18917a;
        f2.getClass();
        this.f16408b.invoke(gpr.f18542a);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        bff.p(network, "network");
        cyl f2 = cyl.f();
        int i = gx.f18917a;
        f2.getClass();
        this.f16408b.invoke(new das(7));
    }
}

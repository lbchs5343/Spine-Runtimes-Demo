package g;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class aag extends ConnectivityManager.NetworkCallback {

    /* renamed from: a, reason: collision with root package name */
    public static final aag f9844a = new aag();

    /* renamed from: b, reason: collision with root package name */
    public static final Object f9845b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static final LinkedHashMap f9846c = new LinkedHashMap();

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        List<Map.Entry> bf;
        boolean canBeSatisfiedBy;
        bff.p(network, "network");
        bff.p(networkCapabilities, "networkCapabilities");
        cyl f2 = cyl.f();
        int i = gx.f18917a;
        f2.getClass();
        synchronized (f9845b) {
            bf = gsv.bf(f9846c.entrySet());
        }
        for (Map.Entry entry : bf) {
            and andVar = (and) entry.getKey();
            canBeSatisfiedBy = ((NetworkRequest) entry.getValue()).canBeSatisfiedBy(networkCapabilities);
            andVar.invoke(canBeSatisfiedBy ? gpr.f18542a : new das(7));
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        List bf;
        bff.p(network, "network");
        cyl f2 = cyl.f();
        int i = gx.f18917a;
        f2.getClass();
        synchronized (f9845b) {
            bf = gsv.bf(f9846c.keySet());
        }
        Iterator it = bf.iterator();
        while (it.hasNext()) {
            ((and) it.next()).invoke(new das(7));
        }
    }
}

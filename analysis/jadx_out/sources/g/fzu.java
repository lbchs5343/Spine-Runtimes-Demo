package g;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Build;
import com.google.android.gms.internal.ads.zzavi;
import com.google.android.gms.internal.ads.zzbzz;

/* loaded from: classes.dex */
public final class fzu extends ConnectivityManager.NetworkCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17751a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f17752b;

    public /* synthetic */ fzu(int i, Object obj) {
        this.f17751a = i;
        this.f17752b = obj;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onAvailable(Network network) {
        switch (this.f17751a) {
            case 2:
                ((zzbzz) this.f17752b).f5107c.set(true);
                break;
            default:
                super.onAvailable(network);
                break;
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        switch (this.f17751a) {
            case 0:
                bff.p(network, "network");
                bff.p(networkCapabilities, "capabilities");
                cyl f2 = cyl.f();
                String str = djv.f14292a;
                networkCapabilities.toString();
                f2.getClass();
                wk wkVar = (wk) this.f17752b;
                wkVar.k(Build.VERSION.SDK_INT >= 28 ? new dod(networkCapabilities.hasCapability(12), networkCapabilities.hasCapability(16), !networkCapabilities.hasCapability(11), networkCapabilities.hasCapability(18)) : djv.b(wkVar.f20219a));
                return;
            case 1:
                synchronized (zzavi.class) {
                    ((zzavi) this.f17752b).f4525a = networkCapabilities;
                }
                return;
            default:
                super.onCapabilitiesChanged(network, networkCapabilities);
                return;
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        switch (this.f17751a) {
            case 0:
                bff.p(network, "network");
                cyl f2 = cyl.f();
                String str = djv.f14292a;
                f2.getClass();
                wk wkVar = (wk) this.f17752b;
                wkVar.k(djv.b(wkVar.f20219a));
                return;
            case 1:
                synchronized (zzavi.class) {
                    ((zzavi) this.f17752b).f4525a = null;
                }
                return;
            default:
                ((zzbzz) this.f17752b).f5107c.set(false);
                return;
        }
    }
}

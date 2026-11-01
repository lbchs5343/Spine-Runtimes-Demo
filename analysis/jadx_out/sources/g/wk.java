package g;

import android.content.Context;
import android.net.ConnectivityManager;

/* loaded from: classes.dex */
public final class wk extends cmh {

    /* renamed from: a, reason: collision with root package name */
    public final ConnectivityManager f20219a;

    /* renamed from: b, reason: collision with root package name */
    public final fzu f20220b;

    public wk(Context context, gkr gkrVar) {
        super(context, gkrVar);
        Object systemService = this.i.getSystemService("connectivity");
        bff.ag(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        this.f20219a = (ConnectivityManager) systemService;
        this.f20220b = new fzu(0, this);
    }

    @Override // g.cmh
    public final void c() {
        try {
            cyl f2 = cyl.f();
            String str = djv.f14292a;
            f2.getClass();
            ConnectivityManager connectivityManager = this.f20219a;
            fzu fzuVar = this.f20220b;
            bff.p(connectivityManager, "<this>");
            bff.p(fzuVar, "networkCallback");
            connectivityManager.unregisterNetworkCallback(fzuVar);
        } catch (IllegalArgumentException e2) {
            cyl.f().j(djv.f14292a, "Received exception while unregistering network callback", e2);
        } catch (SecurityException e3) {
            cyl.f().j(djv.f14292a, "Received exception while unregistering network callback", e3);
        }
    }

    @Override // g.cmh
    public final Object d() {
        return djv.b(this.f20219a);
    }

    @Override // g.cmh
    public final void e() {
        try {
            cyl f2 = cyl.f();
            String str = djv.f14292a;
            f2.getClass();
            ConnectivityManager connectivityManager = this.f20219a;
            fzu fzuVar = this.f20220b;
            bff.p(connectivityManager, "<this>");
            bff.p(fzuVar, "networkCallback");
            connectivityManager.registerDefaultNetworkCallback(fzuVar);
        } catch (IllegalArgumentException e2) {
            cyl.f().j(djv.f14292a, "Received exception while registering network callback", e2);
        } catch (SecurityException e3) {
            cyl.f().j(djv.f14292a, "Received exception while registering network callback", e3);
        }
    }
}

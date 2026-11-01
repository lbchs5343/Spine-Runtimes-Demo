package g;

import android.net.ConnectivityManager;

/* loaded from: classes.dex */
public final class hdf extends axr implements cvw {
    final /* synthetic */ fka $callbackRegistered;
    final /* synthetic */ ConnectivityManager $connManager;
    final /* synthetic */ eze $networkCallback;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hdf(fka fkaVar, ConnectivityManager connectivityManager, eze ezeVar) {
        super(0);
        this.$callbackRegistered = fkaVar;
        this.$connManager = connectivityManager;
        this.$networkCallback = ezeVar;
    }

    @Override // g.cvw
    public final Object invoke() {
        if (this.$callbackRegistered.element) {
            cyl f2 = cyl.f();
            int i = gx.f18917a;
            f2.getClass();
            this.$connManager.unregisterNetworkCallback(this.$networkCallback);
        }
        return dgi.f14134a;
    }
}

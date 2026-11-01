package g;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;

/* loaded from: classes.dex */
public final class fsi extends eil {
    public final ConnectivityManager m;

    public fsi(Context context, gkr gkrVar) {
        super(context, gkrVar);
        Object systemService = this.i.getSystemService("connectivity");
        bff.ag(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        this.m = (ConnectivityManager) systemService;
    }

    @Override // g.eil
    public final IntentFilter b() {
        return new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
    }

    @Override // g.cmh
    public final Object d() {
        return djv.b(this.m);
    }

    @Override // g.eil
    public final void l(Intent intent) {
        if (bff.n(intent.getAction(), "android.net.conn.CONNECTIVITY_CHANGE")) {
            cyl f2 = cyl.f();
            String str = djv.f14292a;
            f2.getClass();
            k(djv.b(this.m));
        }
    }
}

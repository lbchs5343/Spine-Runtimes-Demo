package g;

import android.net.ConnectivityManager;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class aps extends axr implements cvw {
    final /* synthetic */ ConnectivityManager $connManager;
    final /* synthetic */ and $onConstraintState;
    final /* synthetic */ aag this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aps(cjz cjzVar, ConnectivityManager connectivityManager, aag aagVar) {
        super(0);
        this.$onConstraintState = cjzVar;
        this.$connManager = connectivityManager;
        this.this$0 = aagVar;
    }

    @Override // g.cvw
    public final Object invoke() {
        Object obj = aag.f9845b;
        and andVar = this.$onConstraintState;
        ConnectivityManager connectivityManager = this.$connManager;
        aag aagVar = this.this$0;
        synchronized (obj) {
            LinkedHashMap linkedHashMap = aag.f9846c;
            linkedHashMap.remove(andVar);
            if (linkedHashMap.isEmpty()) {
                cyl f2 = cyl.f();
                int i = gx.f18917a;
                f2.getClass();
                connectivityManager.unregisterNetworkCallback(aagVar);
            }
        }
        return dgi.f14134a;
    }
}

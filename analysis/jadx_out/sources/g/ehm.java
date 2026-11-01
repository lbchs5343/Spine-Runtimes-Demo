package g;

import android.net.ConnectivityManager;

/* loaded from: classes.dex */
public final class ehm implements pe {

    /* renamed from: d, reason: collision with root package name */
    public final ConnectivityManager f15547d;

    public ehm(ConnectivityManager connectivityManager) {
        this.f15547d = connectivityManager;
    }

    @Override // g.pe
    public final dqm a(bho bhoVar) {
        bff.p(bhoVar, "constraints");
        return new dqm(new on(bhoVar, this, null), cgq.f12850a, -2, bqt.SUSPEND);
    }

    @Override // g.pe
    public final boolean b(fkj fkjVar) {
        bff.p(fkjVar, "workSpec");
        return fkjVar.r.k() != null;
    }

    @Override // g.pe
    public final boolean c(fkj fkjVar) {
        if (b(fkjVar)) {
            throw new IllegalStateException("isCurrentlyConstrained() must never be called onNetworkRequestConstraintController. isCurrentlyConstrained() is called only on older platforms where NetworkRequest isn't supported");
        }
        return false;
    }
}

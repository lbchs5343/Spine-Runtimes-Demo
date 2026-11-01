package g;

import android.os.IBinder;
import android.os.RemoteException;
import java.util.Map;

/* loaded from: classes.dex */
public final /* synthetic */ class euq implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ gnl f16192a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16193b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ark f16194c;

    public /* synthetic */ euq(ark arkVar, gnl gnlVar, int i) {
        this.f16193b = i;
        this.f16194c = arkVar;
        this.f16192a = gnlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f16193b) {
            case 0:
                ark arkVar = this.f16194c;
                gnl gnlVar = this.f16192a;
                arkVar.p.remove(gnlVar);
                if (gnlVar.d("operation_timeout", null)) {
                    arkVar.m.post(new hdk(arkVar, 1));
                    return;
                }
                return;
            default:
                ark arkVar2 = this.f16194c;
                gnl gnlVar2 = this.f16192a;
                if (!arkVar2.r()) {
                    gnlVar2.d("not_running", null);
                    return;
                }
                if (!arkVar2.w()) {
                    gnlVar2.d("permission_required", null);
                    return;
                }
                if (arkVar2.n != null && arkVar2.n.asBinder().isBinderAlive()) {
                    arkVar2.v(gnlVar2, arkVar2.n);
                    return;
                }
                arkVar2.j.add(gnlVar2);
                if (arkVar2.f10714c) {
                    return;
                }
                arkVar2.f10714c = true;
                arkVar2.s();
                try {
                    ajy u = arkVar2.u();
                    arkVar2.f10718g = u;
                    aco acoVar = arkVar2.f10715d;
                    IBinder iBinder = gwn.f18889f;
                    Map map = doo.f14537a;
                    String str = u.f10354a;
                    if (str == null) {
                        str = u.f10356c.getClassName();
                    }
                    Map map2 = doo.f14537a;
                    fsr fsrVar = (fsr) map2.get(str);
                    if (fsrVar == null) {
                        fsrVar = new fsr(u);
                        map2.put(str, fsrVar);
                    }
                    if (acoVar != null) {
                        fsrVar.f17348e.add(acoVar);
                    }
                    try {
                        ((bvh) gwn.w()).f(fsrVar, ajy.f(u));
                        arkVar2.m.postDelayed(arkVar2.f10716e, 12000L);
                        return;
                    } catch (RemoteException e2) {
                        throw new RuntimeException(e2);
                    }
                } catch (Exception e3) {
                    arkVar2.f10714c = false;
                    arkVar2.y("connection_failed", e3);
                    arkVar2.s();
                    return;
                }
        }
    }
}

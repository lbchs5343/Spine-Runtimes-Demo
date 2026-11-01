package g;

import android.net.NetworkInfo;

/* loaded from: classes3.dex */
public final class dam extends gsp {

    /* renamed from: a, reason: collision with root package name */
    public final evf f13861a;

    /* renamed from: b, reason: collision with root package name */
    public final yk f13862b;

    public dam(evf evfVar, yk ykVar) {
        this.f13861a = evfVar;
        this.f13862b = ykVar;
    }

    @Override // g.gsp
    public final boolean c(NetworkInfo networkInfo) {
        return networkInfo == null || networkInfo.isConnected();
    }

    @Override // g.gsp
    public final boolean d(fpu fpuVar) {
        String scheme = fpuVar.f17212a.getScheme();
        return "http".equals(scheme) || "https".equals(scheme);
    }

    @Override // g.gsp
    public final fkn e(fpu fpuVar, int i) {
        bjl bjlVar;
        if (i == 0) {
            bjlVar = null;
        } else if ((i & sy.OFFLINE.index) != 0) {
            bjlVar = bjl.f11699a;
        } else {
            bjlVar = new bjl((i & sy.NO_CACHE.index) != 0, (i & sy.NO_STORE.index) != 0, -1, -1, false, false, false, -1, -1, false, false, false, null);
        }
        fzn fznVar = new fzn(7);
        fznVar.z(fpuVar.f17212a.toString());
        if (bjlVar != null) {
            String bjlVar2 = bjlVar.toString();
            if (bjlVar2.length() == 0) {
                ((ais) fznVar.f17730e).b("Cache-Control");
            } else {
                fznVar.n("Cache-Control", bjlVar2);
            }
        }
        daw x = fznVar.x();
        fys fysVar = (fys) this.f13861a.f16224f;
        fysVar.getClass();
        enb t = new ib(fysVar, x).t();
        ehi ehiVar = t.f15835b;
        if (!t.p()) {
            ehiVar.close();
            throw new atg(t.f15840g);
        }
        gye gyeVar = t.j == null ? gye.NETWORK : gye.DISK;
        if (gyeVar == gye.DISK && ehiVar.d() == 0) {
            ehiVar.close();
            throw new clp("Received response with 0 content-length header.");
        }
        if (gyeVar == gye.NETWORK && ehiVar.d() > 0) {
            long d2 = ehiVar.d();
            eqi eqiVar = this.f13862b.j;
            eqiVar.sendMessage(eqiVar.obtainMessage(4, Long.valueOf(d2)));
        }
        return new fkn(ehiVar.c(), gyeVar);
    }

    @Override // g.gsp
    public final int f() {
        return 2;
    }
}

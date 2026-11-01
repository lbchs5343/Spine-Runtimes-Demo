package g;

import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public final class cqr implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final gsn f13344a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13345b;

    /* renamed from: c, reason: collision with root package name */
    public final dcy f13346c;

    public /* synthetic */ cqr(dcy dcyVar, gsn gsnVar, int i) {
        this.f13345b = i;
        this.f13346c = dcyVar;
        this.f13344a = gsnVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f13345b) {
            case 0:
                dcy dcyVar = this.f13346c;
                boolean isCancelled = dcyVar.isCancelled();
                gsn gsnVar = this.f13344a;
                if (isCancelled) {
                    gsnVar.aa(null);
                    return;
                }
                boolean z = false;
                while (true) {
                    try {
                        try {
                            Object obj = dcyVar.get();
                            if (z) {
                                Thread.currentThread().interrupt();
                            }
                            gsnVar._z(obj);
                            return;
                        } catch (ExecutionException e2) {
                            Throwable cause = e2.getCause();
                            bff.d(cause);
                            gsnVar._z(eg.i(cause));
                            return;
                        }
                    } catch (InterruptedException unused) {
                        z = true;
                    } catch (Throwable th) {
                        if (z) {
                            Thread.currentThread().interrupt();
                        }
                        throw th;
                    }
                }
            default:
                dcy dcyVar2 = this.f13346c;
                boolean isCancelled2 = dcyVar2.isCancelled();
                gsn gsnVar2 = this.f13344a;
                if (isCancelled2) {
                    gsnVar2.aa(null);
                    return;
                }
                try {
                    gsnVar2._z(zi.j(dcyVar2));
                    return;
                } catch (ExecutionException e3) {
                    Throwable cause2 = e3.getCause();
                    if (cause2 != null) {
                        gsnVar2._z(eg.i(cause2));
                        return;
                    } else {
                        nj njVar = new nj();
                        bff.l(njVar, bff.class.getName());
                        throw njVar;
                    }
                }
        }
    }
}

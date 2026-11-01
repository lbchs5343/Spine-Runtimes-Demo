package g;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class byc implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ib f12430a;

    /* renamed from: b, reason: collision with root package name */
    public final fdy f12431b;

    /* renamed from: c, reason: collision with root package name */
    public volatile AtomicInteger f12432c = new AtomicInteger(0);

    public byc(ib ibVar, fdy fdyVar) {
        this.f12430a = ibVar;
        this.f12431b = fdyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        cop copVar;
        String concat = "OkHttp ".concat(((eyn) this.f12430a.l.f13886e).s());
        ib ibVar = this.f12430a;
        Thread currentThread = Thread.currentThread();
        String name = currentThread.getName();
        currentThread.setName(concat);
        try {
            ibVar.h.l();
            boolean z = false;
            try {
                try {
                } catch (Throwable th) {
                    ibVar.j.s.h(this);
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                this.f12431b.ak(ibVar.v());
                copVar = ibVar.j.s;
            } catch (IOException e3) {
                e = e3;
                z = true;
                if (z) {
                    bop bopVar = bop.h;
                    bop bopVar2 = bop.h;
                    StringBuilder sb = new StringBuilder("Callback failure for ");
                    StringBuilder sb2 = new StringBuilder();
                    awf.a(ibVar.n ? "canceled " : "", "call", " to ", sb2);
                    sb2.append(((eyn) ibVar.l.f13886e).s());
                    sb.append(sb2.toString());
                    String sb3 = sb.toString();
                    bopVar2.getClass();
                    bop.j(4, sb3, e);
                } else {
                    this.f12431b.r(e);
                }
                copVar = ibVar.j.s;
                copVar.h(this);
            } catch (Throwable th3) {
                th = th3;
                z = true;
                ibVar.cancel();
                if (!z) {
                    IOException iOException = new IOException("canceled due to " + th);
                    cux.ag(iOException, th);
                    this.f12431b.r(iOException);
                }
                throw th;
            }
            copVar.h(this);
        } finally {
            currentThread.setName(name);
        }
    }
}

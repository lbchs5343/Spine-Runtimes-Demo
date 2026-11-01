package g;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class ib implements dnw {

    /* renamed from: a, reason: collision with root package name */
    public gba f19405a;

    /* renamed from: b, reason: collision with root package name */
    public cpr f19406b;

    /* renamed from: c, reason: collision with root package name */
    public volatile gba f19407c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f19408d;

    /* renamed from: e, reason: collision with root package name */
    public final dhh f19409e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f19410f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f19411g;
    public final bep h;
    public final AtomicBoolean i;
    public final fys j;
    public aju k;
    public final daw l;
    public volatile aju m;
    public volatile boolean n;
    public Object o;

    public ib(fys fysVar, daw dawVar) {
        this.j = fysVar;
        this.l = dawVar;
        this.f19409e = (dhh) fysVar.w.f16548e;
        fysVar.q.getClass();
        bep bepVar = new bep(this);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        bepVar._av(0);
        this.h = bepVar;
        this.i = new AtomicBoolean();
        this.f19410f = true;
    }

    public final void cancel() {
        Socket socket;
        if (this.n) {
            return;
        }
        this.n = true;
        aju ajuVar = this.m;
        if (ajuVar != null) {
            ((axn) ajuVar.f10343a).cancel();
        }
        gba gbaVar = this.f19407c;
        if (gbaVar == null || (socket = gbaVar.r) == null) {
            return;
        }
        erq.o(socket);
    }

    public final Object clone() {
        return new ib(this.j, this.l);
    }

    public final IOException p(IOException iOException) {
        IOException interruptedIOException;
        Socket u;
        byte[] bArr = erq.f16043c;
        gba gbaVar = this.f19405a;
        if (gbaVar != null) {
            synchronized (gbaVar) {
                u = u();
            }
            if (this.f19405a == null) {
                if (u != null) {
                    erq.o(u);
                }
            } else if (u != null) {
                throw new IllegalStateException("Check failed.");
            }
        }
        if (this.h.m()) {
            interruptedIOException = new InterruptedIOException("timeout");
            if (iOException != null) {
                interruptedIOException.initCause(iOException);
            }
        } else {
            interruptedIOException = iOException;
        }
        if (iOException != null) {
            bff.d(interruptedIOException);
        }
        return interruptedIOException;
    }

    public final IOException q(IOException iOException) {
        boolean z;
        synchronized (this) {
            z = false;
            if (this.f19410f) {
                this.f19410f = false;
                if (!this.f19408d) {
                    if (!this.f19411g) {
                        z = true;
                    }
                }
            }
        }
        return z ? p(iOException) : iOException;
    }

    public final void r(fdy fdyVar) {
        byc bycVar;
        if (!this.i.compareAndSet(false, true)) {
            throw new IllegalStateException("Already Executed");
        }
        bop bopVar = bop.h;
        this.o = bop.h.q();
        cop copVar = this.j.s;
        byc bycVar2 = new byc(this, fdyVar);
        copVar.getClass();
        synchronized (copVar) {
            ((ArrayDeque) copVar.f13230a).add(bycVar2);
            String str = ((eyn) this.l.f13886e).f16373c;
            Iterator it = ((ArrayDeque) copVar.f13231b).iterator();
            while (true) {
                if (!it.hasNext()) {
                    Iterator it2 = ((ArrayDeque) copVar.f13230a).iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            bycVar = null;
                            break;
                        } else {
                            bycVar = (byc) it2.next();
                            if (bff.n(((eyn) bycVar.f12430a.l.f13886e).f16373c, str)) {
                                break;
                            }
                        }
                    }
                } else {
                    bycVar = (byc) it.next();
                    if (bff.n(((eyn) bycVar.f12430a.l.f13886e).f16373c, str)) {
                        break;
                    }
                }
            }
            if (bycVar != null) {
                bycVar2.f12432c = bycVar.f12432c;
            }
        }
        copVar.j();
    }

    public final void s(gba gbaVar) {
        byte[] bArr = erq.f16043c;
        if (this.f19405a != null) {
            throw new IllegalStateException("Check failed.");
        }
        this.f19405a = gbaVar;
        gbaVar.l.add(new dqb(this, this.o));
    }

    public final enb t() {
        if (!this.i.compareAndSet(false, true)) {
            throw new IllegalStateException("Already Executed");
        }
        this.h.l();
        bop bopVar = bop.h;
        this.o = bop.h.q();
        try {
            cop copVar = this.j.s;
            synchronized (copVar) {
                ((ArrayDeque) copVar.f13233d).add(this);
            }
            return v();
        } finally {
            cop copVar2 = this.j.s;
            copVar2.g((ArrayDeque) copVar2.f13233d, this);
        }
    }

    public final Socket u() {
        gba gbaVar = this.f19405a;
        bff.d(gbaVar);
        byte[] bArr = erq.f16043c;
        ArrayList arrayList = gbaVar.l;
        Iterator it = arrayList.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            if (bff.n(((Reference) it.next()).get(), this)) {
                break;
            }
            i++;
        }
        if (i == -1) {
            throw new IllegalStateException("Check failed.");
        }
        arrayList.remove(i);
        this.f19405a = null;
        if (!arrayList.isEmpty()) {
            return null;
        }
        gbaVar.q = System.nanoTime();
        dhh dhhVar = this.f19409e;
        ConcurrentLinkedQueue concurrentLinkedQueue = (ConcurrentLinkedQueue) dhhVar.f14174b;
        gfw gfwVar = (gfw) dhhVar.f14177e;
        byte[] bArr2 = erq.f16043c;
        if (!gbaVar.p) {
            gfwVar.l((lm) dhhVar.f14173a, 0L);
            return null;
        }
        gbaVar.p = true;
        concurrentLinkedQueue.remove(gbaVar);
        if (concurrentLinkedQueue.isEmpty()) {
            gfwVar.i();
        }
        Socket socket = gbaVar.h;
        bff.d(socket);
        return socket;
    }

    public final enb v() {
        ArrayList arrayList = new ArrayList();
        eko.c(arrayList, this.j.k);
        arrayList.add(new cgj(2, this.j));
        arrayList.add(new cgj(this.j.j));
        arrayList.add(new cgj(0, this.j.m));
        arrayList.add(czk.f13807b);
        eko.c(arrayList, this.j.p);
        arrayList.add(new czk(1));
        daw dawVar = this.l;
        fys fysVar = this.j;
        boolean z = false;
        try {
            try {
                enb k = new dpe(this, arrayList, 0, null, dawVar, fysVar.y, fysVar.u, fysVar.f17667g).k(dawVar);
                if (this.n) {
                    erq.m(k);
                    throw new IOException("Canceled");
                }
                q(null);
                return k;
            } catch (IOException e2) {
                z = true;
                IOException q = q(e2);
                bff.ag(q, "null cannot be cast to non-null type kotlin.Throwable");
                throw q;
            }
        } catch (Throwable th) {
            if (!z) {
                q(null);
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0021 A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:41:0x0012, B:10:0x0021, B:12:0x0025, B:13:0x0027, B:15:0x002c, B:19:0x0035, B:21:0x0039, B:7:0x001b), top: B:40:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0025 A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:41:0x0012, B:10:0x0021, B:12:0x0025, B:13:0x0027, B:15:0x002c, B:19:0x0035, B:21:0x0039, B:7:0x001b), top: B:40:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final IOException w(aju ajuVar, boolean z, boolean z2, IOException iOException) {
        boolean z3;
        boolean z4;
        boolean z5;
        bff.p(ajuVar, "exchange");
        if (ajuVar.equals(this.m)) {
            synchronized (this) {
                z3 = false;
                if (z) {
                    try {
                        if (!this.f19408d) {
                        }
                        if (z) {
                            this.f19408d = false;
                        }
                        if (z2) {
                            this.f19411g = false;
                        }
                        z5 = this.f19408d;
                        boolean z6 = z5 && !this.f19411g;
                        if (!z5 && !this.f19411g) {
                            if (!this.f19410f) {
                                z3 = true;
                            }
                        }
                        z4 = z3;
                        z3 = z6;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (!z2 || !this.f19411g) {
                    z4 = false;
                }
                if (z) {
                }
                if (z2) {
                }
                z5 = this.f19408d;
                if (z5) {
                }
                if (!z5) {
                    if (!this.f19410f) {
                    }
                }
                z4 = z3;
                z3 = z6;
            }
            if (z3) {
                this.m = null;
                gba gbaVar = this.f19405a;
                if (gbaVar != null) {
                    gbaVar.u();
                }
            }
            if (z4) {
                return p(iOException);
            }
        }
        return iOException;
    }

    public final void x(boolean z) {
        aju ajuVar;
        synchronized (this) {
            if (!this.f19410f) {
                throw new IllegalStateException("released");
            }
        }
        if (z && (ajuVar = this.m) != null) {
            ((axn) ajuVar.f10343a).cancel();
            ((ib) ajuVar.f10346d).w(ajuVar, true, true, null);
        }
        this.k = null;
    }
}

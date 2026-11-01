package g;

import java.io.IOException;
import java.net.Socket;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;

/* loaded from: classes3.dex */
public final class lm extends fyg {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19605a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f19606b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ lm(Object obj, String str, int i) {
        super(str, true);
        this.f19605a = i;
        this.f19606b = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ lm(String str, Object obj, int i) {
        super(str, true);
        this.f19605a = i;
        this.f19606b = obj;
    }

    private final long d() {
        dhh dhhVar = (dhh) this.f19606b;
        long nanoTime = System.nanoTime();
        Iterator it = ((ConcurrentLinkedQueue) dhhVar.f14174b).iterator();
        int i = 0;
        long j = Long.MIN_VALUE;
        gba gbaVar = null;
        int i2 = 0;
        while (it.hasNext()) {
            gba gbaVar2 = (gba) it.next();
            bff.e(gbaVar2, "connection");
            synchronized (gbaVar2) {
                if (dhhVar.i(gbaVar2, nanoTime) > 0) {
                    i2++;
                } else {
                    i++;
                    long j2 = nanoTime - gbaVar2.q;
                    if (j2 > j) {
                        gbaVar = gbaVar2;
                        j = j2;
                    }
                }
            }
        }
        long j3 = dhhVar.f14176d;
        if (j < j3 && i <= 5) {
            if (i > 0) {
                return j3 - j;
            }
            if (i2 > 0) {
                return j3;
            }
            return -1L;
        }
        bff.d(gbaVar);
        synchronized (gbaVar) {
            if (!gbaVar.l.isEmpty()) {
                return 0L;
            }
            if (gbaVar.q + j != nanoTime) {
                return 0L;
            }
            gbaVar.p = true;
            ((ConcurrentLinkedQueue) dhhVar.f14174b).remove(gbaVar);
            Socket socket = gbaVar.h;
            bff.d(socket);
            erq.o(socket);
            if (((ConcurrentLinkedQueue) dhhVar.f14174b).isEmpty()) {
                ((gfw) dhhVar.f14177e).i();
            }
            return 0L;
        }
    }

    @Override // g.fyg
    public final long c() {
        switch (this.f19605a) {
            case 0:
                fxy fxyVar = (fxy) this.f19606b;
                synchronized (fxyVar) {
                    if (!fxyVar.l || fxyVar.v) {
                        return -1L;
                    }
                    try {
                        fxyVar.ac();
                    } catch (IOException unused) {
                        fxyVar.t = true;
                    }
                    try {
                        if (fxyVar.ak()) {
                            fxyVar.ad();
                            fxyVar.r = 0;
                        }
                    } catch (IOException unused2) {
                        fxyVar.i = true;
                        fxyVar.h = baf.w(new goh());
                    }
                    return -1L;
                }
            case 1:
                ug ugVar = (ug) this.f19606b;
                ugVar.getClass();
                try {
                    ugVar.w.o(2, 0, false);
                    return -1L;
                } catch (IOException e2) {
                    ugVar.ah(e2);
                    return -1L;
                }
            case 2:
                return d();
            default:
                ((cvw) this.f19606b).invoke();
                return -1L;
        }
    }
}

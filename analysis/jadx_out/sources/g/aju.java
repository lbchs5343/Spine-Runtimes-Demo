package g;

import java.io.IOException;

/* loaded from: classes3.dex */
public final class aju {

    /* renamed from: a, reason: collision with root package name */
    public final Object f10343a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f10344b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f10345c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f10346d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f10347e;

    public aju(fvd fvdVar, abv abvVar) {
        this.f10344b = fvdVar;
        this.f10346d = abvVar;
        evq e2 = abvVar.e(1);
        this.f10347e = e2;
        this.f10343a = new ckw(fvdVar, this, e2);
    }

    public aju(ib ibVar, cpr cprVar, axn axnVar) {
        bff.p(cprVar, "finder");
        this.f10346d = ibVar;
        this.f10347e = cprVar;
        this.f10343a = axnVar;
        this.f10344b = axnVar.b();
    }

    public void f(IOException iOException) {
        this.f10345c = true;
        ((cpr) this.f10347e).l(iOException);
        gba b2 = ((axn) this.f10343a).b();
        ib ibVar = (ib) this.f10346d;
        synchronized (b2) {
            try {
                if (!(iOException instanceof gts)) {
                    if (!(b2.s != null) || (iOException instanceof fhb)) {
                        b2.p = true;
                        if (b2.m == 0) {
                            gba.t(ibVar.j, b2.o, iOException);
                            b2.i++;
                        }
                    }
                } else if (((gts) iOException).errorCode == amc.REFUSED_STREAM) {
                    int i = b2.f17840g + 1;
                    b2.f17840g = i;
                    if (i > 1) {
                        b2.p = true;
                        b2.i++;
                    }
                } else if (((gts) iOException).errorCode != amc.CANCEL || !ibVar.n) {
                    b2.p = true;
                    b2.i++;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void g() {
        synchronized (((fvd) this.f10344b)) {
            if (this.f10345c) {
                return;
            }
            this.f10345c = true;
            erq.m((evq) this.f10347e);
            try {
                ((abv) this.f10346d).f();
            } catch (IOException unused) {
            }
        }
    }

    public IOException h(boolean z, boolean z2, IOException iOException) {
        ib ibVar = (ib) this.f10346d;
        if (iOException != null) {
            f(iOException);
        }
        return ibVar.w(this, z2, z, iOException);
    }

    public hdt i(boolean z) {
        try {
            hdt g2 = ((axn) this.f10343a).g(z);
            if (g2 == null) {
                return g2;
            }
            g2.h = this;
            return g2;
        } catch (IOException e2) {
            f(e2);
            throw e2;
        }
    }
}

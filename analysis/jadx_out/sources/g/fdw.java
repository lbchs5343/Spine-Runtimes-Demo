package g;

import java.io.IOException;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class fdw implements czh {

    /* renamed from: e, reason: collision with root package name */
    public Throwable f16629e;

    /* renamed from: f, reason: collision with root package name */
    public ib f16630f;

    /* renamed from: g, reason: collision with root package name */
    public final Object[] f16631g;
    public final eyd h;
    public final eya i;
    public final bku j;
    public boolean k;
    public final Object l;
    public volatile boolean m;

    public fdw(bku bkuVar, Object obj, Object[] objArr, eyd eydVar, eya eyaVar) {
        this.j = bkuVar;
        this.l = obj;
        this.f16631g = objArr;
        this.h = eydVar;
        this.i = eyaVar;
    }

    @Override // g.czh
    public final boolean a() {
        boolean z = true;
        if (this.m) {
            return true;
        }
        synchronized (this) {
            try {
                ib ibVar = this.f16630f;
                if (ibVar == null || !ibVar.n) {
                    z = false;
                }
            } finally {
            }
        }
        return z;
    }

    @Override // g.czh
    public final synchronized daw b() {
        try {
        } catch (IOException e2) {
            throw new RuntimeException("Unable to create request.", e2);
        }
        return ((ib) n()).l;
    }

    @Override // g.czh
    public final anx c() {
        dnw n;
        synchronized (this) {
            if (this.k) {
                throw new IllegalStateException("Already executed.");
            }
            this.k = true;
            n = n();
        }
        if (this.m) {
            ((ib) n).cancel();
        }
        return o(((ib) n).t());
    }

    @Override // g.czh
    public final void cancel() {
        ib ibVar;
        this.m = true;
        synchronized (this) {
            ibVar = this.f16630f;
        }
        if (ibVar != null) {
            ibVar.cancel();
        }
    }

    @Override // g.czh
    public final czh clone() {
        return new fdw(this.j, this.l, this.f16631g, this.h, this.i);
    }

    /* renamed from: clone, reason: collision with other method in class */
    public final Object m12clone() {
        return new fdw(this.j, this.l, this.f16631g, this.h, this.i);
    }

    @Override // g.czh
    public final void d(bmm bmmVar) {
        ib ibVar;
        Throwable th;
        synchronized (this) {
            try {
                if (this.k) {
                    throw new IllegalStateException("Already executed.");
                }
                this.k = true;
                ibVar = this.f16630f;
                th = this.f16629e;
                if (ibVar == null && th == null) {
                    try {
                        ib p = p();
                        this.f16630f = p;
                        ibVar = p;
                    } catch (Throwable th2) {
                        th = th2;
                        aky.t(th);
                        this.f16629e = th;
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        if (th != null) {
            bmmVar.w(this, th);
            return;
        }
        if (this.m) {
            ibVar.cancel();
        }
        ibVar.r(new fdy(13, this, bmmVar, false));
    }

    public final dnw n() {
        ib ibVar = this.f16630f;
        if (ibVar != null) {
            return ibVar;
        }
        Throwable th = this.f16629e;
        if (th != null) {
            if (th instanceof IOException) {
                throw ((IOException) th);
            }
            if (th instanceof RuntimeException) {
                throw ((RuntimeException) th);
            }
            throw ((Error) th);
        }
        try {
            ib p = p();
            this.f16630f = p;
            return p;
        } catch (IOException | Error | RuntimeException e2) {
            aky.t(e2);
            this.f16629e = e2;
            throw e2;
        }
    }

    public final anx o(enb enbVar) {
        ehi ehiVar = enbVar.f15835b;
        hdt q = enbVar.q();
        q.m = new agt(ehiVar.e(), ehiVar.d());
        enb o = q.o();
        int i = o.f15840g;
        if (i < 200 || i >= 300) {
            try {
                ehiVar.c().ah(new clq());
                ehiVar.e();
                ehiVar.d();
                if (o.p()) {
                    throw new IllegalArgumentException("rawResponse should not be successful response");
                }
                return new anx(o, null);
            } finally {
                ehiVar.close();
            }
        }
        if (i == 204 || i == 205) {
            ehiVar.close();
            if (o.p()) {
                return new anx(o, null);
            }
            throw new IllegalArgumentException("rawResponse must be successful response");
        }
        fsb fsbVar = new fsb(ehiVar);
        try {
            Object ak = this.i.ak(fsbVar);
            if (o.p()) {
                return new anx(o, ak);
            }
            throw new IllegalArgumentException("rawResponse must be successful response");
        } catch (RuntimeException e2) {
            IOException iOException = fsbVar.f17324a;
            if (iOException == null) {
                throw e2;
            }
            throw iOException;
        }
    }

    public final ib p() {
        eyn n;
        bku bkuVar = this.j;
        kj[] kjVarArr = bkuVar.f11761b;
        Object[] objArr = this.f16631g;
        int length = objArr.length;
        if (length != kjVarArr.length) {
            throw new IllegalArgumentException(awf.x(tn.z(length, "Argument count (", ") doesn't match expected count ("), kjVarArr.length, ")"));
        }
        gea geaVar = new gea(bkuVar.f11762c, bkuVar.k, bkuVar.f11764e, bkuVar.f11766g, bkuVar.l, bkuVar.f11760a, bkuVar.h, bkuVar.j);
        if (bkuVar.f11763d) {
            length--;
        }
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            arrayList.add(objArr[i]);
            kjVarArr[i].b(geaVar, objArr[i]);
        }
        ke keVar = geaVar.f17971e;
        if (keVar != null) {
            n = keVar.n();
        } else {
            String str = geaVar.l;
            eyn eynVar = geaVar.j;
            eynVar.getClass();
            bff.p(str, "link");
            ke p = eynVar.p(str);
            n = p != null ? p.n() : null;
            if (n == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + eynVar + ", Relative: " + geaVar.l);
            }
        }
        sz szVar = geaVar.f17970d;
        if (szVar == null) {
            fdy fdyVar = geaVar.k;
            if (fdyVar != null) {
                szVar = new etr((ArrayList) fdyVar.f16634c, (ArrayList) fdyVar.f16632a);
            } else {
                dzh dzhVar = geaVar.i;
                if (dzhVar != null) {
                    ArrayList arrayList2 = (ArrayList) dzhVar.f15122g;
                    if (arrayList2.isEmpty()) {
                        throw new IllegalStateException("Multipart body must have at least one part.");
                    }
                    szVar = new cso((gei) dzhVar.i, (dpd) dzhVar.f15121f, erq.s(arrayList2));
                } else if (geaVar.f17969c) {
                    long j = 0;
                    erq.ac(j, j, j);
                    szVar = new bab(null, 0, new byte[0]);
                }
            }
        }
        dpd dpdVar = geaVar.m;
        ais aisVar = geaVar.h;
        if (dpdVar != null) {
            if (szVar != null) {
                szVar = new as(szVar, dpdVar);
            } else {
                aisVar.e("Content-Type", dpdVar.f14578c);
            }
        }
        fzn fznVar = geaVar.f17972f;
        fznVar.getClass();
        fznVar.h = n;
        fznVar.f17730e = aisVar.d().f();
        fznVar.w(geaVar.f17973g, szVar);
        fznVar.p(dau.class, new dau(bkuVar.f11765f, this.l, bkuVar.i, arrayList));
        daw x = fznVar.x();
        fys fysVar = (fys) this.h;
        fysVar.getClass();
        return new ib(fysVar, x);
    }
}

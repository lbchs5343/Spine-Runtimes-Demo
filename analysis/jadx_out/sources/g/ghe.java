package g;

/* loaded from: classes.dex */
public abstract class ghe implements Runnable, Comparable, edw {
    private volatile Object _heap;

    /* renamed from: a, reason: collision with root package name */
    public long f18151a;

    /* renamed from: b, reason: collision with root package name */
    public int f18152b;

    public final void c(bpa bpaVar) {
        if (this._heap == bfc.f11436a) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        this._heap = bpaVar;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        long j = this.f18151a - ((ghe) obj).f18151a;
        if (j > 0) {
            return 1;
        }
        return j < 0 ? -1 : 0;
    }

    public final fql d() {
        Object obj = this._heap;
        if (obj instanceof fql) {
            return (fql) obj;
        }
        return null;
    }

    public final int e(long j, bpa bpaVar, er erVar) {
        synchronized (this) {
            if (this._heap == bfc.f11436a) {
                return 2;
            }
            synchronized (bpaVar) {
                try {
                    ghe[] gheVarArr = bpaVar.f17246c;
                    ghe gheVar = gheVarArr != null ? gheVarArr[0] : null;
                    if (er.f16019a.get(erVar) != 0) {
                        return 1;
                    }
                    if (gheVar == null) {
                        bpaVar.f11937a = j;
                    } else {
                        long j2 = gheVar.f18151a;
                        if (j2 - j < 0) {
                            j = j2;
                        }
                        if (j - bpaVar.f11937a > 0) {
                            bpaVar.f11937a = j;
                        }
                    }
                    long j3 = this.f18151a;
                    long j4 = bpaVar.f11937a;
                    if (j3 - j4 < 0) {
                        this.f18151a = j4;
                    }
                    bpaVar.f(this);
                    return 0;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // g.edw
    public final void f() {
        synchronized (this) {
            try {
                Object obj = this._heap;
                hy hyVar = bfc.f11436a;
                if (obj == hyVar) {
                    return;
                }
                bpa bpaVar = obj instanceof bpa ? (bpa) obj : null;
                if (bpaVar != null) {
                    bpaVar.i(this);
                }
                this._heap = hyVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String toString() {
        return "Delayed[nanos=" + this.f18151a + ']';
    }
}

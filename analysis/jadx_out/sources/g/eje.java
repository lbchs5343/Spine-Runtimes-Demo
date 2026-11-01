package g;

/* loaded from: classes.dex */
public final class eje {

    /* renamed from: a, reason: collision with root package name */
    public boolean f15639a;

    /* renamed from: b, reason: collision with root package name */
    public Object f15640b;

    /* renamed from: c, reason: collision with root package name */
    public gbb f15641c;

    /* renamed from: d, reason: collision with root package name */
    public frr f15642d;

    public final void e(Object obj) {
        this.f15639a = true;
        gbb gbbVar = this.f15641c;
        if (gbbVar != null) {
            dqq dqqVar = gbbVar.f17842b;
            dqqVar.getClass();
            if (obj == null) {
                obj = zi.f20394a;
            }
            if (zi.f20397d.e(dqqVar, null, obj)) {
                zi.k(dqqVar);
                this.f15640b = null;
                this.f15641c = null;
                this.f15642d = null;
            }
        }
    }

    public final void f(Throwable th) {
        this.f15639a = true;
        gbb gbbVar = this.f15641c;
        if (gbbVar == null || !gbbVar.f17842b.m(th)) {
            return;
        }
        this.f15640b = null;
        this.f15641c = null;
        this.f15642d = null;
    }

    public final void finalize() {
        frr frrVar;
        gbb gbbVar = this.f15641c;
        if (gbbVar != null) {
            dqq dqqVar = gbbVar.f17842b;
            if (!dqqVar.isDone()) {
                dqqVar.m(new bxj("The completer object was garbage collected - this future would otherwise never complete. The tag was: " + this.f15640b, 1));
            }
        }
        if (this.f15639a || (frrVar = this.f15642d) == null) {
            return;
        }
        frrVar.p(null);
    }
}

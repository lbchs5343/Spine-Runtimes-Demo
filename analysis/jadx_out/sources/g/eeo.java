package g;

/* loaded from: classes3.dex */
public final class eeo {

    /* renamed from: a, reason: collision with root package name */
    public final chw f15402a = new chw();

    public final void b(Exception exc) {
        chw chwVar = this.f15402a;
        chwVar.getClass();
        ckd.w(exc, "Exception must not be null");
        synchronized (chwVar.f12907g) {
            try {
                if (chwVar.j) {
                    return;
                }
                chwVar.j = true;
                chwVar.h = exc;
                chwVar.i.g(chwVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c(Object obj) {
        chw chwVar = this.f15402a;
        synchronized (chwVar.f12907g) {
            try {
                if (chwVar.j) {
                    return;
                }
                chwVar.j = true;
                chwVar.f12906f = obj;
                chwVar.i.g(chwVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

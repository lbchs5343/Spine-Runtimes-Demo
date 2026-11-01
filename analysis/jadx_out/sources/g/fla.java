package g;

/* loaded from: classes.dex */
public abstract class fla {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f16956a = new ThreadLocal();

    public static bkg b() {
        ThreadLocal threadLocal = f16956a;
        bkg bkgVar = (bkg) threadLocal.get();
        if (bkgVar != null) {
            return bkgVar;
        }
        agp agpVar = new agp(Thread.currentThread());
        threadLocal.set(agpVar);
        return agpVar;
    }
}

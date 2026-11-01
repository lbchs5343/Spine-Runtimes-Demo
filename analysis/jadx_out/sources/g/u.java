package g;

import android.view.WindowInsets;

/* loaded from: classes.dex */
public class u extends efp {

    /* renamed from: a, reason: collision with root package name */
    public oi f20084a;

    public u(anp anpVar, WindowInsets windowInsets) {
        super(anpVar, windowInsets);
        this.f20084a = null;
    }

    @Override // g.dif
    public final oi b() {
        if (this.f20084a == null) {
            WindowInsets windowInsets = this.ag;
            this.f20084a = oi.g(windowInsets.getStableInsetLeft(), windowInsets.getStableInsetTop(), windowInsets.getStableInsetRight(), windowInsets.getStableInsetBottom());
        }
        return this.f20084a;
    }

    @Override // g.dif
    public boolean c() {
        return this.ag.isConsumed();
    }

    @Override // g.dif
    public anp d() {
        return anp.c(null, this.ag.consumeStableInsets());
    }

    @Override // g.dif
    public anp e() {
        return anp.c(null, this.ag.consumeSystemWindowInsets());
    }

    @Override // g.dif
    public void f(oi oiVar) {
        this.f20084a = oiVar;
    }
}

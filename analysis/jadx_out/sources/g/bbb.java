package g;

import android.view.WindowInsets;

/* loaded from: classes.dex */
public class bbb extends ecs {

    /* renamed from: b, reason: collision with root package name */
    public final WindowInsets.Builder f11212b;

    public bbb() {
        this.f11212b = aft.c();
    }

    public bbb(anp anpVar) {
        super(anpVar);
        WindowInsets j = anpVar.j();
        this.f11212b = j != null ? aft.i(j) : aft.c();
    }

    @Override // g.ecs
    public void c(oi oiVar) {
        this.f11212b.setTappableElementInsets(oiVar.i());
    }

    @Override // g.ecs
    public void d(oi oiVar) {
        this.f11212b.setMandatorySystemGestureInsets(oiVar.i());
    }

    @Override // g.ecs
    public void e(oi oiVar) {
        this.f11212b.setStableInsets(oiVar.i());
    }

    @Override // g.ecs
    public void f(oi oiVar) {
        this.f11212b.setSystemGestureInsets(oiVar.i());
    }

    @Override // g.ecs
    public anp g() {
        WindowInsets build;
        k();
        build = this.f11212b.build();
        anp c2 = anp.c(null, build);
        c2.f10526b.s(this.j);
        return c2;
    }

    @Override // g.ecs
    public void h(oi oiVar) {
        this.f11212b.setSystemWindowInsets(oiVar.i());
    }
}

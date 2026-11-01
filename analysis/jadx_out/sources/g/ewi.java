package g;

/* loaded from: classes3.dex */
public final class ewi {

    /* renamed from: a, reason: collision with root package name */
    public boolean f16272a;

    /* renamed from: b, reason: collision with root package name */
    public Object f16273b;

    /* renamed from: c, reason: collision with root package name */
    public apy f16274c;

    /* renamed from: d, reason: collision with root package name */
    public eou f16275d;

    public final void e(Object obj) {
        this.f16272a = true;
        apy apyVar = this.f16274c;
        if (apyVar != null) {
            ggp ggpVar = apyVar.f10639b;
            ggpVar.getClass();
            if (obj == null) {
                obj = afp.f10143a;
            }
            if (afp.f10146d.f(ggpVar, null, obj)) {
                afp.i(ggpVar);
                this.f16273b = null;
                this.f16274c = null;
                this.f16275d = null;
            }
        }
    }

    public final void finalize() {
        eou eouVar;
        apy apyVar = this.f16274c;
        if (apyVar != null) {
            ggp ggpVar = apyVar.f10639b;
            if (!ggpVar.isDone()) {
                if (afp.f10146d.f(ggpVar, null, new fdv(new bxj("The completer object was garbage collected - this future would otherwise never complete. The tag was: ".concat(String.valueOf(this.f16273b)), 4)))) {
                    afp.i(ggpVar);
                }
            }
        }
        if (this.f16272a || (eouVar = this.f16275d) == null) {
            return;
        }
        eouVar.o(null);
    }
}

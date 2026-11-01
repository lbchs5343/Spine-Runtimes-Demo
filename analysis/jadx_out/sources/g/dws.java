package g;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class dws implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final adj f14974a;

    /* renamed from: b, reason: collision with root package name */
    public final gxm f14975b;

    public dws(adj adjVar, gxm gxmVar) {
        this.f14974a = adjVar;
        this.f14975b = gxmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f14974a.f10043a) {
            try {
                if (((dws) this.f14974a.f10045c.remove(this.f14975b)) != null) {
                    fme fmeVar = (fme) this.f14974a.f10046d.remove(this.f14975b);
                    if (fmeVar != null) {
                        gxm gxmVar = this.f14975b;
                        ggk ggkVar = (ggk) fmeVar;
                        cyl f2 = cyl.f();
                        Objects.toString(gxmVar);
                        f2.getClass();
                        ggkVar.f18094b.execute(new dki(ggkVar, 0));
                    }
                } else {
                    cyl f3 = cyl.f();
                    Objects.toString(this.f14975b);
                    f3.getClass();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

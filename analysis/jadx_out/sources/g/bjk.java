package g;

import java.util.List;

/* loaded from: classes.dex */
public abstract class bjk extends lh implements cfm {

    /* renamed from: c, reason: collision with root package name */
    public static final dba f11697c = dsr.k(bjk.class);

    /* renamed from: d, reason: collision with root package name */
    public cfm f11698d;

    public bjk(cfm cfmVar) {
        this.f11698d = cfmVar;
    }

    public List e() {
        return x();
    }

    @Override // g.cfm
    public boolean f(amj amjVar, amj amjVar2) {
        f11697c.p(getClass(), "Replace sub block not supported for class \"{}\"");
        return false;
    }
}

package g;

/* loaded from: classes.dex */
public final class dqq extends zi {
    public final /* synthetic */ gbb p;

    public dqq(gbb gbbVar) {
        this.p = gbbVar;
    }

    @Override // g.zi
    public final String o() {
        eje ejeVar = (eje) this.p.f17841a.get();
        if (ejeVar == null) {
            return "Completer object has been garbage collected, future will fail soon";
        }
        return "tag=[" + ejeVar.f15640b + "]";
    }
}

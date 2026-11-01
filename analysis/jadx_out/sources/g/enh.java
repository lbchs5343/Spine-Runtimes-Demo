package g;

import java.util.List;

/* loaded from: classes.dex */
public final class enh implements fyj, dvz {

    /* renamed from: a, reason: collision with root package name */
    public final fts f15860a;

    /* renamed from: b, reason: collision with root package name */
    public final cej f15861b;

    /* renamed from: c, reason: collision with root package name */
    public up f15862c;

    public enh(fts ftsVar, grq grqVar, cwk cwkVar) {
        this.f15860a = ftsVar;
        cej dq = cwkVar.f13631a.dq();
        this.f15861b = dq;
        grqVar.bg(dq);
        dq.l(this);
    }

    public static int d(int i, int i2) {
        int i3 = i / i2;
        if ((i ^ i2) < 0 && i3 * i2 != i) {
            i3--;
        }
        return i - (i3 * i2);
    }

    @Override // g.fyj
    public final void dq() {
        this.f15860a.invalidateSelf();
    }

    @Override // g.dvz
    public final void n(List list, List list2) {
    }
}

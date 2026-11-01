package g;

import java.util.List;

/* loaded from: classes.dex */
public final class cnv implements iu {

    /* renamed from: b, reason: collision with root package name */
    public final List f13204b;

    public cnv(List list) {
        this.f13204b = list;
    }

    @Override // g.iu
    public final void a(euy euyVar) {
        for (eyc eycVar : this.f13204b) {
            asu asuVar = eycVar.f16358a;
            int i = asuVar.f10769d;
            if (i != 0) {
                dsg dsgVar = new dsg(eycVar, asuVar.f10772g);
                cig cigVar = new cig(dsgVar, new ctw(dsgVar.u(), dsgVar.u()));
                for (int i2 = 0; i2 < i; i2++) {
                    euyVar.n(cigVar);
                    dsgVar.f14707d += 32;
                }
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // g.iu
    public final boolean isEmpty() {
        return this.f13204b.isEmpty();
    }
}

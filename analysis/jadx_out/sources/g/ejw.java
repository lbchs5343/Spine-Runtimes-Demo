package g;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class ejw implements fyj, dvz {

    /* renamed from: a, reason: collision with root package name */
    public final bsb f15685a;

    /* renamed from: b, reason: collision with root package name */
    public final bsb f15686b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f15687c;

    /* renamed from: d, reason: collision with root package name */
    public final bsb f15688d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f15689e = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    public final eyu f15690f;

    public ejw(grq grqVar, cxl cxlVar) {
        this.f15687c = cxlVar.f13690b;
        this.f15690f = cxlVar.getType();
        cej dq = cxlVar.f13692d.dq();
        this.f15685a = (bsb) dq;
        cej dq2 = cxlVar.f13693f.dq();
        this.f15686b = (bsb) dq2;
        cej dq3 = cxlVar.f13689a.dq();
        this.f15688d = (bsb) dq3;
        grqVar.bg(dq);
        grqVar.bg(dq2);
        grqVar.bg(dq3);
        dq.l(this);
        dq2.l(this);
        dq3.l(this);
    }

    @Override // g.fyj
    public final void dq() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f15689e;
            if (i >= arrayList.size()) {
                return;
            }
            ((fyj) arrayList.get(i)).dq();
            i++;
        }
    }

    public final void g(fyj fyjVar) {
        this.f15689e.add(fyjVar);
    }

    public eyu getType() {
        return this.f15690f;
    }

    @Override // g.dvz
    public final void n(List list, List list2) {
    }
}

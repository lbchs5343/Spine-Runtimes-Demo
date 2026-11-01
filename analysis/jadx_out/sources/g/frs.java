package g;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class frs implements eue {

    /* renamed from: a, reason: collision with root package name */
    public final acq f17306a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f17307b = new ArrayList();

    public frs(acq acqVar) {
        this.f17306a = acqVar;
    }

    @Override // g.eue
    public final String c() {
        return toString();
    }

    @Override // g.eue
    public final fky d() {
        return this.f17306a;
    }

    @Override // g.eue
    public final /* synthetic */ boolean e() {
        return false;
    }

    public final String toString() {
        ArrayList arrayList = this.f17307b;
        String h = evh.h(", ", arrayList);
        return h.length() > 300 ? evh.h("\n    ", arrayList) : h;
    }
}

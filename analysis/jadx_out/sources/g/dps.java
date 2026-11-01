package g;

import android.view.View;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class dps implements to {
    public final /* synthetic */ View h;
    public final /* synthetic */ ArrayList i;

    public dps(View view, ArrayList arrayList) {
        this.h = view;
        this.i = arrayList;
    }

    @Override // g.to
    public final void a(fqk fqkVar) {
    }

    @Override // g.to
    public final void b() {
    }

    @Override // g.to
    public final void c() {
    }

    @Override // g.to
    public final void d(fqk fqkVar) {
        g(fqkVar);
    }

    @Override // g.to
    public final void e(fqk fqkVar) {
        fqkVar.k(this);
        fqkVar.bi(this);
    }

    @Override // g.to
    public final void f(fqk fqkVar) {
        fqkVar.k(this);
        fqkVar.bi(this);
    }

    @Override // g.to
    public final void g(fqk fqkVar) {
        fqkVar.k(this);
        this.h.setVisibility(8);
        ArrayList arrayList = this.i;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((View) arrayList.get(i)).setVisibility(0);
        }
    }
}

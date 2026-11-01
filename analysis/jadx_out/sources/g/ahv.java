package g;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes3.dex */
public final class ahv extends doi {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ com.google.android.material.datepicker.c f10241a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ebb f10242b;

    public ahv(ebb ebbVar, com.google.android.material.datepicker.c cVar) {
        this.f10242b = ebbVar;
        this.f10241a = cVar;
    }

    @Override // g.doi
    public final void onScrolled(RecyclerView recyclerView, int i, int i2) {
        fin finVar = this.f10241a.f9042b;
        ebb ebbVar = this.f10242b;
        int bv = i < 0 ? ((LinearLayoutManager) ebbVar.o.getLayoutManager()).bv() : ((LinearLayoutManager) ebbVar.o.getLayoutManager()).by();
        edj monthsLater = finVar.getStart().monthsLater(bv);
        ebbVar.n = monthsLater;
        ebbVar.q.setText(finVar.getStart().monthsLater(bv).getLongName());
        ebbVar.t(finVar.getStart().monthsUntil(monthsLater));
    }
}

package g;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class ccd implements ekf {

    /* renamed from: c, reason: collision with root package name */
    public final efx f12625c;

    /* renamed from: d, reason: collision with root package name */
    public final int f12626d;

    /* renamed from: e, reason: collision with root package name */
    public final csm f12627e;

    public ccd(efx efxVar, int i, csm csmVar) {
        this.f12625c = efxVar;
        this.f12626d = i;
        this.f12627e = csmVar;
    }

    @Override // g.ekf
    public final androidx.recyclerview.widget.p a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        RecyclerView recyclerView = new RecyclerView(this.f12625c, null);
        recyclerView.setLayoutParams(new yx(-1, -2));
        recyclerView.setClipToPadding(false);
        recyclerView.setHorizontalScrollBarEnabled(false);
        recyclerView.setNestedScrollingEnabled(false);
        recyclerView.setOverScrollMode(1);
        recyclerView.setLayoutManager(new LinearLayoutManager(0));
        return new anw(recyclerView, this.f12626d, this.f12627e);
    }

    @Override // g.ekf
    public final void b(androidx.recyclerview.widget.p pVar, cng cngVar) {
        anw anwVar = (anw) pVar;
        RecyclerView recyclerView = anwVar.al;
        ArrayList arrayList = ((ajr) cngVar).f10335a;
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        recyclerView.setVisibility(arrayList.isEmpty() ? 8 : 0);
        anwVar.an(recyclerView.getWidth());
        fnr fnrVar = anwVar.ak;
        fnrVar.getClass();
        fnrVar.f17100a = new ArrayList(arrayList);
        fnrVar.notifyDataSetChanged();
    }
}

package g;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class bxa implements View.OnLongClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ androidx.recyclerview.widget.p f12359a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ect f12360b;

    public bxa(ect ectVar, androidx.recyclerview.widget.p pVar) {
        this.f12360b = ectVar;
        this.f12359a = pVar;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        RecyclerView recyclerView;
        androidx.recyclerview.widget.m adapter;
        int adapterPositionInRecyclerView;
        androidx.recyclerview.widget.p pVar = this.f12359a;
        int findRelativeAdapterPositionIn = (pVar.j == null || (recyclerView = pVar.m) == null || (adapter = recyclerView.getAdapter()) == null || (adapterPositionInRecyclerView = pVar.m.getAdapterPositionInRecyclerView(pVar)) == -1) ? -1 : adapter.findRelativeAdapterPositionIn(pVar.j, pVar, adapterPositionInRecyclerView);
        return findRelativeAdapterPositionIn != -1 && this.f12360b.i.g(findRelativeAdapterPositionIn);
    }
}

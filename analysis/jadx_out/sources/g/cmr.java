package g;

import android.view.View;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;

/* loaded from: classes.dex */
public final class cmr extends RecyclerView.k implements gqj {

    /* renamed from: a, reason: collision with root package name */
    public dlv f13138a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ dfp f13139b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cmr(dfp dfpVar, View view) {
        super(view);
        this.f13139b = dfpVar;
    }

    @Override // g.gqj
    public final void d() {
        cal calVar = this.f13139b.f14097b;
        if (calVar != null) {
            calVar.dq(this.f13138a);
        }
    }

    @Override // g.gqj
    public final void dq() {
        cal calVar = this.f13139b.f14097b;
        if (calVar != null) {
            calVar.d(this.f13138a);
        }
    }

    @Override // g.gqj
    public final View ox() {
        return this.f13138a.kk();
    }
}

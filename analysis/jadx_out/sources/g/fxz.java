package g;

import android.graphics.Rect;
import android.view.View;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;

/* loaded from: classes.dex */
public final class fxz extends RecyclerView.ia implements gqj {

    /* renamed from: a, reason: collision with root package name */
    public int f17613a;

    @Override // g.gqj
    public final void d() {
    }

    @Override // g.gqj
    public final void dq() {
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.ia
    public final void dq(Rect rect, View view, RecyclerView recyclerView, RecyclerView.r rVar) {
        super.dq(rect, view, recyclerView, rVar);
        int i = this.f17613a;
        rect.left = i;
        rect.right = i;
        rect.bottom = i;
        if (recyclerView.iw(view) == 0) {
            rect.top = i;
        }
    }

    @Override // g.gqj
    public final View ox() {
        return null;
    }
}

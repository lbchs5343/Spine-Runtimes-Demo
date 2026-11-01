package g;

import android.graphics.Canvas;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes3.dex */
public final class vu extends fji {
    @Override // g.fji
    public final void a(Canvas canvas, RecyclerView recyclerView) {
        if ((recyclerView.getAdapter() instanceof ehd) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
            throw null;
        }
    }
}

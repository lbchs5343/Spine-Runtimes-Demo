package g;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class dgn {

    /* renamed from: a, reason: collision with root package name */
    public long f14139a;

    /* renamed from: b, reason: collision with root package name */
    public long f14140b;

    /* renamed from: c, reason: collision with root package name */
    public ggw f14141c;

    /* renamed from: d, reason: collision with root package name */
    public long f14142d;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f14143e;

    /* renamed from: f, reason: collision with root package name */
    public long f14144f;

    public static void g(androidx.recyclerview.widget.p pVar) {
        RecyclerView recyclerView;
        int i = pVar.f313f;
        if (pVar.ac() || (i & 4) != 0 || (recyclerView = pVar.m) == null) {
            return;
        }
        recyclerView.getAdapterPositionInRecyclerView(pVar);
    }

    public abstract void h(androidx.recyclerview.widget.p pVar);

    public abstract void i();

    public abstract boolean j(androidx.recyclerview.widget.p pVar, androidx.recyclerview.widget.p pVar2, geq geqVar, geq geqVar2);

    public abstract boolean k();

    public final void l(androidx.recyclerview.widget.p pVar) {
        ggw ggwVar = this.f14141c;
        if (ggwVar != null) {
            RecyclerView recyclerView = (RecyclerView) ((evf) ggwVar).f16224f;
            pVar.x(true);
            View view = pVar.n;
            if (pVar.f309b != null && pVar.o == null) {
                pVar.f309b = null;
            }
            pVar.o = null;
            if ((pVar.f313f & 16) == 0 && !recyclerView.removeAnimatingView(view) && pVar.ah()) {
                recyclerView.removeDetachedView(view, false);
            }
        }
    }
}

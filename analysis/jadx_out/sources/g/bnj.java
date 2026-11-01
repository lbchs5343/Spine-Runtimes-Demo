package g;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class bnj extends gfe {

    /* renamed from: a, reason: collision with root package name */
    public bjd f11873a;

    /* renamed from: b, reason: collision with root package name */
    public RecyclerView f11874b;

    /* renamed from: c, reason: collision with root package name */
    public final adp f11875c = new adp(this);

    /* renamed from: d, reason: collision with root package name */
    public bjd f11876d;

    public static int e(View view, bjd bjdVar) {
        return ((bjdVar.q(view) / 2) + bjdVar.k(view)) - ((bjdVar.g() / 2) + bjdVar.p());
    }

    public static View f(androidx.recyclerview.widget.b bVar, bjd bjdVar) {
        int et = bVar.et();
        View view = null;
        if (et == 0) {
            return null;
        }
        int g2 = (bjdVar.g() / 2) + bjdVar.p();
        int i = he.UNDEFINED_ITEM_ID;
        for (int i2 = 0; i2 < et; i2++) {
            View eo = bVar.eo(i2);
            int abs = Math.abs(((bjdVar.q(eo) / 2) + bjdVar.k(eo)) - g2);
            if (abs < i) {
                view = eo;
                i = abs;
            }
        }
        return view;
    }

    public final bjd g(androidx.recyclerview.widget.b bVar) {
        bjd bjdVar = this.f11873a;
        if (bjdVar == null || bjdVar.f11690b != bVar) {
            this.f11873a = new bjd(bVar, 0);
        }
        return this.f11873a;
    }

    public final bjd h(androidx.recyclerview.widget.b bVar) {
        bjd bjdVar = this.f11876d;
        if (bjdVar == null || bjdVar.f11690b != bVar) {
            this.f11876d = new bjd(bVar, 1);
        }
        return this.f11876d;
    }

    public final int[] i(androidx.recyclerview.widget.b bVar, View view) {
        int[] iArr = new int[2];
        if (bVar.ca()) {
            iArr[0] = e(view, g(bVar));
        } else {
            iArr[0] = 0;
        }
        if (bVar.cd()) {
            iArr[1] = e(view, h(bVar));
            return iArr;
        }
        iArr[1] = 0;
        return iArr;
    }

    public final void j() {
        androidx.recyclerview.widget.b layoutManager;
        RecyclerView recyclerView = this.f11874b;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null) {
            return;
        }
        View f2 = layoutManager.cd() ? f(layoutManager, h(layoutManager)) : layoutManager.ca() ? f(layoutManager, g(layoutManager)) : null;
        if (f2 == null) {
            return;
        }
        int[] i = i(layoutManager, f2);
        int i2 = i[0];
        if (i2 == 0 && i[1] == 0) {
            return;
        }
        this.f11874b.smoothScrollBy(i2, i[1]);
    }
}

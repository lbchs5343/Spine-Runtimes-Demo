package g;

import androidx.recyclerview.widget.GridLayoutManager;

/* loaded from: classes3.dex */
public final class eri extends cgo {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ero f16026d;
    public final /* synthetic */ GridLayoutManager h;

    public eri(ero eroVar, GridLayoutManager gridLayoutManager) {
        this.f16026d = eroVar;
        this.h = gridLayoutManager;
    }

    @Override // g.cgo
    public final int _r(int i) {
        if (i == 0 || this.f16026d.j.getItemViewType(i) == 3) {
            return this.h.i;
        }
        return 1;
    }
}

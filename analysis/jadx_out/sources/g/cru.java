package g;

import android.graphics.Canvas;
import android.graphics.Matrix;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class cru extends ajj {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Matrix f13402d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ArrayList f13403e;

    public cru(ArrayList arrayList, Matrix matrix) {
        this.f13403e = arrayList;
        this.f13402d = matrix;
    }

    @Override // g.ajj
    public final void c(Matrix matrix, ech echVar, int i, Canvas canvas) {
        Iterator it = this.f13403e.iterator();
        while (it.hasNext()) {
            ((ajj) it.next()).c(this.f13402d, echVar, i, canvas);
        }
    }
}

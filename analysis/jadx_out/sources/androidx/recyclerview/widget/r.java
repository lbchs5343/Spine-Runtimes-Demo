package androidx.recyclerview.widget;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public int f315a;

    /* renamed from: b, reason: collision with root package name */
    public int f316b;

    /* renamed from: c, reason: collision with root package name */
    public int f317c;

    /* renamed from: d, reason: collision with root package name */
    public int[] f318d;

    public final void e(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("Layout positions must be non-negative");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("Pixel distance must be non-negative");
        }
        int i3 = this.f315a;
        int i4 = i3 * 2;
        int[] iArr = this.f318d;
        if (iArr == null) {
            int[] iArr2 = new int[4];
            this.f318d = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i4 >= iArr.length) {
            int[] iArr3 = new int[i3 * 4];
            this.f318d = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        }
        int[] iArr4 = this.f318d;
        iArr4[i4] = i;
        iArr4[i4 + 1] = i2;
        this.f315a++;
    }

    public final void f(RecyclerView recyclerView, boolean z) {
        this.f315a = 0;
        int[] iArr = this.f318d;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        b bVar = recyclerView.mLayout;
        if (recyclerView.mAdapter == null || bVar == null || !bVar.dv) {
            return;
        }
        if (z) {
            if (!recyclerView.mAdapterHelper.r()) {
                bVar.cs(recyclerView.mAdapter.getItemCount(), this);
            }
        } else if (!recyclerView.hasPendingAdapterUpdates()) {
            bVar.bu(this.f316b, this.f317c, recyclerView.mState, this);
        }
        int i = this.f315a;
        if (i > bVar.dx) {
            bVar.dx = i;
            bVar.dm = z;
            recyclerView.mRecycler.l();
        }
    }
}

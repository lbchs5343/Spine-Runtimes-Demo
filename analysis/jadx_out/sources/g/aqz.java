package g;

/* loaded from: classes.dex */
public final class aqz {

    /* renamed from: a, reason: collision with root package name */
    public boolean f10681a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f10682b;

    /* renamed from: c, reason: collision with root package name */
    public int f10683c;

    /* renamed from: d, reason: collision with root package name */
    public int f10684d;

    /* renamed from: e, reason: collision with root package name */
    public int f10685e;

    /* renamed from: f, reason: collision with root package name */
    public int f10686f;

    /* renamed from: g, reason: collision with root package name */
    public int f10687g;
    public boolean h;
    public long i;
    public boolean j;
    public int k;
    public boolean l;
    public int m;
    public boolean n;

    public final void o(int i) {
        if ((this.f10684d & i) != 0) {
            return;
        }
        throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i) + " but it is " + Integer.toBinaryString(this.f10684d));
    }

    public final int p() {
        return this.n ? this.k - this.m : this.f10686f;
    }

    public final String toString() {
        return "State{mTargetPosition=" + this.f10687g + ", mData=null, mItemCount=" + this.f10686f + ", mIsMeasuring=" + this.j + ", mPreviousLayoutItemCount=" + this.k + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.m + ", mStructureChanged=" + this.h + ", mInPreLayout=" + this.n + ", mRunSimpleAnimations=" + this.l + ", mRunPredictiveAnimations=" + this.f10682b + '}';
    }
}

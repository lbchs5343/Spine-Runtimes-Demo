package com.bytedance.sdk.component.widget.recycler;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;
import g.he;

/* loaded from: classes.dex */
public abstract class ig extends RecyclerView.ig {

    /* renamed from: d, reason: collision with root package name */
    private Scroller f2273d;
    RecyclerView dq;
    private final RecyclerView.q ox = new RecyclerView.q() { // from class: com.bytedance.sdk.component.widget.recycler.ig.1
        boolean dq = false;

        @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.q
        public void dq(RecyclerView recyclerView, int i) {
            super.dq(recyclerView, i);
            if (i == 0 && this.dq) {
                this.dq = false;
                ig.this.dq();
            }
        }

        @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.q
        public void dq(RecyclerView recyclerView, int i, int i2) {
            if (i == 0 && i2 == 0) {
                return;
            }
            this.dq = true;
        }
    };

    private void d() throws IllegalStateException {
        if (this.dq.getOnFlingListener() != null) {
            throw new IllegalStateException("An instance of OnFlingListener already set.");
        }
        this.dq.dq(this.ox);
        this.dq.setOnFlingListener(this);
    }

    private boolean d(RecyclerView.kk kkVar, int i, int i2) {
        RecyclerView.gh ox;
        int dq;
        if (!(kkVar instanceof RecyclerView.gh.d) || (ox = ox(kkVar)) == null || (dq = dq(kkVar, i, i2)) == -1) {
            return false;
        }
        ox.ox(dq);
        kkVar.dq(ox);
        return true;
    }

    private void ox() {
        this.dq.d(this.ox);
        this.dq.setOnFlingListener(null);
    }

    @Deprecated
    public iw d(RecyclerView.kk kkVar) {
        if (kkVar instanceof RecyclerView.gh.d) {
            return new iw(this.dq.getContext()) { // from class: com.bytedance.sdk.component.widget.recycler.ig.2
                @Override // com.bytedance.sdk.component.widget.recycler.iw
                public float dq(DisplayMetrics displayMetrics) {
                    return 100.0f / displayMetrics.densityDpi;
                }

                @Override // com.bytedance.sdk.component.widget.recycler.iw, com.bytedance.sdk.component.widget.recycler.RecyclerView.gh
                public void dq(View view, RecyclerView.r rVar, RecyclerView.gh.dq dqVar) {
                    ig igVar = ig.this;
                    RecyclerView recyclerView = igVar.dq;
                    if (recyclerView != null) {
                        int[] dq = igVar.dq(recyclerView.getLayoutManager(), view);
                        int i = dq[0];
                        int i2 = dq[1];
                        int dq2 = dq(Math.max(Math.abs(i), Math.abs(i2)));
                        if (dq2 > 0) {
                            dqVar.update(i, i2, dq2, ((iw) this).f2275d);
                        }
                    }
                }
            };
        }
        return null;
    }

    public int[] d(int i, int i2) {
        this.f2273d.fling(0, 0, i, i2, Integer.MIN_VALUE, he.UNDEFINED_ITEM_ID, Integer.MIN_VALUE, he.UNDEFINED_ITEM_ID);
        return new int[]{this.f2273d.getFinalX(), this.f2273d.getFinalY()};
    }

    public abstract int dq(RecyclerView.kk kkVar, int i, int i2);

    public abstract View dq(RecyclerView.kk kkVar);

    public void dq() {
        RecyclerView.kk layoutManager;
        View dq;
        RecyclerView recyclerView = this.dq;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (dq = dq(layoutManager)) == null) {
            return;
        }
        int[] dq2 = dq(layoutManager, dq);
        int i = dq2[0];
        if (i == 0 && dq2[1] == 0) {
            return;
        }
        this.dq.dq(i, dq2[1]);
    }

    public void dq(RecyclerView recyclerView) throws IllegalStateException {
        RecyclerView recyclerView2 = this.dq;
        if (recyclerView2 != recyclerView) {
            if (recyclerView2 != null) {
                ox();
            }
            this.dq = recyclerView;
            if (recyclerView != null) {
                d();
                this.f2273d = new Scroller(this.dq.getContext(), new DecelerateInterpolator());
                dq();
            }
        }
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.ig
    public boolean dq(int i, int i2) {
        RecyclerView.kk layoutManager = this.dq.getLayoutManager();
        if (layoutManager == null || this.dq.getAdapter() == null) {
            return false;
        }
        int minFlingVelocity = this.dq.getMinFlingVelocity();
        return (Math.abs(i2) > minFlingVelocity || Math.abs(i) > minFlingVelocity) && d(layoutManager, i, i2);
    }

    public abstract int[] dq(RecyclerView.kk kkVar, View view);

    public RecyclerView.gh ox(RecyclerView.kk kkVar) {
        return d(kkVar);
    }
}

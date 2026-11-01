package com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive;

import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;
import com.bytedance.sdk.component.widget.recycler.ia;
import com.bytedance.sdk.component.widget.recycler.ig;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.he;

/* loaded from: classes3.dex */
public class p extends ig {

    /* renamed from: d, reason: collision with root package name */
    private ia f3256d;
    private RecyclerView ox;
    private int p = 0;
    private boolean s = false;

    private float d(RecyclerView.kk kkVar, ia iaVar) {
        int i = kkVar.i();
        if (i == 0) {
            return 1.0f;
        }
        View view = null;
        View view2 = null;
        int i2 = he.UNDEFINED_ITEM_ID;
        int i3 = Integer.MIN_VALUE;
        for (int i4 = 0; i4 < i; i4++) {
            View ia = kkVar.ia(i4);
            int p = kkVar.p(ia);
            if (p != -1) {
                if (p < i2) {
                    view = ia;
                    i2 = p;
                }
                if (p > i3) {
                    view2 = ia;
                    i3 = p;
                }
            }
        }
        if (view == null || view2 == null) {
            return 1.0f;
        }
        int max = Math.max(iaVar.d(view), iaVar.d(view2)) - Math.min(iaVar.dq(view), iaVar.dq(view2));
        if (max == 0) {
            return 1.0f;
        }
        return (max * 1.0f) / ((i3 - i2) + 1);
    }

    private int dq(View view, ia iaVar) {
        return iaVar.dq(view) - iaVar.ox();
    }

    private int dq(RecyclerView.kk kkVar, ia iaVar, int i, int i2) {
        int[] d2 = d(i, i2);
        if (d(kkVar, iaVar) <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            return 0;
        }
        return (int) (d2[0] > 0 ? Math.floor(r2 / r1) : Math.ceil(r2 / r1));
    }

    private View dq(RecyclerView.kk kkVar, ia iaVar) {
        com.bytedance.sdk.component.widget.recycler.s sVar;
        int o;
        if (!(kkVar instanceof com.bytedance.sdk.component.widget.recycler.s) || (o = (sVar = (com.bytedance.sdk.component.widget.recycler.s) kkVar).o()) == -1 || sVar.mp() == kkVar.op() - 1) {
            return null;
        }
        View d2 = kkVar.d(o);
        return (iaVar.d(d2) < iaVar.s(d2) / 2 || iaVar.d(d2) <= 0) ? kkVar.d(o + 1) : d2;
    }

    private ia p(RecyclerView.kk kkVar) {
        if (this.f3256d == null) {
            this.f3256d = ia.dq(kkVar);
        }
        return this.f3256d;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.ig
    public com.bytedance.sdk.component.widget.recycler.iw d(RecyclerView.kk kkVar) {
        if (kkVar instanceof RecyclerView.gh.d) {
            return new com.bytedance.sdk.component.widget.recycler.iw(this.ox.getContext()) { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive.p.1
                @Override // com.bytedance.sdk.component.widget.recycler.iw
                public float dq(DisplayMetrics displayMetrics) {
                    return 30.0f / displayMetrics.densityDpi;
                }

                @Override // com.bytedance.sdk.component.widget.recycler.iw, com.bytedance.sdk.component.widget.recycler.RecyclerView.gh
                public void dq(View view, RecyclerView.r rVar, RecyclerView.gh.dq dqVar) {
                    p pVar = p.this;
                    int[] dq = pVar.dq(pVar.ox.getLayoutManager(), view);
                    int i = dq[0];
                    int i2 = dq[1];
                    int dq2 = dq(Math.max(Math.abs(i), Math.abs(i2)));
                    if (dq2 > 0) {
                        dqVar.update(i, i2, dq2, ((com.bytedance.sdk.component.widget.recycler.iw) this).f2275d);
                    }
                }
            };
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bytedance.sdk.component.widget.recycler.ig
    public int dq(RecyclerView.kk kkVar, int i, int i2) {
        int op;
        View dq;
        int p;
        int i3;
        PointF ox;
        int i4;
        if (!(kkVar instanceof RecyclerView.gh.d) || (op = kkVar.op()) == 0 || (dq = dq(kkVar)) == null || (p = kkVar.p(dq)) == -1 || (ox = ((RecyclerView.gh.d) kkVar).ox(op - 1)) == null) {
            return -1;
        }
        int wp = kkVar.wp() / p(kkVar).s(dq);
        if (kkVar.ox()) {
            i4 = dq(kkVar, p(kkVar), i, 0);
            if (i4 > wp) {
                i4 = wp;
            }
            int i5 = -wp;
            if (i4 < i5) {
                i4 = i5;
            }
            if (ox.x < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                i4 = -i4;
            }
        } else {
            i4 = 0;
        }
        if (i4 == 0) {
            return -1;
        }
        int i6 = p + i4;
        int i7 = i6 >= 0 ? i6 : 0;
        return i7 >= op ? i3 : i7;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.ig
    public View dq(RecyclerView.kk kkVar) {
        return dq(kkVar, p(kkVar));
    }

    @Override // com.bytedance.sdk.component.widget.recycler.ig
    public void dq(RecyclerView recyclerView) throws IllegalStateException {
        try {
            this.ox = recyclerView;
            super.dq(recyclerView);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.bytedance.sdk.component.widget.recycler.ig
    public int[] dq(RecyclerView.kk kkVar, View view) {
        int[] iArr = new int[2];
        if (kkVar.ox()) {
            iArr[0] = dq(view, p(kkVar));
            return iArr;
        }
        iArr[0] = 0;
        return iArr;
    }
}

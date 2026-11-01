package com.bytedance.sdk.component.widget.recycler;

import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.he;

/* loaded from: classes.dex */
public class kk extends ig {

    /* renamed from: d, reason: collision with root package name */
    private ia f2276d;
    private ia ox;

    private View d(RecyclerView.kk kkVar, ia iaVar) {
        int i = kkVar.i();
        View view = null;
        if (i == 0) {
            return null;
        }
        int i2 = he.UNDEFINED_ITEM_ID;
        for (int i3 = 0; i3 < i; i3++) {
            View ia = kkVar.ia(i3);
            int dq = iaVar.dq(ia);
            if (dq < i2) {
                view = ia;
                i2 = dq;
            }
        }
        return view;
    }

    private int dq(RecyclerView.kk kkVar, View view, ia iaVar) {
        int s;
        int s2 = (iaVar.s(view) / 2) + iaVar.dq(view);
        if (kkVar.fw()) {
            s = (iaVar.iw() / 2) + iaVar.ox();
        } else {
            s = iaVar.s() / 2;
        }
        return s2 - s;
    }

    private View dq(RecyclerView.kk kkVar, ia iaVar) {
        int i = kkVar.i();
        View view = null;
        if (i == 0) {
            return null;
        }
        int iw = kkVar.fw() ? (iaVar.iw() / 2) + iaVar.ox() : iaVar.s() / 2;
        int i2 = he.UNDEFINED_ITEM_ID;
        for (int i3 = 0; i3 < i; i3++) {
            View ia = kkVar.ia(i3);
            int abs = Math.abs(((iaVar.s(ia) / 2) + iaVar.dq(ia)) - iw);
            if (abs < i2) {
                view = ia;
                i2 = abs;
            }
        }
        return view;
    }

    private ia p(RecyclerView.kk kkVar) {
        ia iaVar = this.f2276d;
        if (iaVar == null || iaVar.dq != kkVar) {
            this.f2276d = ia.d(kkVar);
        }
        return this.f2276d;
    }

    private ia s(RecyclerView.kk kkVar) {
        ia iaVar = this.ox;
        if (iaVar == null || iaVar.dq != kkVar) {
            this.ox = ia.dq(kkVar);
        }
        return this.ox;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.ig
    public iw d(RecyclerView.kk kkVar) {
        if (kkVar instanceof RecyclerView.gh.d) {
            return new iw(this.dq.getContext()) { // from class: com.bytedance.sdk.component.widget.recycler.kk.1
                @Override // com.bytedance.sdk.component.widget.recycler.iw
                public int d(int i) {
                    return Math.min(100, super.d(i));
                }

                @Override // com.bytedance.sdk.component.widget.recycler.iw
                public float dq(DisplayMetrics displayMetrics) {
                    return 100.0f / displayMetrics.densityDpi;
                }

                @Override // com.bytedance.sdk.component.widget.recycler.iw, com.bytedance.sdk.component.widget.recycler.RecyclerView.gh
                public void dq(View view, RecyclerView.r rVar, RecyclerView.gh.dq dqVar) {
                    kk kkVar2 = kk.this;
                    int[] dq = kkVar2.dq(kkVar2.dq.getLayoutManager(), view);
                    int i = dq[0];
                    int i2 = dq[1];
                    int dq2 = dq(Math.max(Math.abs(i), Math.abs(i2)));
                    if (dq2 > 0) {
                        dqVar.update(i, i2, dq2, ((iw) this).f2275d);
                    }
                }
            };
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bytedance.sdk.component.widget.recycler.ig
    public int dq(RecyclerView.kk kkVar, int i, int i2) {
        int p;
        PointF ox;
        int op = kkVar.op();
        if (op == 0) {
            return -1;
        }
        View d2 = kkVar.p() ? d(kkVar, p(kkVar)) : kkVar.ox() ? d(kkVar, s(kkVar)) : null;
        if (d2 == null || (p = kkVar.p(d2)) == -1) {
            return -1;
        }
        boolean z = false;
        if (!kkVar.ox() ? i2 > 0 : i > 0) {
            z = true;
        }
        return (!(kkVar instanceof RecyclerView.gh.d) || (ox = ((RecyclerView.gh.d) kkVar).ox(op - 1)) == null || (ox.x >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT && ox.y >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT)) ? z ? p + 1 : p : z ? p - 1 : p;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.ig
    public View dq(RecyclerView.kk kkVar) {
        if (kkVar.p()) {
            return dq(kkVar, p(kkVar));
        }
        if (kkVar.ox()) {
            return dq(kkVar, s(kkVar));
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.ig
    public int[] dq(RecyclerView.kk kkVar, View view) {
        int[] iArr = new int[2];
        if (kkVar.ox()) {
            iArr[0] = dq(kkVar, view, s(kkVar));
        } else {
            iArr[0] = 0;
        }
        if (kkVar.p()) {
            iArr[1] = dq(kkVar, view, p(kkVar));
            return iArr;
        }
        iArr[1] = 0;
        return iArr;
    }
}

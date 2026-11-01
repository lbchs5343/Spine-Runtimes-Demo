package com.bytedance.sdk.component.widget.recycler;

import android.view.View;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;

/* loaded from: classes.dex */
class o {
    public static int d(RecyclerView.r rVar, ia iaVar, View view, View view2, RecyclerView.kk kkVar, boolean z) {
        if (kkVar.i() == 0 || rVar.p() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return rVar.p();
        }
        return (int) (((iaVar.d(view2) - iaVar.dq(view)) / (Math.abs(kkVar.p(view) - kkVar.p(view2)) + 1)) * rVar.p());
    }

    public static int dq(RecyclerView.r rVar, ia iaVar, View view, View view2, RecyclerView.kk kkVar, boolean z) {
        if (kkVar.i() == 0 || rVar.p() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(kkVar.p(view) - kkVar.p(view2)) + 1;
        }
        return Math.min(iaVar.iw(), iaVar.d(view2) - iaVar.dq(view));
    }

    public static int dq(RecyclerView.r rVar, ia iaVar, View view, View view2, RecyclerView.kk kkVar, boolean z, boolean z2) {
        if (kkVar.i() == 0 || rVar.p() == 0 || view == null || view2 == null) {
            return 0;
        }
        int max = z2 ? Math.max(0, (rVar.p() - Math.max(kkVar.p(view), kkVar.p(view2))) - 1) : Math.max(0, Math.min(kkVar.p(view), kkVar.p(view2)));
        if (z) {
            return Math.round((max * (Math.abs(iaVar.d(view2) - iaVar.dq(view)) / (Math.abs(kkVar.p(view) - kkVar.p(view2)) + 1))) + (iaVar.ox() - iaVar.dq(view)));
        }
        return max;
    }
}

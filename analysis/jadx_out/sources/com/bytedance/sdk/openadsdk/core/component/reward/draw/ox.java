package com.bytedance.sdk.openadsdk.core.component.reward.draw;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;
import com.bytedance.sdk.component.widget.recycler.kk;

/* loaded from: classes3.dex */
public class ox extends com.bytedance.sdk.component.widget.recycler.s {
    public boolean cd;

    /* renamed from: e, reason: collision with root package name */
    private dq f2590e;
    private final kk gh;
    private int i;
    private boolean k;
    private final RecyclerView.no kx;
    private boolean le;
    private int r;
    private int wp;

    public interface dq {
        void dq();

        void dq(boolean z, int i);

        void dq(boolean z, int i, boolean z2);
    }

    public ox(Context context, int i, boolean z) {
        super(context, i, z);
        this.le = false;
        this.cd = true;
        this.k = true;
        this.kx = new RecyclerView.no() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.draw.ox.1
            @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.no
            public void d(View view) {
                if (ox.this.f2590e != null) {
                    ox.this.f2590e.dq(ox.this.r >= 0, ox.this.p(view));
                }
            }

            @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.no
            public void dq(View view) {
                if (ox.this.f2590e == null || ox.this.i() != 1) {
                    return;
                }
                ox.this.f2590e.dq();
            }
        };
        this.gh = new kk();
    }

    @Override // com.bytedance.sdk.component.widget.recycler.s, com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public int d(int i, RecyclerView.f fVar, RecyclerView.r rVar) {
        this.r = i;
        return super.d(i, fVar, rVar);
    }

    @Override // com.bytedance.sdk.component.widget.recycler.s, com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public int dq(int i, RecyclerView.f fVar, RecyclerView.r rVar) {
        this.r = i;
        return super.dq(i, fVar, rVar);
    }

    @Override // com.bytedance.sdk.component.widget.recycler.s, com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public void dq(RecyclerView recyclerView, RecyclerView.f fVar) {
        super.dq(recyclerView, fVar);
        try {
            s sVar = (s) recyclerView.p(this.wp);
            if (sVar != null) {
                sVar.ox();
            }
        } catch (Exception e2) {
            ig.d("cubic detached exception:" + e2.getMessage());
        }
    }

    public void dq(dq dqVar) {
        this.f2590e = dqVar;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public void no(int i) {
        boolean z;
        dq dqVar;
        this.i = i;
        if (i == 0) {
            View dq2 = this.gh.dq(this);
            if (dq2 != null) {
                int p = p(dq2);
                z = this.wp == p;
                this.wp = p;
            } else {
                z = true;
            }
            if (this.le) {
                this.le = false;
                this.k = this.cd;
                if (!z && (dqVar = this.f2590e) != null) {
                    boolean z2 = this.r >= 0;
                    int i2 = this.wp;
                    dqVar.dq(z2, i2, i2 == op() - 1);
                }
            }
        }
        if (i == 2) {
            this.le = true;
        }
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public void ox(RecyclerView recyclerView) {
        super.ox(recyclerView);
        this.gh.dq(recyclerView);
        recyclerView.dq(this.kx);
    }

    public void ox(boolean z) {
        this.cd = z;
        if (z || this.i == 0) {
            this.k = z;
        }
    }

    @Override // com.bytedance.sdk.component.widget.recycler.s, com.bytedance.sdk.component.widget.recycler.RecyclerView.kk
    public boolean p() {
        return this.k;
    }
}

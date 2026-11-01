package com.bytedance.sdk.component.widget.recycler;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;

/* loaded from: classes.dex */
public abstract class ia {

    /* renamed from: d, reason: collision with root package name */
    final Rect f2272d;
    protected final RecyclerView.kk dq;
    private int ox;

    private ia(RecyclerView.kk kkVar) {
        this.ox = Integer.MIN_VALUE;
        this.f2272d = new Rect();
        this.dq = kkVar;
    }

    public static ia d(RecyclerView.kk kkVar) {
        return new ia(kkVar) { // from class: com.bytedance.sdk.component.widget.recycler.ia.2
            @Override // com.bytedance.sdk.component.widget.recycler.ia
            public int d(View view) {
                return this.dq.o(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.o) view.getLayoutParams())).bottomMargin;
            }

            @Override // com.bytedance.sdk.component.widget.recycler.ia
            public int dq(View view) {
                return this.dq.ia(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.o) view.getLayoutParams())).topMargin;
            }

            @Override // com.bytedance.sdk.component.widget.recycler.ia
            public void dq(int i) {
                this.dq.o(i);
            }

            @Override // com.bytedance.sdk.component.widget.recycler.ia
            public int ia() {
                return this.dq.k();
            }

            @Override // com.bytedance.sdk.component.widget.recycler.ia
            public int iw() {
                return (this.dq.e() - this.dq.h()) - this.dq.bl();
            }

            @Override // com.bytedance.sdk.component.widget.recycler.ia
            public int iw(View view) {
                RecyclerView.o oVar = (RecyclerView.o) view.getLayoutParams();
                return this.dq.s(view) + ((ViewGroup.MarginLayoutParams) oVar).leftMargin + ((ViewGroup.MarginLayoutParams) oVar).rightMargin;
            }

            @Override // com.bytedance.sdk.component.widget.recycler.ia
            public int mn() {
                return this.dq.bl();
            }

            @Override // com.bytedance.sdk.component.widget.recycler.ia
            public int ox() {
                return this.dq.h();
            }

            @Override // com.bytedance.sdk.component.widget.recycler.ia
            public int ox(View view) {
                this.dq.dq(view, true, this.f2272d);
                return this.f2272d.bottom;
            }

            @Override // com.bytedance.sdk.component.widget.recycler.ia
            public int p() {
                return this.dq.e() - this.dq.bl();
            }

            @Override // com.bytedance.sdk.component.widget.recycler.ia
            public int p(View view) {
                this.dq.dq(view, true, this.f2272d);
                return this.f2272d.top;
            }

            @Override // com.bytedance.sdk.component.widget.recycler.ia
            public int s() {
                return this.dq.e();
            }

            @Override // com.bytedance.sdk.component.widget.recycler.ia
            public int s(View view) {
                RecyclerView.o oVar = (RecyclerView.o) view.getLayoutParams();
                return this.dq.iw(view) + ((ViewGroup.MarginLayoutParams) oVar).topMargin + ((ViewGroup.MarginLayoutParams) oVar).bottomMargin;
            }
        };
    }

    public static ia dq(RecyclerView.kk kkVar) {
        return new ia(kkVar) { // from class: com.bytedance.sdk.component.widget.recycler.ia.1
            @Override // com.bytedance.sdk.component.widget.recycler.ia
            public int d(View view) {
                return this.dq.kk(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.o) view.getLayoutParams())).rightMargin;
            }

            @Override // com.bytedance.sdk.component.widget.recycler.ia
            public int dq(View view) {
                return this.dq.mn(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.o) view.getLayoutParams())).leftMargin;
            }

            @Override // com.bytedance.sdk.component.widget.recycler.ia
            public void dq(int i) {
                this.dq.kk(i);
            }

            @Override // com.bytedance.sdk.component.widget.recycler.ia
            public int ia() {
                return this.dq.le();
            }

            @Override // com.bytedance.sdk.component.widget.recycler.ia
            public int iw() {
                return (this.dq.wp() - this.dq.kx()) - this.dq.ji();
            }

            @Override // com.bytedance.sdk.component.widget.recycler.ia
            public int iw(View view) {
                RecyclerView.o oVar = (RecyclerView.o) view.getLayoutParams();
                return this.dq.iw(view) + ((ViewGroup.MarginLayoutParams) oVar).topMargin + ((ViewGroup.MarginLayoutParams) oVar).bottomMargin;
            }

            @Override // com.bytedance.sdk.component.widget.recycler.ia
            public int mn() {
                return this.dq.ji();
            }

            @Override // com.bytedance.sdk.component.widget.recycler.ia
            public int ox() {
                return this.dq.kx();
            }

            @Override // com.bytedance.sdk.component.widget.recycler.ia
            public int ox(View view) {
                this.dq.dq(view, true, this.f2272d);
                return this.f2272d.right;
            }

            @Override // com.bytedance.sdk.component.widget.recycler.ia
            public int p() {
                return this.dq.wp() - this.dq.ji();
            }

            @Override // com.bytedance.sdk.component.widget.recycler.ia
            public int p(View view) {
                this.dq.dq(view, true, this.f2272d);
                return this.f2272d.left;
            }

            @Override // com.bytedance.sdk.component.widget.recycler.ia
            public int s() {
                return this.dq.wp();
            }

            @Override // com.bytedance.sdk.component.widget.recycler.ia
            public int s(View view) {
                RecyclerView.o oVar = (RecyclerView.o) view.getLayoutParams();
                return this.dq.s(view) + ((ViewGroup.MarginLayoutParams) oVar).leftMargin + ((ViewGroup.MarginLayoutParams) oVar).rightMargin;
            }
        };
    }

    public static ia dq(RecyclerView.kk kkVar, int i) {
        if (i == 0) {
            return dq(kkVar);
        }
        if (i == 1) {
            return d(kkVar);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public int d() {
        if (Integer.MIN_VALUE == this.ox) {
            return 0;
        }
        return iw() - this.ox;
    }

    public abstract int d(View view);

    public abstract int dq(View view);

    public void dq() {
        this.ox = iw();
    }

    public abstract void dq(int i);

    public abstract int ia();

    public abstract int iw();

    public abstract int iw(View view);

    public abstract int mn();

    public abstract int ox();

    public abstract int ox(View view);

    public abstract int p();

    public abstract int p(View view);

    public abstract int s();

    public abstract int s(View view);
}

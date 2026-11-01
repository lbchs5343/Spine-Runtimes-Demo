package com.bytedance.sdk.component.widget.recycler;

import android.view.View;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;

/* loaded from: classes.dex */
public abstract class no extends RecyclerView.iw {
    boolean ia = true;

    public abstract boolean d(RecyclerView.k kVar);

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.iw
    public boolean d(RecyclerView.k kVar, RecyclerView.iw.d dVar, RecyclerView.iw.d dVar2) {
        int i;
        int i2;
        return (dVar == null || ((i = dVar.dq) == (i2 = dVar2.dq) && dVar.f2251d == dVar2.f2251d)) ? d(kVar) : dq(kVar, i, dVar.f2251d, i2, dVar2.f2251d);
    }

    public final void dq(RecyclerView.k kVar, boolean z) {
        iw(kVar);
    }

    public abstract boolean dq(RecyclerView.k kVar);

    public abstract boolean dq(RecyclerView.k kVar, int i, int i2, int i3, int i4);

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.iw
    public boolean dq(RecyclerView.k kVar, RecyclerView.iw.d dVar, RecyclerView.iw.d dVar2) {
        int i = dVar.dq;
        int i2 = dVar.f2251d;
        View view = kVar.p;
        int left = dVar2 == null ? view.getLeft() : dVar2.dq;
        int top = dVar2 == null ? view.getTop() : dVar2.f2251d;
        if (kVar.i() || (i == left && i2 == top)) {
            return dq(kVar);
        }
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        return dq(kVar, i, i2, left, top);
    }

    public abstract boolean dq(RecyclerView.k kVar, RecyclerView.k kVar2, int i, int i2, int i3, int i4);

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.iw
    public boolean dq(RecyclerView.k kVar, RecyclerView.k kVar2, RecyclerView.iw.d dVar, RecyclerView.iw.d dVar2) {
        int i;
        int i2;
        int i3 = dVar.dq;
        int i4 = dVar.f2251d;
        if (kVar2.mn()) {
            int i5 = dVar.dq;
            i2 = dVar.f2251d;
            i = i5;
        } else {
            i = dVar2.dq;
            i2 = dVar2.f2251d;
        }
        return dq(kVar, kVar2, i3, i4, i, i2);
    }

    public final void ia(RecyclerView.k kVar) {
        iw(kVar);
    }

    public final void kk(RecyclerView.k kVar) {
        iw(kVar);
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.iw
    public boolean mn(RecyclerView.k kVar) {
        return !this.ia || kVar.cd();
    }

    public final void o(RecyclerView.k kVar) {
        iw(kVar);
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.iw
    public boolean ox(RecyclerView.k kVar, RecyclerView.iw.d dVar, RecyclerView.iw.d dVar2) {
        int i = dVar.dq;
        int i2 = dVar2.dq;
        if (i != i2 || dVar.f2251d != dVar2.f2251d) {
            return dq(kVar, i, dVar.f2251d, i2, dVar2.f2251d);
        }
        kk(kVar);
        return false;
    }
}

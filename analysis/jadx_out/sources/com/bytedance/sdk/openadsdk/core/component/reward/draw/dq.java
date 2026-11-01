package com.bytedance.sdk.openadsdk.core.component.reward.draw;

import android.content.Context;
import android.view.ViewGroup;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;
import g.he;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class dq extends RecyclerView.dq<s> {
    private final Context dq;
    private final float ox;
    private final float p;

    /* renamed from: d, reason: collision with root package name */
    private final List<d> f2589d = new ArrayList();
    private final List<s> s = new ArrayList();

    public dq(Context context, float f2, float f3) {
        this.dq = context;
        this.ox = f2;
        this.p = f3;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.dq
    public long d(int i) {
        return i;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.dq
    public int dq() {
        return he.UNDEFINED_ITEM_ID;
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.dq
    public void dq(s sVar) {
        super.dq((dq) sVar);
        sVar.c();
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.dq
    public void dq(s sVar, int i) {
        List<d> list = this.f2589d;
        sVar.dq(list.get(i % list.size()), this.ox, this.p);
    }

    public void dq(List<d> list) {
        this.f2589d.clear();
        this.f2589d.addAll(list);
        ox();
    }

    @Override // com.bytedance.sdk.component.widget.recycler.RecyclerView.dq
    /* renamed from: ox, reason: merged with bridge method [inline-methods] */
    public s dq(ViewGroup viewGroup, int i) {
        s sVar = new s(com.bytedance.sdk.openadsdk.res.s.ig(this.dq));
        this.s.add(sVar);
        return sVar;
    }

    public void p() {
        Iterator<s> it = this.s.iterator();
        while (it.hasNext()) {
            it.next().c();
        }
        this.s.clear();
    }
}

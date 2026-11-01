package g;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.component.widget.recycler.RecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class eid extends eyh {

    /* renamed from: a, reason: collision with root package name */
    public List f15581a;
    public HashMap aa;

    /* renamed from: ab, reason: collision with root package name */
    public cal f15582ab;

    /* renamed from: g, reason: collision with root package name */
    public gco f15583g;
    public dfp w;
    public com.bytedance.sdk.component.widget.recycler.s y;

    @Override // g.eyh
    public final ewk dq() {
        return null;
    }

    @Override // g.dlv
    public final void dq(ViewGroup.LayoutParams layoutParams) {
    }

    @Override // g.eyh
    public final void dq(dlv dlvVar) {
        if (dlvVar == null) {
            return;
        }
        ((eyh) this).dq.add(dlvVar);
        if (dlvVar.n() != null) {
            this.aa.put(Integer.valueOf(dlvVar.n().hashCode()), dlvVar.h());
        }
    }

    @Override // g.eyh
    public final void dq(dlv dlvVar, ViewGroup.LayoutParams layoutParams) {
        ((eyh) this).dq.add(dlvVar);
        this.aa.put(Integer.valueOf(dlvVar.n().hashCode()), dlvVar.h());
    }

    @Override // g.dlv
    public final void dq(String str, String str2) {
        super.dq(str, str2);
        str.getClass();
        if (str.equals("layoutType") && !TextUtils.equals("grid", str2)) {
            this.y = new com.bytedance.sdk.component.widget.recycler.s(this.s);
        }
    }

    @Override // g.dlv
    public final View ox() {
        return new RecyclerView(this.s);
    }

    @Override // g.dlv
    public final void p() {
        super.p();
        Context context = this.s;
        dfp dfpVar = new dfp();
        dfpVar.j = true;
        dfpVar.i = context;
        this.w = dfpVar;
        dfpVar.f14096a = this.f14391b;
        dfpVar.f14101g = this.tl;
        dfpVar.f14097b = this.f15582ab;
        dfpVar.h = this.aa;
        List list = this.f15581a;
        if (dfpVar.f14099e == null) {
            dfpVar.f14099e = new ArrayList();
        }
        dfpVar.f14099e.addAll(list);
        ((RecyclerView) this.ia).setLayoutManager(this.y);
        ((RecyclerView) this.ia).setAdapter(this.w);
        RecyclerView recyclerView = (RecyclerView) this.ia;
        int f2 = (int) dxo.f(this.s, 10.0f);
        fxz fxzVar = new fxz();
        fxzVar.f17613a = f2;
        recyclerView.dq((RecyclerView.ia) fxzVar);
        ((RecyclerView) this.ia).dq((RecyclerView.q) new vt(this, new cit()));
    }
}

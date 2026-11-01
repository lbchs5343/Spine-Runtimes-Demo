package g;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import cn.trinea.android.developertools.R;

/* loaded from: classes3.dex */
public final class bze extends androidx.recyclerview.widget.m {

    /* renamed from: a, reason: collision with root package name */
    public final cuz f12491a;

    /* renamed from: b, reason: collision with root package name */
    public atp f12492b = null;

    public bze(cuz cuzVar) {
        this.f12491a = cuzVar;
    }

    @Override // androidx.recyclerview.widget.m
    public final int getItemCount() {
        atp atpVar = this.f12492b;
        if (atpVar == null) {
            return 0;
        }
        return Math.max(1, atpVar.f10814a) + 1;
    }

    @Override // androidx.recyclerview.widget.m
    public final int getItemViewType(int i) {
        if (i == 0) {
            return 0;
        }
        atp atpVar = this.f12492b;
        if (atpVar != null && atpVar.f10814a == 0) {
            return 3;
        }
        Object k = atpVar.k(i - 1);
        cuz cuzVar = this.f12491a;
        return cuzVar.u ? cuzVar.ac(k) ? 5 : 4 : cuzVar.ac(k) ? 2 : 1;
    }

    @Override // androidx.recyclerview.widget.m
    public final void onBindViewHolder(androidx.recyclerview.widget.p pVar, int i) {
        cuz cuzVar = this.f12491a;
        if (i == 0) {
            cuzVar.getClass();
            ((pu) pVar).al.setText("..");
        } else if (getItemViewType(i) == 3) {
            cuzVar.ag(pVar);
        } else {
            int i2 = i - 1;
            cuzVar.ab((amu) pVar, i2, this.f12492b.k(i2));
        }
    }

    @Override // androidx.recyclerview.widget.m
    public final androidx.recyclerview.widget.p onCreateViewHolder(ViewGroup viewGroup, int i) {
        cuz cuzVar = this.f12491a;
        if (i == 0) {
            return new pu(cuzVar, LayoutInflater.from(cuzVar.getActivity()).inflate(R.layout.nnf_filepicker_listitem_dir, viewGroup, false));
        }
        if (i == 2) {
            return new evr(cuzVar, LayoutInflater.from(cuzVar.getActivity()).inflate(R.layout.nnf_filepicker_listitem_checkable, viewGroup, false));
        }
        if (i == 3) {
            return new bpq(LayoutInflater.from(cuzVar.getActivity()).inflate(R.layout.nnf_filepicker_empty, viewGroup, false));
        }
        if (i != 4) {
            return i != 5 ? new amu(cuzVar, LayoutInflater.from(cuzVar.getActivity()).inflate(R.layout.nnf_filepicker_listitem_dir, viewGroup, false)) : new evr(cuzVar, LayoutInflater.from(cuzVar.getActivity()).inflate(R.layout.nnf_filepicker_griditem, viewGroup, false));
        }
        View inflate = LayoutInflater.from(cuzVar.getActivity()).inflate(R.layout.nnf_filepicker_griditem, viewGroup, false);
        inflate.findViewById(R.id.checkbox).setVisibility(8);
        return new amu(cuzVar, inflate);
    }

    @Override // androidx.recyclerview.widget.m
    public final void onViewRecycled(androidx.recyclerview.widget.p pVar) {
        this.f12491a.aj(pVar);
        super.onViewRecycled(pVar);
    }
}

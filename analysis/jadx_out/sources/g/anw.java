package g;

import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class anw extends androidx.recyclerview.widget.p {
    public final fnr ak;
    public final RecyclerView al;
    public final int am;

    public anw(RecyclerView recyclerView, int i, csm csmVar) {
        super(recyclerView);
        this.al = recyclerView;
        this.am = i;
        fnr fnrVar = new fnr(recyclerView.getContext(), i, csmVar);
        this.ak = fnrVar;
        recyclerView.setAdapter(fnrVar);
        recyclerView.addOnLayoutChangeListener(new axc(2, this));
    }

    public final void an(int i) {
        if (i > 0) {
            int max = Math.max(1, i / this.am);
            fnr fnrVar = this.ak;
            if (fnrVar.f17101b == max) {
                return;
            }
            fnrVar.f17101b = max;
            fnrVar.notifyItemRangeChanged(0, fnrVar.f17100a.size());
        }
    }
}

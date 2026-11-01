package g;

import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class adp extends doi {

    /* renamed from: a, reason: collision with root package name */
    public boolean f10051a = false;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ bnj f10052b;

    public adp(bnj bnjVar) {
        this.f10052b = bnjVar;
    }

    @Override // g.doi
    public final void onScrollStateChanged(RecyclerView recyclerView, int i) {
        if (i == 0 && this.f10051a) {
            this.f10051a = false;
            this.f10052b.j();
        }
    }

    @Override // g.doi
    public final void onScrolled(RecyclerView recyclerView, int i, int i2) {
        if (i == 0 && i2 == 0) {
            return;
        }
        this.f10051a = true;
    }
}

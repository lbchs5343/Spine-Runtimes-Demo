package g;

import android.widget.AbsListView;

/* loaded from: classes.dex */
public final class ebf implements AbsListView.OnScrollListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ cfi f15230a;

    public ebf(cfi cfiVar) {
        this.f15230a = cfiVar;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i) {
        cfi cfiVar = this.f15230a;
        fll fllVar = cfiVar.ae;
        if (i != 1 || cfiVar.ag.getInputMethodMode() == 2 || cfiVar.ag.getContentView() == null) {
            return;
        }
        cfiVar.u.removeCallbacks(fllVar);
        fllVar.run();
    }
}

package g;

import androidx.appcompat.widget.ActionBarContextView;

/* loaded from: classes.dex */
public final class eqs implements gig {

    /* renamed from: a, reason: collision with root package name */
    public boolean f16010a = false;

    /* renamed from: b, reason: collision with root package name */
    public int f16011b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActionBarContextView f16012c;

    public eqs(ActionBarContextView actionBarContextView) {
        this.f16012c = actionBarContextView;
    }

    @Override // g.gig
    public final void bh() {
        this.f16010a = true;
    }

    @Override // g.gig
    public final void bk() {
        super/*android.view.ViewGroup*/.setVisibility(0);
        this.f16010a = false;
    }

    @Override // g.gig
    public final void bp() {
        if (this.f16010a) {
            return;
        }
        ActionBarContextView actionBarContextView = this.f16012c;
        actionBarContextView.t = null;
        super/*android.view.ViewGroup*/.setVisibility(this.f16011b);
    }
}

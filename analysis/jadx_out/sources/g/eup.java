package g;

import android.view.View;
import android.widget.AbsListView;

/* loaded from: classes.dex */
public final class eup implements AbsListView.OnScrollListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f16190a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f16191b;

    public eup(View view, View view2) {
        this.f16190a = view;
        this.f16191b = view2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
        bgn.aj(absListView, this.f16190a, this.f16191b);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i) {
    }
}

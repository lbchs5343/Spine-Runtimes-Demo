package g;

import android.view.ScrollFeedbackProvider;
import androidx.core.widget.NestedScrollView;

/* loaded from: classes.dex */
public final class cfd implements ffg {

    /* renamed from: a, reason: collision with root package name */
    public final ScrollFeedbackProvider f12774a;

    public cfd(NestedScrollView nestedScrollView) {
        this.f12774a = ScrollFeedbackProvider.createProvider(nestedScrollView);
    }

    @Override // g.ffg
    public final void onScrollLimit(int i, int i2, int i3, boolean z) {
        this.f12774a.onScrollLimit(i, i2, i3, z);
    }

    @Override // g.ffg
    public final void onScrollProgress(int i, int i2, int i3, int i4) {
        this.f12774a.onScrollProgress(i, i2, i3, i4);
    }
}

package g;

import android.view.View;
import android.view.accessibility.AccessibilityManager;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.behavior.HideViewOnScrollBehavior;

/* loaded from: classes3.dex */
public final /* synthetic */ class dvd implements AccessibilityManager.TouchExplorationStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14884a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f14885b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ dip f14886c;

    public /* synthetic */ dvd(dip dipVar, View view, int i) {
        this.f14884a = i;
        this.f14886c = dipVar;
        this.f14885b = view;
    }

    @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
    public final void onTouchExplorationStateChanged(boolean z) {
        switch (this.f14884a) {
            case 0:
                HideBottomViewOnScrollBehavior hideBottomViewOnScrollBehavior = (HideBottomViewOnScrollBehavior) this.f14886c;
                if (z && hideBottomViewOnScrollBehavior.v == 1) {
                    hideBottomViewOnScrollBehavior.y(this.f14885b);
                    break;
                }
                break;
            default:
                HideViewOnScrollBehavior hideViewOnScrollBehavior = (HideViewOnScrollBehavior) this.f14886c;
                if (z && hideViewOnScrollBehavior.v == 1) {
                    hideViewOnScrollBehavior.y(this.f14885b);
                    break;
                }
                break;
        }
    }
}

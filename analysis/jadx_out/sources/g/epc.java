package g;

import androidx.appcompat.widget.ActionBarOverlayLayout;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class epc implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15931a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActionBarOverlayLayout f15932b;

    public /* synthetic */ epc(ActionBarOverlayLayout actionBarOverlayLayout, int i) {
        this.f15931a = i;
        this.f15932b = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f15931a) {
            case 0:
                ActionBarOverlayLayout actionBarOverlayLayout = this.f15932b;
                actionBarOverlayLayout.ag();
                actionBarOverlayLayout.aa = actionBarOverlayLayout.q.animate().translationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT).setListener(actionBarOverlayLayout.v);
                break;
            default:
                ActionBarOverlayLayout actionBarOverlayLayout2 = this.f15932b;
                actionBarOverlayLayout2.ag();
                actionBarOverlayLayout2.aa = actionBarOverlayLayout2.q.animate().translationY(-actionBarOverlayLayout2.q.getHeight()).setListener(actionBarOverlayLayout2.v);
                break;
        }
    }
}

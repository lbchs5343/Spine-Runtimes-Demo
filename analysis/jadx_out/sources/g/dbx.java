package g;

import android.view.View;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class dbx extends byh {
    public final /* synthetic */ hp bn;
    public final /* synthetic */ int bo;

    public /* synthetic */ dbx(hp hpVar, int i) {
        this.bo = i;
        this.bn = hpVar;
    }

    @Override // g.gig
    public final void bp() {
        View view;
        int i = this.bo;
        hp hpVar = this.bn;
        switch (i) {
            case 0:
                if (hpVar.f19385e && (view = hpVar.y) != null) {
                    view.setTranslationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                    hpVar.f19387g.setTranslationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                }
                hpVar.f19387g.setVisibility(8);
                hpVar.f19387g.setTransitioning(false);
                hpVar.o = null;
                clx clxVar = hpVar.f19384d;
                if (clxVar != null) {
                    clxVar.u(hpVar.t);
                    hpVar.t = null;
                    hpVar.f19384d = null;
                }
                ActionBarOverlayLayout actionBarOverlayLayout = hpVar.w;
                if (actionBarOverlayLayout != null) {
                    WeakHashMap weakHashMap = goi.f18490c;
                    dzc.c(actionBarOverlayLayout);
                    break;
                }
                break;
            default:
                hpVar.o = null;
                hpVar.f19387g.requestLayout();
                break;
        }
    }
}

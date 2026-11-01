package g;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.material.chip.Chip;

/* loaded from: classes3.dex */
public final class awv extends ViewOutlineProvider {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Chip f11003a;

    public awv(Chip chip) {
        this.f11003a = chip;
    }

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        bko bkoVar = this.f11003a.o;
        if (bkoVar != null) {
            bkoVar.getOutline(outline);
        } else {
            outline.setAlpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
    }
}

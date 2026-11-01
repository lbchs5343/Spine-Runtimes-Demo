package g;

import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.bytedance.sdk.openadsdk.TTAdDislike;

/* loaded from: classes3.dex */
public final class gyd implements TTAdDislike.DislikeInteractionCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ gqf f18997a;

    public gyd(gqf gqfVar) {
        this.f18997a = gqfVar;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
    public final void onCancel() {
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
    public final void onSelected(int i, String str, boolean z) {
        LinearLayout linearLayout;
        gqf gqfVar = this.f18997a;
        ViewGroup viewGroup = gqfVar.f18569a;
        if (viewGroup == null || (linearLayout = gqfVar.f18570b.h) == null) {
            return;
        }
        viewGroup.removeView(linearLayout);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
    public final void onShow() {
    }
}

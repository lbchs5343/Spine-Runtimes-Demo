package g;

import android.view.View;
import android.widget.LinearLayout;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;

/* loaded from: classes3.dex */
public final class crl implements TTNativeExpressAd.ExpressAdInteractionListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ gqf f13390a;

    public crl(gqf gqfVar) {
        this.f13390a = gqfVar;
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
    public final void onAdClicked(View view, int i) {
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
    public final void onAdShow(View view, int i) {
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
    public final void onRenderFail(View view, String str, int i) {
    }

    @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
    public final void onRenderSuccess(View view, float f2, float f3) {
        gqf gqfVar = this.f13390a;
        LinearLayout linearLayout = gqfVar.f18570b.h;
        if (linearLayout != null) {
            gqfVar.f18569a.removeView(linearLayout);
        }
        View expressAdView = gqfVar.f18570b.f15716g.getExpressAdView();
        if (expressAdView == null) {
            erl.y("loadBannerExpressAd onRenderSuccess getExpressAdView is null");
            return;
        }
        gqfVar.f18570b.h = new LinearLayout(gqfVar.f18570b.i);
        gqfVar.f18570b.h.setGravity(1);
        gqfVar.f18570b.h.addView(expressAdView);
        gqfVar.f18569a.addView(gqfVar.f18570b.h, new LinearLayout.LayoutParams(-1, -1));
    }
}

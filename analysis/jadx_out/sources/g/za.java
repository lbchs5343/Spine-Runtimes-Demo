package g;

import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;

/* loaded from: classes3.dex */
public final class za implements TTAdNative.FullScreenVideoAdListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ eku f20379a;

    public za(eku ekuVar, String str) {
        this.f20379a = ekuVar;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
    public final void onError(int i, String str) {
        if (eku.f15710a) {
            erl.y(i + ", msg is: " + str);
        }
        this.f20379a.f15715f = false;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
    public final void onFullScreenVideoAdLoad(TTFullScreenVideoAd tTFullScreenVideoAd) {
        eku ekuVar = this.f20379a;
        if (ekuVar.j == null) {
            ekuVar.j = tTFullScreenVideoAd;
            tTFullScreenVideoAd.setFullScreenVideoAdInteractionListener(new aoj(ekuVar));
        }
        ekuVar.f15715f = false;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
    public final void onFullScreenVideoCached() {
        this.f20379a.f15715f = false;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
    public final void onFullScreenVideoCached(TTFullScreenVideoAd tTFullScreenVideoAd) {
        eku ekuVar = this.f20379a;
        ekuVar.f15715f = false;
        if (ekuVar.j != null) {
            return;
        }
        ekuVar.j = tTFullScreenVideoAd;
        tTFullScreenVideoAd.setFullScreenVideoAdInteractionListener(new aoj(ekuVar));
    }
}

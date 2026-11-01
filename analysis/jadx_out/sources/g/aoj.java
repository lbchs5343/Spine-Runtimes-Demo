package g;

import android.os.Handler;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import java.text.SimpleDateFormat;

/* loaded from: classes3.dex */
public final class aoj implements TTFullScreenVideoAd.FullScreenVideoAdInteractionListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ eku f10571a;

    public aoj(eku ekuVar) {
        this.f10571a = ekuVar;
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
    public final void onAdClose() {
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
    public final void onAdShow() {
        SimpleDateFormat simpleDateFormat = dlb.f14354a;
        eku.f15713d = System.currentTimeMillis();
        eku ekuVar = this.f10571a;
        Handler handler = ekuVar.k;
        fvi fviVar = new fvi(1, ekuVar);
        long j = eku.f15711b;
        handler.postDelayed(fviVar, j > 30000 ? j - 30000 : 0L);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
    public final void onAdVideoBarClick() {
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
    public final void onSkippedVideo() {
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
    public final void onVideoComplete() {
    }
}

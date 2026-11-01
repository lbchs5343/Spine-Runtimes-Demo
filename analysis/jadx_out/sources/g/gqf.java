package g;

import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import java.util.List;

/* loaded from: classes3.dex */
public final class gqf implements TTAdNative.NativeExpressAdListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f18569a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ eku f18570b;

    public gqf(eku ekuVar, ViewGroup viewGroup) {
        this.f18570b = ekuVar;
        this.f18569a = viewGroup;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
    public final void onError(int i, String str) {
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
    public final void onNativeExpressAdLoad(List list) {
        acw.bo(list);
        if (acw.u(list)) {
            return;
        }
        boolean z = eku.f15714e;
        TTNativeExpressAd tTNativeExpressAd = (TTNativeExpressAd) list.get(0);
        eku ekuVar = this.f18570b;
        ekuVar.f15716g = tTNativeExpressAd;
        tTNativeExpressAd.setExpressInteractionListener(new crl(this));
        ekuVar.f15716g.setDislikeCallback(ekuVar.i, new gyd(this));
        ekuVar.f15716g.render();
    }
}

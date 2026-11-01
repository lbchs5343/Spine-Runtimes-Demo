package g;

import android.view.Window;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public class boy extends djy {
    @Override // g.ffb
    public final void b(boolean z) {
        if (!z) {
            e(8192);
            return;
        }
        Window window = this.f14293c;
        window.clearFlags(TTAdConstant.KEY_CLICK_AREA);
        window.addFlags(Integer.MIN_VALUE);
        d(8192);
    }
}

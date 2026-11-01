package g;

import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class ig extends gbe {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ese f19418a;

    public ig(ese eseVar) {
        this.f19418a = eseVar;
    }

    @Override // g.gbe
    public final float b() {
        float f2;
        float f3;
        ese eseVar = this.f19418a;
        f2 = eseVar.kk;
        if (f2 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            return 1.0f;
        }
        f3 = eseVar.kk;
        return 1.0f / f3;
    }

    @Override // g.gbe
    public final int c() {
        boolean z;
        ese eseVar = this.f19418a;
        z = eseVar.ig;
        return z ? he.UNDEFINED_ITEM_ID : eseVar.dq.size();
    }

    @Override // g.gbe
    public final View d(bfa bfaVar, int i) {
        boolean z;
        ese eseVar = this.f19418a;
        z = eseVar.ig;
        View dq = eseVar.dq(i, acr.be(i, eseVar.dq.size(), z));
        bfaVar.addView(dq);
        return dq;
    }
}

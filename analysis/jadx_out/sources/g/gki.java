package g;

import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public final class gki extends afo {
    @Override // g.afo
    public final void bd(cif cifVar, float f2, float f3) {
        float f4 = f3 * f2;
        cifVar.h(f4, 180.0f, 90.0f);
        double d2 = f4;
        cifVar.k((float) (Math.sin(Math.toRadians(90.0f)) * d2), (float) (Math.sin(Math.toRadians(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT)) * d2));
    }
}

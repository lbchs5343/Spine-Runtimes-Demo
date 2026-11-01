package g;

import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public final class eeu extends afo {
    @Override // g.afo
    public final void bd(cif cifVar, float f2, float f3) {
        float f4 = f3 * f2;
        cifVar.h(f4, 180.0f, 90.0f);
        float f5 = f4 * 2.0f;
        wx wxVar = new wx(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f5, f5);
        wxVar.f20254f = 180.0f;
        wxVar.i = 90.0f;
        cifVar.f12925d.add(wxVar);
        bdb bdbVar = new bdb(wxVar);
        cifVar.i(180.0f);
        cifVar.f12928g.add(bdbVar);
        cifVar.f12922a = 270.0f;
        float f6 = (TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT + f5) * 0.5f;
        float f7 = (f5 - TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) / 2.0f;
        double d2 = 270.0f;
        cifVar.f12926e = (((float) Math.cos(Math.toRadians(d2))) * f7) + f6;
        cifVar.f12927f = (f7 * ((float) Math.sin(Math.toRadians(d2)))) + f6;
    }
}

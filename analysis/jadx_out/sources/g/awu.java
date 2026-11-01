package g;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.material.button.MaterialButton;

/* loaded from: classes3.dex */
public final class awu extends awt {
    public final int at;

    public awu(int i) {
        this.at = i;
    }

    @Override // g.awt
    public final void aq(Object obj, float f2) {
        ddm ddmVar = (ddm) obj;
        float[] fArr = ddmVar.dq;
        if (fArr != null) {
            int i = this.at;
            if (fArr[i] != f2) {
                fArr[i] = f2;
                aoi aoiVar = ddmVar.dc;
                if (aoiVar != null) {
                    float ea = ddmVar.ea();
                    MaterialButton materialButton = (MaterialButton) aoiVar.f10570b;
                    int i2 = (int) (ea * 0.11f);
                    if (materialButton.w != i2) {
                        materialButton.w = i2;
                        materialButton.an();
                        materialButton.invalidate();
                    }
                }
                ddmVar.invalidateSelf();
            }
        }
    }

    @Override // g.awt
    public final float as(Object obj) {
        float[] fArr = ((ddm) obj).dq;
        return fArr != null ? fArr[this.at] : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }
}

package g;

import android.animation.ValueAnimator;
import android.content.Context;
import android.view.animation.LinearInterpolator;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.material.button.MaterialButton;

/* loaded from: classes3.dex */
public final class bkt extends awt {
    public final /* synthetic */ int at;

    public /* synthetic */ bkt(int i) {
        this.at = i;
    }

    @Override // g.awt
    public final void aq(Object obj, float f2) {
        switch (this.at) {
            case 0:
                glg glgVar = (glg) obj;
                glgVar.ae.f10188f = f2 / 10000.0f;
                glgVar.invalidateSelf();
                int i = (int) f2;
                if (glgVar.l.ab(true)) {
                    Context context = glgVar.j;
                    if (glgVar.y == null) {
                        LinearInterpolator linearInterpolator = gtk.f18727b;
                        glgVar.ad = egh.r(context, R.attr.motionEasingStandardInterpolator, linearInterpolator);
                        glgVar.f18341ab = egh.r(context, R.attr.motionEasingEmphasizedAccelerateInterpolator, linearInterpolator);
                        ValueAnimator valueAnimator = new ValueAnimator();
                        glgVar.y = valueAnimator;
                        valueAnimator.setDuration(500L);
                        glgVar.y.setFloatValues(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
                        glgVar.y.setInterpolator(null);
                        glgVar.y.addUpdateListener(new emn(0, glgVar));
                    }
                    float f3 = i;
                    float f4 = (f3 < 1000.0f || f3 > 9000.0f) ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : 1.0f;
                    if (f4 == glgVar.aa) {
                        if (!glgVar.y.isRunning()) {
                            glgVar.ae.f10185c = f4;
                            glgVar.invalidateSelf();
                            break;
                        }
                    } else {
                        if (glgVar.y.isRunning()) {
                            glgVar.y.cancel();
                        }
                        glgVar.aa = f4;
                        if (f4 != 1.0f) {
                            glgVar.w = glgVar.f18341ab;
                            glgVar.y.reverse();
                            break;
                        } else {
                            glgVar.w = glgVar.ad;
                            glgVar.y.start();
                            break;
                        }
                    }
                }
                break;
            default:
                ((MaterialButton) obj).setDisplayedWidthIncrease(f2);
                break;
        }
    }

    @Override // g.awt
    public final float as(Object obj) {
        float displayedWidthIncrease;
        switch (this.at) {
            case 0:
                return ((glg) obj).ae.f10188f * 10000.0f;
            default:
                displayedWidthIncrease = ((MaterialButton) obj).getDisplayedWidthIncrease();
                return displayedWidthIncrease;
        }
    }
}

package g;

import android.animation.ValueAnimator;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.textfield.TextInputLayout;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zl implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20403a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f20404b;

    public /* synthetic */ zl(int i, Object obj) {
        this.f20403a = i;
        this.f20404b = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int i;
        int i2;
        dac globalConfig;
        cra craVar;
        HashMap hashMap;
        cra craVar2;
        int i3;
        int i4;
        int unused;
        switch (this.f20403a) {
            case 0:
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                ddm ddmVar = ((BottomSheetBehavior) this.f20404b).az;
                if (ddmVar != null) {
                    ddmVar.er(floatValue);
                    break;
                }
                break;
            case 1:
                int floatValue2 = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
                eiu eiuVar = (eiu) this.f20404b;
                eiuVar.ac.setAlpha(floatValue2);
                eiuVar.k.setAlpha(floatValue2);
                eiuVar.t.invalidate();
                break;
            case 2:
                byd bydVar = (byd) this.f20404b;
                int frame = ((gkb) bydVar.f12434b).getFrame();
                i = ((gkb) bydVar.f12434b).kx;
                if (frame >= i - 1) {
                    int frame2 = ((gkb) bydVar.f12434b).getFrame();
                    i2 = ((gkb) bydVar.f12434b).kx;
                    if (frame2 < i2 + 2) {
                        unused = ((gkb) bydVar.f12434b).kx;
                        ((gkb) bydVar.f12434b).d(this);
                        ((gkb) bydVar.f12434b).mn();
                        break;
                    }
                }
                break;
            case 3:
                gkb gkbVar = (gkb) this.f20404b;
                Object animatedValue = valueAnimator.getAnimatedValue();
                if ((animatedValue instanceof Float) && ((Float) animatedValue).floatValue() >= 0.98f) {
                    gkb.s(gkbVar);
                    globalConfig = gkbVar.getGlobalConfig();
                    if (globalConfig != null && (i3 = globalConfig.f13839a) > 0) {
                        i4 = gkbVar.gh;
                        if (i3 > i4) {
                            gkb.ox(gkbVar);
                            gkbVar.dq();
                            gkbVar.setProgress(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
                            break;
                        }
                    }
                    gkbVar.d(this);
                    craVar = gkbVar.op;
                    if (craVar != null) {
                        if (globalConfig == null || (hashMap = globalConfig.f13844f) == null) {
                            hashMap = null;
                        }
                        craVar2 = gkbVar.op;
                        akg.a((akg) ((emr) craVar2).n, hashMap, 20);
                        break;
                    }
                }
                break;
            case 4:
                ((TextInputLayout) this.f20404b).n.bu(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            default:
                fts ftsVar = (fts) this.f20404b;
                aio aioVar = ftsVar.s;
                if (aioVar != null) {
                    aioVar.j(ftsVar.ad.w());
                    break;
                }
                break;
        }
    }
}

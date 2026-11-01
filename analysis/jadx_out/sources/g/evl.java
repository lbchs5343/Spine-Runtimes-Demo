package g;

import android.animation.ArgbEvaluator;
import android.animation.FloatEvaluator;
import android.animation.IntEvaluator;
import android.animation.Keyframe;
import android.animation.TypeEvaluator;
import android.content.Context;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.Map;

/* loaded from: classes.dex */
public final class evl extends duu {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16236a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ evl(Context context, dlv dlvVar, String str, Map map, int i) {
        super(context, dlvVar, str, map);
        this.f16236a = i;
    }

    @Override // g.duu
    public final void c() {
        float ig;
        switch (this.f16236a) {
            case 0:
                int i = act.f10002a[this.f14858f.ordinal()];
                dlv dlvVar = this.l;
                switch (i) {
                    case 1:
                        ig = dlvVar.ig();
                        break;
                    case 2:
                        ig = dlvVar.mp();
                        break;
                    case 3:
                        ig = dlvVar.q();
                        break;
                    case 4:
                        ig = dlvVar.jy();
                        break;
                    case 5:
                        ig = dlvVar.f();
                        break;
                    case 6:
                        ig = dlvVar.fw();
                        break;
                    case 7:
                        ig = dlvVar.cd();
                        break;
                    case 8:
                        ig = dlvVar.gh();
                        break;
                    case 9:
                        ig = dlvVar.r();
                        break;
                    default:
                        ig = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                        break;
                }
                this.f14859g.add(Keyframe.ofFloat(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, ig));
                break;
            default:
                if (this.f14858f == aiu.BACKGROUND_COLOR) {
                    this.f14859g.add(Keyframe.ofInt(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, this.l.er()));
                    break;
                }
                break;
        }
    }

    @Override // g.duu
    public final void d(float f2, String str) {
        switch (this.f16236a) {
            case 0:
                this.f14859g.add(Keyframe.ofFloat(f2, (this.j.startsWith(aiu.TRANSLATE.g()) || this.f14858f == aiu.BORDER_RADIUS) ? dxo.f(this.h, byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, str)) : byh.au(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, str)));
                break;
            default:
                this.f14859g.add(this.f14858f == aiu.BACKGROUND_COLOR ? Keyframe.ofInt(f2, bff.ab(str, -16777216)) : Keyframe.ofInt(f2, byh.o(str, 0)));
                break;
        }
    }

    @Override // g.duu
    public final TypeEvaluator e() {
        switch (this.f16236a) {
            case 0:
                return new FloatEvaluator();
            default:
                return this.f14858f == aiu.BACKGROUND_COLOR ? new ArgbEvaluator() : new IntEvaluator();
        }
    }
}

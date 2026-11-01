package g;

import android.animation.FloatEvaluator;
import android.animation.Keyframe;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: classes.dex */
public final class bgx extends duu {

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f11554a;

    @Override // g.duu
    public final ArrayList b() {
        String e2 = this.f14858f.e();
        m();
        PropertyValuesHolder ofKeyframe = PropertyValuesHolder.ofKeyframe(e2 + "X", (Keyframe[]) this.f14859g.toArray(new Keyframe[0]));
        ArrayList arrayList = this.i;
        arrayList.add(ofKeyframe);
        PropertyValuesHolder ofKeyframe2 = PropertyValuesHolder.ofKeyframe(e2 + "Y", (Keyframe[]) this.f11554a.toArray(new Keyframe[0]));
        arrayList.add(ofKeyframe2);
        FloatEvaluator floatEvaluator = new FloatEvaluator();
        ofKeyframe.setEvaluator(floatEvaluator);
        ofKeyframe2.setEvaluator(floatEvaluator);
        return arrayList;
    }

    @Override // g.duu
    public final void c() {
        Keyframe ofFloat;
        Keyframe ofFloat2;
        int i = zv.f20416a[this.f14858f.ordinal()];
        dlv dlvVar = this.l;
        if (i == 1) {
            ofFloat = Keyframe.ofFloat(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, dlvVar.ig());
            ofFloat2 = Keyframe.ofFloat(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, dlvVar.mp());
        } else if (i != 2) {
            ofFloat = null;
            ofFloat2 = null;
        } else {
            ofFloat = Keyframe.ofFloat(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, dlvVar.q());
            ofFloat2 = Keyframe.ofFloat(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, dlvVar.jy());
        }
        if (ofFloat != null) {
            this.f14859g.add(ofFloat);
        }
        if (ofFloat2 != null) {
            this.f11554a.add(ofFloat2);
        }
    }

    @Override // g.duu
    public final void d(float f2, String str) {
        Context context = this.h;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            if (jSONArray.length() != 2) {
                return;
            }
            float optDouble = (float) jSONArray.optDouble(0);
            float optDouble2 = (float) jSONArray.optDouble(1);
            if (this.f14858f == aiu.TRANSLATE) {
                optDouble = dxo.f(context, optDouble);
                optDouble2 = dxo.f(context, optDouble2);
            }
            this.f14859g.add(Keyframe.ofFloat(f2, optDouble));
            this.f11554a.add(Keyframe.ofFloat(f2, optDouble2));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    @Override // g.duu
    public final TypeEvaluator e() {
        return new FloatEvaluator();
    }
}

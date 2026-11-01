package g;

import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.graphics.Paint;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class gjp {

    /* renamed from: a, reason: collision with root package name */
    public int f18257a;

    /* renamed from: b, reason: collision with root package name */
    public int f18258b;

    /* renamed from: c, reason: collision with root package name */
    public final sh f18259c;

    /* renamed from: d, reason: collision with root package name */
    public final Paint f18260d;

    /* renamed from: e, reason: collision with root package name */
    public final AnimatorSet f18261e = new AnimatorSet();

    /* renamed from: f, reason: collision with root package name */
    public final View f18262f;

    /* renamed from: g, reason: collision with root package name */
    public String f18263g;

    public gjp(View view, sh shVar) {
        this.f18262f = view;
        this.f18259c = shVar;
        Paint paint = new Paint();
        this.f18260d = paint;
        paint.setAntiAlias(true);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0139, code lost:
    
        if (r3.equals("accelerate") == false) goto L50;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void h() {
        ArrayList arrayList = new ArrayList();
        sh shVar = this.f18259c;
        ArrayList arrayList2 = shVar.f19975f;
        if (arrayList2 == null || arrayList2.size() <= 0) {
            return;
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            cau cauVar = (cau) it.next();
            if (cauVar != null) {
                ObjectAnimator objectAnimator = new ObjectAnimator();
                objectAnimator.setDuration(cauVar.f12567d);
                if (TextUtils.equals(cauVar.getType(), "translateX")) {
                    objectAnimator.setPropertyName("translationX");
                } else if (TextUtils.equals(cauVar.getType(), "translateY")) {
                    objectAnimator.setPropertyName("translationY");
                } else {
                    objectAnimator.setPropertyName(cauVar.getType());
                }
                objectAnimator.setStartDelay(cauVar.f12565b);
                View view = this.f18262f;
                objectAnimator.setTarget(view);
                char c2 = 0;
                if (TextUtils.equals(cauVar.getType(), "backgroundColor")) {
                    objectAnimator.setIntValues((int) cauVar.f12568e, (int) cauVar.j);
                } else {
                    objectAnimator.setFloatValues(cauVar.f12568e, cauVar.j);
                }
                int i = (int) shVar.f19974e;
                if (i != 0) {
                    objectAnimator.setRepeatCount(i);
                } else {
                    objectAnimator.setRepeatCount((int) cauVar.f12570g);
                }
                if (TextUtils.equals(cauVar.getType(), "backgroundColor")) {
                    objectAnimator.setEvaluator(new ArgbEvaluator());
                }
                String str = shVar.f19973d;
                if (TextUtils.isEmpty(str)) {
                    str = cauVar.i;
                }
                if (TextUtils.equals(str, "reverse")) {
                    objectAnimator.setRepeatMode(2);
                } else {
                    objectAnimator.setRepeatMode(1);
                }
                float[] fArr = cauVar.f12564a;
                if (fArr != null && fArr.length > 0) {
                    objectAnimator.setFloatValues(fArr);
                }
                if (TextUtils.equals(cauVar.getType(), "rotationX")) {
                    view.post(new dyn(12, this));
                }
                if (TextUtils.equals(cauVar.getType(), "ripple")) {
                    this.f18263g = cauVar.h;
                }
                String str2 = cauVar.f12569f;
                str2.getClass();
                switch (str2.hashCode()) {
                    case -1354466595:
                        break;
                    case -1263948740:
                        if (str2.equals("decelerate")) {
                            c2 = 1;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -1102672091:
                        if (str2.equals("linear")) {
                            c2 = 2;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 475910905:
                        if (str2.equals("accelerateDecelerate")) {
                            c2 = 3;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 1312628413:
                        if (str2.equals("standard")) {
                            c2 = 4;
                            break;
                        }
                        c2 = 65535;
                        break;
                    default:
                        c2 = 65535;
                        break;
                }
                switch (c2) {
                    case 0:
                        objectAnimator.setInterpolator(new AccelerateInterpolator());
                        break;
                    case 1:
                        objectAnimator.setInterpolator(new DecelerateInterpolator());
                        break;
                    case 2:
                    case 4:
                        objectAnimator.setInterpolator(new LinearInterpolator());
                        break;
                    case 3:
                        objectAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
                        break;
                }
                arrayList.add(objectAnimator);
            }
        }
        long j = shVar.f19970a;
        AnimatorSet animatorSet = this.f18261e;
        if (j != 0) {
            animatorSet.setDuration(j);
        }
        animatorSet.setStartDelay(shVar.f19971b);
        if (TextUtils.equals(shVar.f19972c, "sequentially")) {
            animatorSet.playSequentially(arrayList);
        } else {
            animatorSet.playTogether(arrayList);
        }
        animatorSet.start();
    }
}

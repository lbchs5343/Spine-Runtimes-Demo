package g;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class gqd {

    /* renamed from: a, reason: collision with root package name */
    public final bcp f18567a = new bcp(0);

    /* renamed from: b, reason: collision with root package name */
    public final bcp f18568b = new bcp(0);

    public static gqd c(Context context, int i) {
        try {
            Animator loadAnimator = AnimatorInflater.loadAnimator(context, i);
            if (loadAnimator instanceof AnimatorSet) {
                return d(((AnimatorSet) loadAnimator).getChildAnimations());
            }
            if (loadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(loadAnimator);
            return d(arrayList);
        } catch (Exception unused) {
            Integer.toHexString(i);
            return null;
        }
    }

    public static gqd d(ArrayList arrayList) {
        gqd gqdVar = new gqd();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Animator animator = (Animator) arrayList.get(i);
            if (!(animator instanceof ObjectAnimator)) {
                throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
            }
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            gqdVar.f18568b.put(objectAnimator.getPropertyName(), objectAnimator.getValues());
            String propertyName = objectAnimator.getPropertyName();
            long startDelay = objectAnimator.getStartDelay();
            long duration = objectAnimator.getDuration();
            TimeInterpolator interpolator = objectAnimator.getInterpolator();
            att attVar = new att();
            attVar.f10826a = 0;
            attVar.f10827b = 1;
            attVar.f10828c = startDelay;
            attVar.f10829d = duration;
            attVar.f10830e = interpolator;
            attVar.f10826a = objectAnimator.getRepeatCount();
            attVar.f10827b = objectAnimator.getRepeatMode();
            gqdVar.f18567a.put(propertyName, attVar);
        }
        return gqdVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof gqd) {
            return this.f18567a.equals(((gqd) obj).f18567a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f18567a.hashCode();
    }

    public final String toString() {
        return "\n" + gqd.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.f18567a + "}\n";
    }
}

package g;

import android.animation.ObjectAnimator;
import android.graphics.drawable.AnimationDrawable;

/* loaded from: classes.dex */
public final class ftg extends acr {
    public final boolean ck;
    public final ObjectAnimator cl;

    public ftg(AnimationDrawable animationDrawable, boolean z, boolean z2) {
        int numberOfFrames = animationDrawable.getNumberOfFrames();
        int i = z ? numberOfFrames - 1 : 0;
        int i2 = z ? 0 : numberOfFrames - 1;
        fuq fuqVar = new fuq();
        int numberOfFrames2 = animationDrawable.getNumberOfFrames();
        fuqVar.f17452b = numberOfFrames2;
        int[] iArr = fuqVar.f17451a;
        if (iArr == null || iArr.length < numberOfFrames2) {
            fuqVar.f17451a = new int[numberOfFrames2];
        }
        int[] iArr2 = fuqVar.f17451a;
        int i3 = 0;
        for (int i4 = 0; i4 < numberOfFrames2; i4++) {
            int duration = animationDrawable.getDuration(z ? (numberOfFrames2 - i4) - 1 : i4);
            iArr2[i4] = duration;
            i3 += duration;
        }
        fuqVar.f17453c = i3;
        ObjectAnimator ofInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i, i2);
        ofInt.setAutoCancel(true);
        ofInt.setDuration(fuqVar.f17453c);
        ofInt.setInterpolator(fuqVar);
        this.ck = z2;
        this.cl = ofInt;
    }

    @Override // g.acr
    public final void cb() {
        this.cl.start();
    }

    @Override // g.acr
    public final boolean ce() {
        return this.ck;
    }

    @Override // g.acr
    public final void cf() {
        this.cl.reverse();
    }

    @Override // g.acr
    public final void cg() {
        this.cl.cancel();
    }
}

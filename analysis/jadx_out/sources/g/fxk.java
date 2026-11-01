package g;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class fxk extends cgo {

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f17574d = {MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_CHECK_ENHANCE, MediaPlayer.MEDIA_PLAYER_OPTION_LATENCYTIME, MediaPlayer.MEDIA_PLAYER_OPTION_SUB_FIRST_LOAD_TIME, 750};
    public static final int[] h = {1267, 1000, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_VIDEO_FRAME_META_CALLBACK, 0};
    public static final dfe i = new dfe(11, Float.class, "animationFraction");
    public boolean j;
    public ObjectAnimator k;
    public final Interpolator[] l;
    public final cvs m;
    public float n;
    public gu o;
    public ObjectAnimator p;
    public int q;

    public fxk(Context context, cvs cvsVar) {
        super(2);
        this.q = 0;
        this.o = null;
        this.m = cvsVar;
        this.l = new Interpolator[]{AnimationUtils.loadInterpolator(context, R.anim.linear_indeterminate_line1_head_interpolator), AnimationUtils.loadInterpolator(context, R.anim.linear_indeterminate_line1_tail_interpolator), AnimationUtils.loadInterpolator(context, R.anim.linear_indeterminate_line2_head_interpolator), AnimationUtils.loadInterpolator(context, R.anim.linear_indeterminate_line2_tail_interpolator)};
    }

    public final void r() {
        ObjectAnimator objectAnimator = this.p;
        cvs cvsVar = this.m;
        dfe dfeVar = i;
        if (objectAnimator == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, dfeVar, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
            this.p = ofFloat;
            ofFloat.setDuration((long) (cvsVar.o * 1800.0f));
            this.p.setInterpolator(null);
            this.p.setRepeatCount(-1);
            this.p.addListener(new adn(this, 0));
        }
        if (this.k == null) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, dfeVar, 1.0f);
            this.k = ofFloat2;
            ofFloat2.setDuration((long) (cvsVar.o * 1800.0f));
            this.k.setInterpolator(null);
            this.k.addListener(new adn(this, 1));
        }
    }

    public final void s() {
        this.q = 0;
        Iterator it = ((ArrayList) this.f12848ab).iterator();
        while (it.hasNext()) {
            ((agm) it.next()).f10189g = this.m.r[0];
        }
    }

    @Override // g.cgo
    public final void t() {
        r();
        ObjectAnimator objectAnimator = this.p;
        cvs cvsVar = this.m;
        objectAnimator.setDuration((long) (cvsVar.o * 1800.0f));
        this.k.setDuration((long) (cvsVar.o * 1800.0f));
        s();
    }

    @Override // g.cgo
    public final void u() {
        this.o = null;
    }

    @Override // g.cgo
    public final void w(bbg bbgVar) {
        this.o = bbgVar;
    }

    @Override // g.cgo
    public final void x() {
        r();
        s();
        this.p.start();
    }

    @Override // g.cgo
    public final void y() {
        ObjectAnimator objectAnimator = this.p;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // g.cgo
    public final void z() {
        ObjectAnimator objectAnimator = this.k;
        if (objectAnimator == null || objectAnimator.isRunning()) {
            return;
        }
        y();
        if (((fkr) this.aa).isVisible()) {
            this.k.setFloatValues(this.n, 1.0f);
            this.k.setDuration((long) ((1.0f - this.n) * 1800.0f));
            this.k.start();
        }
    }
}

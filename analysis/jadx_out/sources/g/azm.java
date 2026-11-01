package g;

import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.widget.EditText;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.material.internal.CheckableImageButton;

/* loaded from: classes3.dex */
public final class azm extends bhb {

    /* renamed from: a, reason: collision with root package name */
    public final TimeInterpolator f11119a;

    /* renamed from: b, reason: collision with root package name */
    public final ecn f11120b;

    /* renamed from: c, reason: collision with root package name */
    public AnimatorSet f11121c;

    /* renamed from: d, reason: collision with root package name */
    public final int f11122d;

    /* renamed from: e, reason: collision with root package name */
    public final int f11123e;

    /* renamed from: f, reason: collision with root package name */
    public ValueAnimator f11124f;

    /* renamed from: g, reason: collision with root package name */
    public EditText f11125g;
    public final ld h;
    public final TimeInterpolator i;

    public azm(zq zqVar) {
        super(zqVar);
        this.h = new ld(3, this);
        this.f11120b = new ecn(this, 0);
        this.f11122d = egh.bf(zqVar.getContext(), R.attr.motionDurationShort3, 100);
        this.f11123e = egh.bf(zqVar.getContext(), R.attr.motionDurationShort3, 150);
        this.i = egh.r(zqVar.getContext(), R.attr.motionEasingLinearInterpolator, gtk.f18727b);
        this.f11119a = egh.r(zqVar.getContext(), R.attr.motionEasingEmphasizedInterpolator, gtk.f18726a);
    }

    @Override // g.bhb
    public final int j() {
        return R.drawable.mtrl_ic_cancel;
    }

    @Override // g.bhb
    public final View.OnFocusChangeListener k() {
        return this.f11120b;
    }

    @Override // g.bhb
    public final void l() {
        if (this.x.f20407b != null) {
            return;
        }
        r(m());
    }

    public final boolean m() {
        EditText editText = this.f11125g;
        if (editText != null) {
            return (editText.hasFocus() || this.v.hasFocus()) && this.f11125g.getText().length() > 0;
        }
        return false;
    }

    @Override // g.bhb
    public final View.OnClickListener n() {
        return this.h;
    }

    @Override // g.bhb
    public final void o() {
        EditText editText = this.f11125g;
        if (editText != null) {
            editText.post(new fvi(7, this));
        }
    }

    @Override // g.bhb
    public final void p(boolean z) {
        if (this.x.f20407b == null) {
            return;
        }
        r(z);
    }

    @Override // g.bhb
    public final void q(EditText editText) {
        this.f11125g = editText;
        this.w.setEndIconVisible(m());
    }

    public final void r(boolean z) {
        boolean z2 = this.x.z() == z;
        if (z && !this.f11121c.isRunning()) {
            this.f11124f.cancel();
            this.f11121c.start();
            if (z2) {
                this.f11121c.end();
                return;
            }
            return;
        }
        if (z) {
            return;
        }
        this.f11121c.cancel();
        this.f11124f.start();
        if (z2) {
            this.f11124f.end();
        }
    }

    @Override // g.bhb
    public final int s() {
        return R.string.clear_text_end_icon_content_description;
    }

    @Override // g.bhb
    public final View.OnFocusChangeListener t() {
        return this.f11120b;
    }

    @Override // g.bhb
    public final void u() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.8f, 1.0f);
        ofFloat.setInterpolator(this.f11119a);
        ofFloat.setDuration(this.f11123e);
        final int i = 1;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: g.gic

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ azm f18188b;

            {
                this.f18188b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i) {
                    case 0:
                        azm azmVar = this.f18188b;
                        azmVar.getClass();
                        azmVar.v.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    default:
                        azm azmVar2 = this.f18188b;
                        azmVar2.getClass();
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = azmVar2.v;
                        checkableImageButton.setScaleX(floatValue);
                        checkableImageButton.setScaleY(floatValue);
                        break;
                }
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
        TimeInterpolator timeInterpolator = this.i;
        ofFloat2.setInterpolator(timeInterpolator);
        int i2 = this.f11122d;
        ofFloat2.setDuration(i2);
        final int i3 = 0;
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: g.gic

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ azm f18188b;

            {
                this.f18188b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i3) {
                    case 0:
                        azm azmVar = this.f18188b;
                        azmVar.getClass();
                        azmVar.v.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    default:
                        azm azmVar2 = this.f18188b;
                        azmVar2.getClass();
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = azmVar2.v;
                        checkableImageButton.setScaleX(floatValue);
                        checkableImageButton.setScaleY(floatValue);
                        break;
                }
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        this.f11121c = animatorSet;
        animatorSet.playTogether(ofFloat, ofFloat2);
        this.f11121c.addListener(new grw(this, i3));
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        ofFloat3.setInterpolator(timeInterpolator);
        ofFloat3.setDuration(i2);
        ofFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: g.gic

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ azm f18188b;

            {
                this.f18188b = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i3) {
                    case 0:
                        azm azmVar = this.f18188b;
                        azmVar.getClass();
                        azmVar.v.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        break;
                    default:
                        azm azmVar2 = this.f18188b;
                        azmVar2.getClass();
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CheckableImageButton checkableImageButton = azmVar2.v;
                        checkableImageButton.setScaleX(floatValue);
                        checkableImageButton.setScaleY(floatValue);
                        break;
                }
            }
        });
        this.f11124f = ofFloat3;
        ofFloat3.addListener(new grw(this, i));
    }
}

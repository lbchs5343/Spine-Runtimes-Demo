package g;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class baj {

    /* renamed from: a, reason: collision with root package name */
    public int f11162a;
    public final Context aa;

    /* renamed from: ab, reason: collision with root package name */
    public AppCompatTextView f11163ab;

    /* renamed from: b, reason: collision with root package name */
    public final TextInputLayout f11164b;

    /* renamed from: c, reason: collision with root package name */
    public FrameLayout f11165c;

    /* renamed from: d, reason: collision with root package name */
    public int f11166d;

    /* renamed from: e, reason: collision with root package name */
    public AppCompatTextView f11167e;

    /* renamed from: f, reason: collision with root package name */
    public int f11168f;

    /* renamed from: g, reason: collision with root package name */
    public final TimeInterpolator f11169g;
    public Typeface h;
    public AnimatorSet i;
    public final TimeInterpolator j;
    public final int k;
    public int l;
    public ColorStateList m;
    public CharSequence n;
    public final TimeInterpolator o;
    public CharSequence p;
    public CharSequence q;
    public final float r;
    public LinearLayout s;
    public final int t;
    public int u;
    public boolean v;
    public ColorStateList w;
    public int x;
    public final int y;
    public boolean z;

    public baj(TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.aa = context;
        this.f11164b = textInputLayout;
        this.r = context.getResources().getDimensionPixelSize(R.dimen.design_textinput_caption_translate_y);
        this.k = egh.bf(context, R.attr.motionDurationShort4, 217);
        this.t = egh.bf(context, R.attr.motionDurationMedium4, MediaPlayer.MEDIA_PLAYER_OPTION_SUPER_RES_STRENGTH_OPTION);
        this.y = egh.bf(context, R.attr.motionDurationShort4, MediaPlayer.MEDIA_PLAYER_OPTION_SUPER_RES_STRENGTH_OPTION);
        this.f11169g = egh.r(context, R.attr.motionEasingEmphasizedDecelerateInterpolator, gtk.f18726a);
        LinearInterpolator linearInterpolator = gtk.f18727b;
        this.j = egh.r(context, R.attr.motionEasingEmphasizedDecelerateInterpolator, linearInterpolator);
        this.o = egh.r(context, R.attr.motionEasingLinearInterpolator, linearInterpolator);
    }

    public final boolean ac(AppCompatTextView appCompatTextView, CharSequence charSequence) {
        TextInputLayout textInputLayout = this.f11164b;
        if (textInputLayout.isLaidOut() && textInputLayout.isEnabled()) {
            return (this.f11166d == this.f11168f && appCompatTextView != null && TextUtils.equals(appCompatTextView.getText(), charSequence)) ? false : true;
        }
        return false;
    }

    public final void ad(ArrayList arrayList, boolean z, AppCompatTextView appCompatTextView, int i, int i2, int i3) {
        if (appCompatTextView == null || !z) {
            return;
        }
        if (i == i3 || i == i2) {
            boolean z2 = i3 == i;
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(appCompatTextView, (Property<AppCompatTextView, Float>) View.ALPHA, z2 ? 1.0f : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            int i4 = this.y;
            ofFloat.setDuration(z2 ? this.t : i4);
            ofFloat.setInterpolator(z2 ? this.j : this.o);
            if (i == i3 && i2 != 0) {
                ofFloat.setStartDelay(i4);
            }
            arrayList.add(ofFloat);
            if (i3 != i || i2 == 0) {
                return;
            }
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(appCompatTextView, (Property<AppCompatTextView, Float>) View.TRANSLATION_Y, -this.r, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            ofFloat2.setDuration(this.k);
            ofFloat2.setInterpolator(this.f11169g);
            ofFloat2.setStartDelay(i4);
            arrayList.add(ofFloat2);
        }
    }

    public final TextView ae(int i) {
        if (i == 1) {
            return this.f11163ab;
        }
        if (i != 2) {
            return null;
        }
        return this.f11167e;
    }

    public final void af(AppCompatTextView appCompatTextView, int i) {
        if (this.s == null && this.f11165c == null) {
            Context context = this.aa;
            LinearLayout linearLayout = new LinearLayout(context);
            this.s = linearLayout;
            linearLayout.setOrientation(0);
            LinearLayout linearLayout2 = this.s;
            TextInputLayout textInputLayout = this.f11164b;
            textInputLayout.addView(linearLayout2, -1, -2);
            this.f11165c = new FrameLayout(context);
            this.s.addView(this.f11165c, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (textInputLayout.getEditText() != null) {
                ai();
            }
        }
        if (i == 0 || i == 1) {
            this.f11165c.setVisibility(0);
            this.f11165c.addView(appCompatTextView);
        } else {
            this.s.addView(appCompatTextView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.s.setVisibility(0);
        this.u++;
    }

    public final void ag() {
        this.q = null;
        aj();
        if (this.f11168f == 1) {
            if (!this.z || TextUtils.isEmpty(this.n)) {
                this.f11166d = 0;
            } else {
                this.f11166d = 2;
            }
        }
        ah(this.f11168f, this.f11166d, ac(this.f11163ab, ""));
    }

    public final void ah(int i, int i2, boolean z) {
        TextView ae;
        TextView ae2;
        baj bajVar = this;
        if (i == i2) {
            return;
        }
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            bajVar.i = animatorSet;
            ArrayList arrayList = new ArrayList();
            bajVar.ad(arrayList, bajVar.z, bajVar.f11167e, 2, i, i2);
            bajVar.ad(arrayList, bajVar.v, bajVar.f11163ab, 1, i, i2);
            int size = arrayList.size();
            long j = 0;
            for (int i3 = 0; i3 < size; i3++) {
                Animator animator = (Animator) arrayList.get(i3);
                j = Math.max(j, animator.getDuration() + animator.getStartDelay());
            }
            ValueAnimator ofInt = ValueAnimator.ofInt(0, 0);
            ofInt.setDuration(j);
            arrayList.add(0, ofInt);
            animatorSet.playTogether(arrayList);
            dwr dwrVar = new dwr(this, i2, ae(i), i, bajVar.ae(i2));
            bajVar = this;
            animatorSet.addListener(dwrVar);
            animatorSet.start();
        } else if (i != i2) {
            if (i2 != 0 && (ae2 = bajVar.ae(i2)) != null) {
                ae2.setVisibility(0);
                ae2.setAlpha(1.0f);
            }
            if (i != 0 && (ae = ae(i)) != null) {
                ae.setVisibility(4);
                if (i == 1) {
                    ae.setText((CharSequence) null);
                }
            }
            bajVar.f11168f = i2;
        }
        TextInputLayout textInputLayout = bajVar.f11164b;
        textInputLayout.cw();
        textInputLayout.co(z, false);
        textInputLayout.cc();
    }

    public final void ai() {
        if (this.s != null) {
            TextInputLayout textInputLayout = this.f11164b;
            if (textInputLayout.getEditText() != null) {
                EditText editText = textInputLayout.getEditText();
                Context context = this.aa;
                boolean m = gs.m(context);
                LinearLayout linearLayout = this.s;
                int paddingStart = editText.getPaddingStart();
                if (m) {
                    paddingStart = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_font_1_3_padding_horizontal);
                }
                int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_default_padding_top);
                if (m) {
                    dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_font_1_3_padding_top);
                }
                int paddingEnd = editText.getPaddingEnd();
                if (m) {
                    paddingEnd = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_font_1_3_padding_horizontal);
                }
                linearLayout.setPaddingRelative(paddingStart, dimensionPixelSize, paddingEnd, 0);
            }
        }
    }

    public final void aj() {
        AnimatorSet animatorSet = this.i;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    public final void ak(AppCompatTextView appCompatTextView, int i) {
        FrameLayout frameLayout;
        LinearLayout linearLayout = this.s;
        if (linearLayout == null) {
            return;
        }
        if ((i == 0 || i == 1) && (frameLayout = this.f11165c) != null) {
            frameLayout.removeView(appCompatTextView);
        } else {
            linearLayout.removeView(appCompatTextView);
        }
        int i2 = this.u - 1;
        this.u = i2;
        LinearLayout linearLayout2 = this.s;
        if (i2 == 0) {
            linearLayout2.setVisibility(8);
        }
    }
}

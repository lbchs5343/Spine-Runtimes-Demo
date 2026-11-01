package g;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public final class dwr extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TextView f14969a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ baj f14970b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f14971c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ TextView f14972d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f14973e;

    public dwr(baj bajVar, int i, TextView textView, int i2, TextView textView2) {
        this.f14970b = bajVar;
        this.f14971c = i;
        this.f14972d = textView;
        this.f14973e = i2;
        this.f14969a = textView2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        AppCompatTextView appCompatTextView;
        int i = this.f14971c;
        baj bajVar = this.f14970b;
        bajVar.f11168f = i;
        bajVar.i = null;
        TextView textView = this.f14972d;
        if (textView != null) {
            textView.setVisibility(4);
            if (this.f14973e == 1 && (appCompatTextView = bajVar.f11163ab) != null) {
                appCompatTextView.setText((CharSequence) null);
            }
        }
        TextView textView2 = this.f14969a;
        if (textView2 != null) {
            textView2.setTranslationY(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            textView2.setAlpha(1.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        TextView textView = this.f14969a;
        if (textView != null) {
            textView.setVisibility(0);
            textView.setAlpha(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
    }
}

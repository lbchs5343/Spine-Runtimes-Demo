package g;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class bfp implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ androidx.fragment.app.i f11457a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ androidx.fragment.app.a f11458b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f11459c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ View f11460d;

    public bfp(androidx.fragment.app.a aVar, ViewGroup viewGroup, View view, androidx.fragment.app.i iVar) {
        this.f11458b = aVar;
        this.f11459c = viewGroup;
        this.f11460d = view;
        this.f11457a = iVar;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        this.f11459c.post(new byd(4, this));
        if (androidx.fragment.app.v.ao(2)) {
            Objects.toString(this.f11458b);
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
        if (androidx.fragment.app.v.ao(2)) {
            Objects.toString(this.f11458b);
        }
    }
}

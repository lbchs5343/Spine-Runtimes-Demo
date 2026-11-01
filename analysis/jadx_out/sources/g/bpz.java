package g;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class bpz extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ androidx.fragment.app.a f11984a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ androidx.fragment.app.i f11985b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f11986c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ View f11987d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f11988e;

    public bpz(ViewGroup viewGroup, View view, boolean z, androidx.fragment.app.a aVar, androidx.fragment.app.i iVar) {
        this.f11986c = viewGroup;
        this.f11987d = view;
        this.f11988e = z;
        this.f11984a = aVar;
        this.f11985b = iVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        ViewGroup viewGroup = this.f11986c;
        View view = this.f11987d;
        viewGroup.endViewTransition(view);
        boolean z = this.f11988e;
        androidx.fragment.app.a aVar = this.f11984a;
        if (z) {
            aVar.f173d.d(view);
        }
        this.f11985b.g();
        if (androidx.fragment.app.v.ao(2)) {
            Objects.toString(aVar);
        }
    }
}

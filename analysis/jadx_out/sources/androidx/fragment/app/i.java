package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.content.Context;
import android.content.res.Resources;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import cn.trinea.android.developertools.R;
import g.gdn;
import g.gs;
import g.gtb;

/* loaded from: classes.dex */
public final class i extends n {

    /* renamed from: a, reason: collision with root package name */
    public boolean f188a;

    /* renamed from: b, reason: collision with root package name */
    public gtb f189b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f190c;

    public final gtb d(Context context) {
        Animation loadAnimation;
        gtb gtbVar;
        int aw;
        if (this.f188a) {
            return this.f189b;
        }
        a aVar = this.f201e;
        Fragment fragment = aVar.f176g;
        boolean z = aVar.f173d == gdn.VISIBLE;
        boolean z2 = this.f190c;
        int nextTransition = fragment.getNextTransition();
        int popEnterAnim = z2 ? z ? fragment.getPopEnterAnim() : fragment.getPopExitAnim() : z ? fragment.getEnterAnim() : fragment.getExitAnim();
        fragment.setAnimations(0, 0, 0, 0);
        ViewGroup viewGroup = fragment.mContainer;
        gtb gtbVar2 = null;
        if (viewGroup != null && viewGroup.getTag(R.id.visible_removing_fragment_view_tag) != null) {
            fragment.mContainer.setTag(R.id.visible_removing_fragment_view_tag, null);
        }
        ViewGroup viewGroup2 = fragment.mContainer;
        if (viewGroup2 == null || viewGroup2.getLayoutTransition() == null) {
            Animation onCreateAnimation = fragment.onCreateAnimation(nextTransition, z, popEnterAnim);
            if (onCreateAnimation != null) {
                gtbVar2 = new gtb((Object) onCreateAnimation, 6, false);
            } else {
                Animator onCreateAnimator = fragment.onCreateAnimator(nextTransition, z, popEnterAnim);
                if (onCreateAnimator != null) {
                    gtbVar2 = new gtb(onCreateAnimator);
                } else {
                    if (popEnterAnim == 0 && nextTransition != 0) {
                        if (nextTransition == 4097) {
                            popEnterAnim = z ? R.animator.fragment_open_enter : R.animator.fragment_open_exit;
                        } else if (nextTransition != 8194) {
                            if (nextTransition == 8197) {
                                aw = z ? gs.aw(context, android.R.attr.activityCloseEnterAnimation) : gs.aw(context, android.R.attr.activityCloseExitAnimation);
                            } else if (nextTransition == 4099) {
                                popEnterAnim = z ? R.animator.fragment_fade_enter : R.animator.fragment_fade_exit;
                            } else if (nextTransition != 4100) {
                                popEnterAnim = -1;
                            } else {
                                aw = z ? gs.aw(context, android.R.attr.activityOpenEnterAnimation) : gs.aw(context, android.R.attr.activityOpenExitAnimation);
                            }
                            popEnterAnim = aw;
                        } else {
                            popEnterAnim = z ? R.animator.fragment_close_enter : R.animator.fragment_close_exit;
                        }
                    }
                    if (popEnterAnim != 0) {
                        boolean equals = "anim".equals(context.getResources().getResourceTypeName(popEnterAnim));
                        try {
                            if (equals) {
                                try {
                                    loadAnimation = AnimationUtils.loadAnimation(context, popEnterAnim);
                                } catch (Resources.NotFoundException e2) {
                                    throw e2;
                                } catch (RuntimeException unused) {
                                }
                                if (loadAnimation != null) {
                                    gtbVar = new gtb((Object) loadAnimation, 6, false);
                                    gtbVar2 = gtbVar;
                                }
                            }
                            Animator loadAnimator = AnimatorInflater.loadAnimator(context, popEnterAnim);
                            if (loadAnimator != null) {
                                gtbVar = new gtb(loadAnimator);
                                gtbVar2 = gtbVar;
                            }
                        } catch (RuntimeException e3) {
                            if (equals) {
                                throw e3;
                            }
                            Animation loadAnimation2 = AnimationUtils.loadAnimation(context, popEnterAnim);
                            if (loadAnimation2 != null) {
                                gtbVar2 = new gtb((Object) loadAnimation2, 6, false);
                            }
                        }
                    }
                }
            }
        }
        this.f189b = gtbVar2;
        this.f188a = true;
        return gtbVar2;
    }
}

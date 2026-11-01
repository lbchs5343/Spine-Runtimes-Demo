package g;

import android.transition.Transition;
import androidx.fragment.app.Fragment;

/* loaded from: classes.dex */
public final class fwj extends androidx.fragment.app.n {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f17516a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f17517b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f17518c;

    public fwj(androidx.fragment.app.a aVar, ac acVar, boolean z, boolean z2) {
        super(aVar, acVar);
        gdn gdnVar = aVar.f173d;
        Fragment fragment = aVar.f176g;
        if (gdnVar == gdn.VISIBLE) {
            this.f17518c = z ? fragment.getReenterTransition() : fragment.getEnterTransition();
            this.f17516a = z ? fragment.getAllowReturnTransitionOverlap() : fragment.getAllowEnterTransitionOverlap();
        } else {
            this.f17518c = z ? fragment.getReturnTransition() : fragment.getExitTransition();
            this.f17516a = true;
        }
        if (!z2) {
            this.f17517b = null;
        } else if (z) {
            this.f17517b = fragment.getSharedElementReturnTransition();
        } else {
            this.f17517b = fragment.getSharedElementEnterTransition();
        }
    }

    public final ebs d(Object obj) {
        if (obj == null) {
            return null;
        }
        aqe aqeVar = hbv.f19202a;
        if (obj instanceof Transition) {
            return aqeVar;
        }
        ebs ebsVar = hbv.f19203b;
        if (ebsVar != null && ebsVar.f(obj)) {
            return ebsVar;
        }
        throw new IllegalArgumentException("Transition " + obj + " for fragment " + this.f201e.f176g + " is not a valid framework Transition or AndroidX Transition");
    }
}

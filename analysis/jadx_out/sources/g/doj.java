package g;

import android.transition.Transition;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class doj implements Transition.TransitionListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ArrayList f14520a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ aqe f14521b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f14522c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ArrayList f14523d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f14524e;

    public doj(aqe aqeVar, Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2) {
        this.f14521b = aqeVar;
        this.f14522c = obj;
        this.f14523d = arrayList;
        this.f14524e = obj2;
        this.f14520a = arrayList2;
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionCancel(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionEnd(Transition transition) {
        transition.removeListener(this);
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionPause(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionResume(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionStart(Transition transition) {
        aqe aqeVar = this.f14521b;
        Object obj = this.f14522c;
        if (obj != null) {
            aqeVar.o(obj, this.f14523d, null);
        }
        Object obj2 = this.f14524e;
        if (obj2 != null) {
            aqeVar.o(obj2, this.f14520a, null);
        }
    }
}

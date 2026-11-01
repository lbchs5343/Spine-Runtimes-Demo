package g;

import androidx.fragment.app.Fragment;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class evk extends apm {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ bez f16231a;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Fragment f16232c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ xd f16233d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f16234e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ehj f16235f;

    public evk(Fragment fragment, xd xdVar, AtomicReference atomicReference, ehj ehjVar, bez bezVar) {
        this.f16232c = fragment;
        this.f16233d = xdVar;
        this.f16234e = atomicReference;
        this.f16235f = ehjVar;
        this.f16231a = bezVar;
    }

    @Override // g.apm
    public final void b() {
        Fragment fragment = this.f16232c;
        this.f16234e.set(((androidx.activity.result.a) this.f16233d.apply()).h(fragment.generateActivityResultKey(), fragment, this.f16235f, this.f16231a));
    }
}

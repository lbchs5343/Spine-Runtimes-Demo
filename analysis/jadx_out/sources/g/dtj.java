package g;

import android.os.Bundle;
import java.util.Map;

/* loaded from: classes.dex */
public final class dtj implements fet {

    /* renamed from: a, reason: collision with root package name */
    public final esn f14768a;

    /* renamed from: c, reason: collision with root package name */
    public final hbu f14769c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f14770d;

    /* renamed from: e, reason: collision with root package name */
    public Bundle f14771e;

    public dtj(hbu hbuVar, gyj gyjVar) {
        bff.p(hbuVar, "savedStateRegistry");
        this.f14769c = hbuVar;
        this.f14768a = new esn(new dqz(gyjVar));
    }

    @Override // g.fet
    public final Bundle b() {
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f14771e;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        for (Map.Entry entry : ((wi) this.f14768a.a()).f20212a.entrySet()) {
            String str = (String) entry.getKey();
            Bundle b2 = ((gzf) entry.getValue()).f19045c.b();
            if (!bff.n(b2, Bundle.EMPTY)) {
                bundle.putBundle(str, b2);
            }
        }
        this.f14770d = false;
        return bundle;
    }

    public final void f() {
        if (this.f14770d) {
            return;
        }
        Bundle h = this.f14769c.h("androidx.lifecycle.internal.SavedStateHandlesProvider");
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f14771e;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        if (h != null) {
            bundle.putAll(h);
        }
        this.f14771e = bundle;
        this.f14770d = true;
    }
}

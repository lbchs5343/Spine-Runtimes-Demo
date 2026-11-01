package g;

import android.os.Bundle;
import androidx.savedstate.Recreator;
import java.util.Map;

/* loaded from: classes.dex */
public final class dyr {

    /* renamed from: a, reason: collision with root package name */
    public final gff f15096a;

    /* renamed from: b, reason: collision with root package name */
    public final hbu f15097b = new hbu();

    /* renamed from: c, reason: collision with root package name */
    public boolean f15098c;

    public dyr(gff gffVar) {
        this.f15096a = gffVar;
    }

    public final void d() {
        gff gffVar = this.f15096a;
        euu lifecycle = gffVar.getLifecycle();
        if (((ajs) lifecycle).f10342g != fqv.INITIALIZED) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
        }
        lifecycle.l(new Recreator(gffVar));
        final hbu hbuVar = this.f15097b;
        hbuVar.getClass();
        if (hbuVar.f19200e) {
            throw new IllegalStateException("SavedStateRegistry was already attached.");
        }
        lifecycle.l(new ajm() { // from class: g.ghw
            @Override // g.ajm
            public final void b(iz izVar, dtn dtnVar) {
                hbu hbuVar2 = hbu.this;
                bff.p(hbuVar2, "this$0");
                if (dtnVar == dtn.ON_START) {
                    hbuVar2.f19199d = true;
                } else if (dtnVar == dtn.ON_STOP) {
                    hbuVar2.f19199d = false;
                }
            }
        });
        hbuVar.f19200e = true;
        this.f15098c = true;
    }

    public final void e(Bundle bundle) {
        if (!this.f15098c) {
            d();
        }
        ajs ajsVar = (ajs) this.f15096a.getLifecycle();
        if (ajsVar.f10342g.b(fqv.STARTED)) {
            throw new IllegalStateException(("performRestore cannot be called when owner is " + ajsVar.f10342g).toString());
        }
        hbu hbuVar = this.f15097b;
        if (!hbuVar.f19200e) {
            throw new IllegalStateException("You must call performAttach() before calling performRestore(Bundle).");
        }
        if (hbuVar.f19196a) {
            throw new IllegalStateException("SavedStateRegistry was already restored.");
        }
        hbuVar.f19201f = bundle != null ? bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key") : null;
        hbuVar.f19196a = true;
    }

    public final void f(Bundle bundle) {
        bff.p(bundle, "outBundle");
        hbu hbuVar = this.f15097b;
        hbuVar.getClass();
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = hbuVar.f19201f;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        cfx cfxVar = hbuVar.f19198c;
        cfxVar.getClass();
        dgv dgvVar = new dgv(cfxVar);
        cfxVar.f12802d.put(dgvVar, Boolean.FALSE);
        while (dgvVar.hasNext()) {
            Map.Entry entry = (Map.Entry) dgvVar.next();
            bundle2.putBundle((String) entry.getKey(), ((fet) entry.getValue()).b());
        }
        if (bundle2.isEmpty()) {
            return;
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }
}

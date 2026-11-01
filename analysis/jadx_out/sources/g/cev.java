package g;

import android.net.Uri;
import android.view.InputEvent;

/* loaded from: classes.dex */
public final class cev {

    /* renamed from: a, reason: collision with root package name */
    public final fuk f12761a;

    public cev(fuk fukVar) {
        this.f12761a = fukVar;
    }

    public dcy b(Uri uri) {
        bff.p(uri, "trigger");
        return awt.ae(baf.ba(aky.q(uj.f20095a), new xz(this, uri, null)));
    }

    public dcy c(hcg hcgVar) {
        bff.p(hcgVar, "request");
        throw null;
    }

    public dcy d(ach achVar) {
        bff.p(achVar, "deletionRequest");
        throw null;
    }

    public dcy e(ye yeVar) {
        bff.p(yeVar, "request");
        throw null;
    }

    public dcy f() {
        return awt.ae(baf.ba(aky.q(uj.f20095a), new gjm(this, null)));
    }

    public dcy g(Uri uri, InputEvent inputEvent) {
        bff.p(uri, "attributionSource");
        return awt.ae(baf.ba(aky.q(uj.f20095a), new gdp(this, uri, inputEvent, null)));
    }
}

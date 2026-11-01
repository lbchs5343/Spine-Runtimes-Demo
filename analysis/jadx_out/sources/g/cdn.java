package g;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import androidx.fragment.app.Fragment;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class cdn implements hcr, gff, gyj {

    /* renamed from: a, reason: collision with root package name */
    public ajs f12694a = null;

    /* renamed from: b, reason: collision with root package name */
    public dyr f12695b = null;

    /* renamed from: c, reason: collision with root package name */
    public final Fragment f12696c;

    /* renamed from: d, reason: collision with root package name */
    public final wg f12697d;

    public cdn(Fragment fragment, wg wgVar) {
        this.f12696c = fragment;
        this.f12697d = wgVar;
    }

    public final void e(dtn dtnVar) {
        this.f12694a.k(dtnVar);
    }

    public final void f() {
        if (this.f12694a == null) {
            this.f12694a = new ajs(this);
            dyr dyrVar = new dyr(this);
            this.f12695b = dyrVar;
            dyrVar.d();
            afo.aj(this);
        }
    }

    @Override // g.hcr
    public final bin getDefaultViewModelCreationExtras() {
        Application application;
        Fragment fragment = this.f12696c;
        Context applicationContext = fragment.requireContext().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        ewp ewpVar = new ewp();
        LinkedHashMap linkedHashMap = ewpVar.f11665b;
        if (application != null) {
            linkedHashMap.put(bfy.f11485g, application);
        }
        linkedHashMap.put(afo.y, this);
        linkedHashMap.put(afo.z, this);
        if (fragment.getArguments() != null) {
            linkedHashMap.put(afo.f10142ab, fragment.getArguments());
        }
        return ewpVar;
    }

    @Override // g.iz
    public final euu getLifecycle() {
        f();
        return this.f12694a;
    }

    @Override // g.gff
    public final hbu getSavedStateRegistry() {
        f();
        return this.f12695b.f15097b;
    }

    @Override // g.gyj
    public final wg getViewModelStore() {
        f();
        return this.f12697d;
    }
}

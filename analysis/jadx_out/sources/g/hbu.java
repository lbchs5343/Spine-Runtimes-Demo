package g;

import android.os.Bundle;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;

/* loaded from: classes.dex */
public final class hbu {

    /* renamed from: a, reason: collision with root package name */
    public boolean f19196a;

    /* renamed from: b, reason: collision with root package name */
    public bbn f19197b;

    /* renamed from: c, reason: collision with root package name */
    public final cfx f19198c = new cfx();

    /* renamed from: d, reason: collision with root package name */
    public boolean f19199d = true;

    /* renamed from: e, reason: collision with root package name */
    public boolean f19200e;

    /* renamed from: f, reason: collision with root package name */
    public Bundle f19201f;

    public final void g() {
        if (!this.f19199d) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        bbn bbnVar = this.f19197b;
        if (bbnVar == null) {
            bbnVar = new bbn(this);
        }
        this.f19197b = bbnVar;
        try {
            goa.class.getDeclaredConstructor(null);
            bbn bbnVar2 = this.f19197b;
            if (bbnVar2 != null) {
                ((LinkedHashSet) bbnVar2.f11230c).add(goa.class.getName());
            }
        } catch (NoSuchMethodException e2) {
            throw new IllegalArgumentException("Class " + goa.class.getSimpleName() + " must have default constructor in order to be automatically recreated", e2);
        }
    }

    public final Bundle h(String str) {
        if (!this.f19196a) {
            throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
        }
        Bundle bundle = this.f19201f;
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = bundle.getBundle(str);
        Bundle bundle3 = this.f19201f;
        if (bundle3 != null) {
            bundle3.remove(str);
        }
        Bundle bundle4 = this.f19201f;
        if (bundle4 != null && !bundle4.isEmpty()) {
            return bundle2;
        }
        this.f19201f = null;
        return bundle2;
    }

    public final fet i() {
        String str;
        fet fetVar;
        Iterator it = this.f19198c.iterator();
        do {
            cwl cwlVar = (cwl) it;
            if (!cwlVar.hasNext()) {
                return null;
            }
            Map.Entry entry = (Map.Entry) cwlVar.next();
            bff.e(entry, "components");
            str = (String) entry.getKey();
            fetVar = (fet) entry.getValue();
        } while (!bff.n(str, "androidx.lifecycle.internal.SavedStateHandlesProvider"));
        return fetVar;
    }

    public final void j(String str, fet fetVar) {
        Object obj;
        bff.p(fetVar, "provider");
        cfx cfxVar = this.f19198c;
        frv b2 = cfxVar.b(str);
        if (b2 != null) {
            obj = b2.f17315d;
        } else {
            frv frvVar = new frv(str, fetVar);
            cfxVar.f12803e++;
            frv frvVar2 = cfxVar.f12805g;
            if (frvVar2 == null) {
                cfxVar.f12804f = frvVar;
                cfxVar.f12805g = frvVar;
            } else {
                frvVar2.f17312a = frvVar;
                frvVar.f17313b = frvVar2;
                cfxVar.f12805g = frvVar;
            }
            obj = null;
        }
        if (((fet) obj) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }
}

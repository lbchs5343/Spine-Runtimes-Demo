package androidx.savedstate;

import android.os.Bundle;
import g.ajm;
import g.bff;
import g.blj;
import g.cvz;
import g.dtn;
import g.fso;
import g.gff;
import g.gyj;
import g.hbu;
import g.iz;
import g.tn;
import g.wg;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class Recreator implements ajm {

    /* renamed from: a, reason: collision with root package name */
    public final gff f327a;

    public Recreator(gff gffVar) {
        this.f327a = gffVar;
    }

    @Override // g.ajm
    public final void b(iz izVar, dtn dtnVar) {
        if (dtnVar != dtn.ON_CREATE) {
            throw new AssertionError("Next event must be ON_CREATE");
        }
        izVar.getLifecycle().n(this);
        gff gffVar = this.f327a;
        Bundle h = gffVar.getSavedStateRegistry().h("androidx.savedstate.Restarter");
        if (h == null) {
            return;
        }
        ArrayList<String> stringArrayList = h.getStringArrayList("classes_to_restore");
        if (stringArrayList == null) {
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        for (String str : stringArrayList) {
            try {
                Class<? extends U> asSubclass = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(cvz.class);
                bff.e(asSubclass, "{\n                Class.…class.java)\n            }");
                try {
                    Constructor declaredConstructor = asSubclass.getDeclaredConstructor(null);
                    declaredConstructor.setAccessible(true);
                    try {
                        Object newInstance = declaredConstructor.newInstance(null);
                        bff.e(newInstance, "{\n                constr…wInstance()\n            }");
                        if (!(gffVar instanceof gyj)) {
                            throw new IllegalStateException("Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner");
                        }
                        wg viewModelStore = ((gyj) gffVar).getViewModelStore();
                        hbu savedStateRegistry = gffVar.getSavedStateRegistry();
                        viewModelStore.getClass();
                        LinkedHashMap linkedHashMap = viewModelStore.f20209a;
                        Iterator it = new HashSet(linkedHashMap.keySet()).iterator();
                        while (it.hasNext()) {
                            String str2 = (String) it.next();
                            bff.p(str2, "key");
                            blj bljVar = (blj) linkedHashMap.get(str2);
                            bff.d(bljVar);
                            fso.u(bljVar, savedStateRegistry, gffVar.getLifecycle());
                        }
                        if (!new HashSet(linkedHashMap.keySet()).isEmpty()) {
                            savedStateRegistry.g();
                        }
                    } catch (Exception e2) {
                        throw new RuntimeException(tn.x("Failed to instantiate ", str), e2);
                    }
                } catch (NoSuchMethodException e3) {
                    throw new IllegalStateException("Class " + asSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e3);
                }
            } catch (ClassNotFoundException e4) {
                throw new RuntimeException(tn.ad("Class ", str, " wasn't found"), e4);
            }
        }
    }
}

package g;

import android.app.Application;
import android.os.Bundle;
import androidx.lifecycle.LegacySavedStateHandleController$tryToAddRecreator$1;
import androidx.lifecycle.SavedStateHandleController;
import java.lang.reflect.Constructor;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class ecl implements dqr {

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f15306a;

    /* renamed from: b, reason: collision with root package name */
    public final euu f15307b;

    /* renamed from: c, reason: collision with root package name */
    public final hbu f15308c;

    /* renamed from: d, reason: collision with root package name */
    public final Application f15309d;

    /* renamed from: e, reason: collision with root package name */
    public final akk f15310e;

    public ecl(Application application, gff gffVar, Bundle bundle) {
        akk akkVar;
        this.f15308c = gffVar.getSavedStateRegistry();
        this.f15307b = gffVar.getLifecycle();
        this.f15306a = bundle;
        this.f15309d = application;
        if (application != null) {
            if (akk.f10386b == null) {
                akk.f10386b = new akk(application);
            }
            akkVar = akk.f10386b;
            bff.d(akkVar);
        } else {
            akkVar = new akk(null);
        }
        this.f15310e = akkVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final blj f(Class cls, String str) {
        Object obj;
        Application application;
        euu euuVar = this.f15307b;
        if (euuVar == null) {
            throw new UnsupportedOperationException("SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras).");
        }
        boolean isAssignableFrom = czy.class.isAssignableFrom(cls);
        Constructor c2 = (!isAssignableFrom || this.f15309d == null) ? nf.c(cls, nf.f19702b) : nf.c(cls, nf.f19701a);
        if (c2 == null) {
            if (this.f15309d != null) {
                return this.f15310e.m(cls);
            }
            if (gpu.f18555f == null) {
                gpu.f18555f = new gpu(13);
            }
            gpu gpuVar = gpu.f18555f;
            bff.d(gpuVar);
            return gpuVar.m(cls);
        }
        hbu hbuVar = this.f15308c;
        bff.d(hbuVar);
        Bundle bundle = this.f15306a;
        Bundle h = hbuVar.h(str);
        Class[] clsArr = gzf.f19043a;
        gzf n = byh.n(h, bundle);
        SavedStateHandleController savedStateHandleController = new SavedStateHandleController(str, n);
        savedStateHandleController.e(euuVar, hbuVar);
        fqv fqvVar = ((ajs) euuVar).f10342g;
        if (fqvVar == fqv.INITIALIZED || fqvVar.b(fqv.STARTED)) {
            hbuVar.g();
        } else {
            euuVar.l(new LegacySavedStateHandleController$tryToAddRecreator$1(euuVar, hbuVar));
        }
        blj d2 = (!isAssignableFrom || (application = this.f15309d) == null) ? nf.d(cls, c2, n) : nf.d(cls, c2, application, n);
        synchronized (d2.l) {
            try {
                obj = d2.l.get("androidx.lifecycle.savedstate.vm.tag");
                if (obj == 0) {
                    d2.l.put("androidx.lifecycle.savedstate.vm.tag", savedStateHandleController);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (obj != 0) {
            savedStateHandleController = obj;
        }
        if (d2.n) {
            blj.o(savedStateHandleController);
        }
        return d2;
    }

    @Override // g.dqr
    public final blj l(Class cls, ewp ewpVar) {
        bmr bmrVar = bmr.y;
        LinkedHashMap linkedHashMap = ewpVar.f11665b;
        String str = (String) linkedHashMap.get(bmrVar);
        if (str == null) {
            throw new IllegalStateException("VIEW_MODEL_KEY must always be provided by ViewModelProvider");
        }
        if (linkedHashMap.get(afo.y) == null || linkedHashMap.get(afo.z) == null) {
            if (this.f15307b != null) {
                return f(cls, str);
            }
            throw new IllegalStateException("SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel.");
        }
        Application application = (Application) linkedHashMap.get(bfy.f11485g);
        boolean isAssignableFrom = czy.class.isAssignableFrom(cls);
        Constructor c2 = (!isAssignableFrom || application == null) ? nf.c(cls, nf.f19702b) : nf.c(cls, nf.f19701a);
        return c2 == null ? this.f15310e.l(cls, ewpVar) : (!isAssignableFrom || application == null) ? nf.d(cls, c2, afo.av(ewpVar)) : nf.d(cls, c2, application, afo.av(ewpVar));
    }

    @Override // g.dqr
    public final blj m(Class cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return f(cls, canonicalName);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }
}

package g;

import android.content.Context;
import androidx.work.WorkerParameters;

/* loaded from: classes.dex */
public abstract class gsd {
    public final cg b(Context context, String str, WorkerParameters workerParameters) {
        bff.p(context, "appContext");
        bff.p(str, "workerClassName");
        bff.p(workerParameters, "workerParameters");
        try {
            Class<? extends U> asSubclass = Class.forName(str).asSubclass(cg.class);
            bff.e(asSubclass, "{\n                Class.…class.java)\n            }");
            try {
                Object newInstance = asSubclass.getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
                bff.e(newInstance, "{\n                val co…Parameters)\n            }");
                cg cgVar = (cg) newInstance;
                if (!cgVar.isUsed()) {
                    return cgVar;
                }
                throw new IllegalStateException("WorkerFactory (" + getClass().getName() + ") returned an instance of a ListenableWorker (" + str + ") which has already been invoked. createWorker() must always return a new instance of a ListenableWorker.");
            } catch (Throwable th) {
                cyl.f().j(ftz.f17416a, "Could not instantiate ".concat(str), th);
                throw th;
            }
        } catch (Throwable th2) {
            cyl.f().j(ftz.f17416a, "Invalid class: ".concat(str), th2);
            throw th2;
        }
    }
}

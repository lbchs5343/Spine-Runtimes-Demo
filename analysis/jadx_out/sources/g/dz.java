package g;

import android.app.Activity;
import android.app.FragmentManager;
import android.os.Build;
import g.ako;

/* loaded from: classes.dex */
public abstract class dz {
    /* JADX WARN: Multi-variable type inference failed */
    public static void a(Activity activity, dtn dtnVar) {
        bff.p(dtnVar, "event");
        if (activity instanceof iz) {
            euu lifecycle = ((iz) activity).getLifecycle();
            if (lifecycle instanceof ajs) {
                ((ajs) lifecycle).k(dtnVar);
            }
        }
    }

    public static void b(emf emfVar) {
        if (Build.VERSION.SDK_INT >= 29) {
            ako.a.Companion.getClass();
            emfVar.registerActivityLifecycleCallbacks(new ako.a());
        }
        FragmentManager fragmentManager = emfVar.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new ako(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }
}

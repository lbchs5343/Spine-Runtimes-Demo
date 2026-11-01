package g;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.os.Build;
import android.os.Bundle;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;

/* loaded from: classes.dex */
public class ako extends Fragment {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f10397a = 0;

    public static final class a implements Application.ActivityLifecycleCallbacks {
        public static final cqy Companion = new cqy();

        public static final void registerIn(Activity activity) {
            Companion.getClass();
            bff.p(activity, TTDownloadField.TT_ACTIVITY);
            activity.registerActivityLifecycleCallbacks(new a());
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            bff.p(activity, TTDownloadField.TT_ACTIVITY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            bff.p(activity, TTDownloadField.TT_ACTIVITY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            bff.p(activity, TTDownloadField.TT_ACTIVITY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostCreated(Activity activity, Bundle bundle) {
            bff.p(activity, TTDownloadField.TT_ACTIVITY);
            int i = ako.f10397a;
            dz.a(activity, dtn.ON_CREATE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            bff.p(activity, TTDownloadField.TT_ACTIVITY);
            int i = ako.f10397a;
            dz.a(activity, dtn.ON_RESUME);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            bff.p(activity, TTDownloadField.TT_ACTIVITY);
            int i = ako.f10397a;
            dz.a(activity, dtn.ON_START);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreDestroyed(Activity activity) {
            bff.p(activity, TTDownloadField.TT_ACTIVITY);
            int i = ako.f10397a;
            dz.a(activity, dtn.ON_DESTROY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPrePaused(Activity activity) {
            bff.p(activity, TTDownloadField.TT_ACTIVITY);
            int i = ako.f10397a;
            dz.a(activity, dtn.ON_PAUSE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreStopped(Activity activity) {
            bff.p(activity, TTDownloadField.TT_ACTIVITY);
            int i = ako.f10397a;
            dz.a(activity, dtn.ON_STOP);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            bff.p(activity, TTDownloadField.TT_ACTIVITY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            bff.p(activity, TTDownloadField.TT_ACTIVITY);
            bff.p(bundle, "bundle");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            bff.p(activity, TTDownloadField.TT_ACTIVITY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            bff.p(activity, TTDownloadField.TT_ACTIVITY);
        }
    }

    public final void b(dtn dtnVar) {
        if (Build.VERSION.SDK_INT < 29) {
            Activity activity = getActivity();
            bff.e(activity, TTDownloadField.TT_ACTIVITY);
            dz.a(activity, dtnVar);
        }
    }

    @Override // android.app.Fragment
    public final void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        b(dtn.ON_CREATE);
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        b(dtn.ON_DESTROY);
    }

    @Override // android.app.Fragment
    public final void onPause() {
        super.onPause();
        b(dtn.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        b(dtn.ON_RESUME);
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        b(dtn.ON_START);
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        b(dtn.ON_STOP);
    }
}

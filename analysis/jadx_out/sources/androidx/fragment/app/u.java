package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.SharedElementCallback;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;
import androidx.activity.ComponentActivity;
import g.aaz;
import g.ajs;
import g.bca;
import g.buv;
import g.cdn;
import g.cyt;
import g.dmi;
import g.dtn;
import g.dts;
import g.ecf;
import g.eyr;
import g.fet;
import g.fqv;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public abstract class u extends ComponentActivity implements aaz, ecf {
    static final String LIFECYCLE_TAG = "android:support:lifecycle";
    boolean mCreated;
    boolean mResumed;
    final eyr mFragments = new eyr(new p(this));
    final ajs mFragmentLifecycleRegistry = new ajs(this);
    boolean mStopped = true;

    public u() {
        getSavedStateRegistry().j(LIFECYCLE_TAG, new fet() { // from class: androidx.fragment.app.q
            @Override // g.fet
            public final Bundle b() {
                u uVar = u.this;
                uVar.markFragmentsCreated();
                uVar.mFragmentLifecycleRegistry.k(dtn.ON_STOP);
                return new Bundle();
            }
        });
        final int i = 0;
        addOnConfigurationChangedListener(new dts(this) { // from class: androidx.fragment.app.f

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ u f184b;

            {
                this.f184b = this;
            }

            @Override // g.dts
            public final void accept(Object obj) {
                switch (i) {
                    case 0:
                        this.f184b.mFragments.b();
                        break;
                    default:
                        this.f184b.mFragments.b();
                        break;
                }
            }
        });
        final int i2 = 1;
        addOnNewIntentListener(new dts(this) { // from class: androidx.fragment.app.f

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ u f184b;

            {
                this.f184b = this;
            }

            @Override // g.dts
            public final void accept(Object obj) {
                switch (i2) {
                    case 0:
                        this.f184b.mFragments.b();
                        break;
                    default:
                        this.f184b.mFragments.b();
                        break;
                }
            }
        });
        addOnContextAvailableListener(new buv() { // from class: androidx.fragment.app.d
            @Override // g.buv
            public final void b(ComponentActivity componentActivity) {
                p pVar = u.this.mFragments.f16386a;
                pVar.f16498f.by(pVar, pVar, null);
            }
        });
    }

    public static boolean c(v vVar, fqv fqvVar) {
        boolean z = false;
        for (Fragment fragment : vVar.ah.i()) {
            if (fragment != null) {
                if (fragment.getHost() != null) {
                    z |= c(fragment.getChildFragmentManager(), fqvVar);
                }
                cdn cdnVar = fragment.mViewLifecycleOwner;
                if (cdnVar != null) {
                    cdnVar.f();
                    if (cdnVar.f12694a.f10342g.b(fqv.STARTED)) {
                        fragment.mViewLifecycleOwner.f12694a.p(fqvVar);
                        z = true;
                    }
                }
                if (fragment.mLifecycleRegistry.f10342g.b(fqv.STARTED)) {
                    fragment.mLifecycleRegistry.p(fqvVar);
                    z = true;
                }
            }
        }
        return z;
    }

    public final View dispatchFragmentsOnCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.mFragments.f16386a.f16498f.v.onCreateView(view, str, context, attributeSet);
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (shouldDumpInternalState(strArr)) {
            printWriter.print(str);
            printWriter.print("Local FragmentActivity ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(" State:");
            String str2 = str + "  ";
            printWriter.print(str2);
            printWriter.print("mCreated=");
            printWriter.print(this.mCreated);
            printWriter.print(" mResumed=");
            printWriter.print(this.mResumed);
            printWriter.print(" mStopped=");
            printWriter.print(this.mStopped);
            if (getApplication() != null) {
                cyt.a(this).d(str2, printWriter);
            }
            this.mFragments.f16386a.f16498f.bh(str, fileDescriptor, printWriter, strArr);
        }
    }

    public v getSupportFragmentManager() {
        return this.mFragments.f16386a.f16498f;
    }

    @Deprecated
    public cyt getSupportLoaderManager() {
        return cyt.a(this);
    }

    public void markFragmentsCreated() {
        while (c(getSupportFragmentManager(), fqv.CREATED)) {
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        this.mFragments.b();
        super.onActivityResult(i, i2, intent);
    }

    @Deprecated
    public void onAttachFragment(Fragment fragment) {
    }

    @Override // androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mFragmentLifecycleRegistry.k(dtn.ON_CREATE);
        dmi dmiVar = this.mFragments.f16386a.f16498f;
        dmiVar.aj = false;
        dmiVar.ag = false;
        dmiVar.f213e.f199f = false;
        dmiVar.cd(1);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View dispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(view, str, context, attributeSet);
        return dispatchFragmentsOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : dispatchFragmentsOnCreateView;
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View dispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(null, str, context, attributeSet);
        return dispatchFragmentsOnCreateView == null ? super.onCreateView(str, context, attributeSet) : dispatchFragmentsOnCreateView;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mFragments.f16386a.f16498f.as();
        this.mFragmentLifecycleRegistry.k(dtn.ON_DESTROY);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 6) {
            return this.mFragments.f16386a.f16498f.bx(menuItem);
        }
        return false;
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.mResumed = false;
        this.mFragments.f16386a.f16498f.cd(5);
        this.mFragmentLifecycleRegistry.k(dtn.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        onResumeFragments();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.mFragments.b();
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        this.mFragments.b();
        super.onResume();
        this.mResumed = true;
        this.mFragments.f16386a.f16498f.ci(true);
    }

    public void onResumeFragments() {
        this.mFragmentLifecycleRegistry.k(dtn.ON_RESUME);
        dmi dmiVar = this.mFragments.f16386a.f16498f;
        dmiVar.aj = false;
        dmiVar.ag = false;
        dmiVar.f213e.f199f = false;
        dmiVar.cd(7);
    }

    @Override // android.app.Activity
    public void onStart() {
        this.mFragments.b();
        super.onStart();
        this.mStopped = false;
        if (!this.mCreated) {
            this.mCreated = true;
            dmi dmiVar = this.mFragments.f16386a.f16498f;
            dmiVar.aj = false;
            dmiVar.ag = false;
            dmiVar.f213e.f199f = false;
            dmiVar.cd(4);
        }
        this.mFragments.f16386a.f16498f.ci(true);
        this.mFragmentLifecycleRegistry.k(dtn.ON_START);
        dmi dmiVar2 = this.mFragments.f16386a.f16498f;
        dmiVar2.aj = false;
        dmiVar2.ag = false;
        dmiVar2.f213e.f199f = false;
        dmiVar2.cd(5);
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.mFragments.b();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.mStopped = true;
        markFragmentsCreated();
        dmi dmiVar = this.mFragments.f16386a.f16498f;
        dmiVar.ag = true;
        dmiVar.f213e.f199f = true;
        dmiVar.cd(4);
        this.mFragmentLifecycleRegistry.k(dtn.ON_STOP);
    }

    public void setEnterSharedElementCallback(bca bcaVar) {
        setEnterSharedElementCallback((SharedElementCallback) null);
    }

    public void setExitSharedElementCallback(bca bcaVar) {
        setExitSharedElementCallback((SharedElementCallback) null);
    }

    public void startActivityFromFragment(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i) {
        startActivityFromFragment(fragment, intent, i, (Bundle) null);
    }

    public void startActivityFromFragment(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        if (i == -1) {
            startActivityForResult(intent, -1, bundle);
        } else {
            fragment.startActivityForResult(intent, i, bundle);
        }
    }

    @Deprecated
    public void startIntentSenderFromFragment(Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (i == -1) {
            startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
        } else {
            fragment.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
        }
    }

    public void supportFinishAfterTransition() {
        finishAfterTransition();
    }

    public abstract void supportInvalidateOptionsMenu();

    public void supportPostponeEnterTransition() {
        postponeEnterTransition();
    }

    public void supportStartPostponedEnterTransition() {
        startPostponedEnterTransition();
    }

    @Override // g.ecf
    @Deprecated
    public final void validateRequestPermissionsRequestCode(int i) {
    }
}

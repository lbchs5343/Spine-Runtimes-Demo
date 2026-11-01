package g;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzawm;
import com.google.android.gms.internal.ads.zzayn;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public final class fci implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f16559a;

    /* renamed from: d, reason: collision with root package name */
    public final Application f16562d;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f16561c = 0;

    /* renamed from: b, reason: collision with root package name */
    public boolean f16560b = false;

    public fci(Application application, zzawm zzawmVar) {
        this.f16559a = new WeakReference(zzawmVar);
        this.f16562d = application;
    }

    public fci(Application application, zzayn zzaynVar) {
        this.f16559a = new WeakReference(zzaynVar);
        this.f16562d = application;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        switch (this.f16561c) {
            case 0:
                try {
                    Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) this.f16559a.get();
                    if (activityLifecycleCallbacks != null) {
                        activityLifecycleCallbacks.onActivityCreated(activity, bundle);
                    } else if (!this.f16560b) {
                        this.f16562d.unregisterActivityLifecycleCallbacks(this);
                        this.f16560b = true;
                    }
                    break;
                } catch (Exception unused) {
                    return;
                }
            default:
                try {
                    Application.ActivityLifecycleCallbacks activityLifecycleCallbacks2 = (Application.ActivityLifecycleCallbacks) this.f16559a.get();
                    if (activityLifecycleCallbacks2 != null) {
                        activityLifecycleCallbacks2.onActivityCreated(activity, bundle);
                    } else if (!this.f16560b) {
                        this.f16562d.unregisterActivityLifecycleCallbacks(this);
                        this.f16560b = true;
                    }
                    break;
                } catch (Exception e2) {
                    agd.f("Error while dispatching lifecycle callback.", e2);
                    return;
                }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        switch (this.f16561c) {
            case 0:
                try {
                    Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) this.f16559a.get();
                    if (activityLifecycleCallbacks != null) {
                        activityLifecycleCallbacks.onActivityDestroyed(activity);
                    } else if (!this.f16560b) {
                        this.f16562d.unregisterActivityLifecycleCallbacks(this);
                        this.f16560b = true;
                    }
                    break;
                } catch (Exception unused) {
                    return;
                }
            default:
                try {
                    Application.ActivityLifecycleCallbacks activityLifecycleCallbacks2 = (Application.ActivityLifecycleCallbacks) this.f16559a.get();
                    if (activityLifecycleCallbacks2 != null) {
                        activityLifecycleCallbacks2.onActivityDestroyed(activity);
                    } else if (!this.f16560b) {
                        this.f16562d.unregisterActivityLifecycleCallbacks(this);
                        this.f16560b = true;
                    }
                    break;
                } catch (Exception e2) {
                    agd.f("Error while dispatching lifecycle callback.", e2);
                    return;
                }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        switch (this.f16561c) {
            case 0:
                try {
                    Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) this.f16559a.get();
                    if (activityLifecycleCallbacks != null) {
                        activityLifecycleCallbacks.onActivityPaused(activity);
                    } else if (!this.f16560b) {
                        this.f16562d.unregisterActivityLifecycleCallbacks(this);
                        this.f16560b = true;
                    }
                    break;
                } catch (Exception unused) {
                    return;
                }
            default:
                try {
                    Application.ActivityLifecycleCallbacks activityLifecycleCallbacks2 = (Application.ActivityLifecycleCallbacks) this.f16559a.get();
                    if (activityLifecycleCallbacks2 != null) {
                        activityLifecycleCallbacks2.onActivityPaused(activity);
                    } else if (!this.f16560b) {
                        this.f16562d.unregisterActivityLifecycleCallbacks(this);
                        this.f16560b = true;
                    }
                    break;
                } catch (Exception e2) {
                    agd.f("Error while dispatching lifecycle callback.", e2);
                    return;
                }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        switch (this.f16561c) {
            case 0:
                try {
                    Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) this.f16559a.get();
                    if (activityLifecycleCallbacks != null) {
                        activityLifecycleCallbacks.onActivityResumed(activity);
                    } else if (!this.f16560b) {
                        this.f16562d.unregisterActivityLifecycleCallbacks(this);
                        this.f16560b = true;
                    }
                    break;
                } catch (Exception unused) {
                    return;
                }
            default:
                try {
                    Application.ActivityLifecycleCallbacks activityLifecycleCallbacks2 = (Application.ActivityLifecycleCallbacks) this.f16559a.get();
                    if (activityLifecycleCallbacks2 != null) {
                        activityLifecycleCallbacks2.onActivityResumed(activity);
                    } else if (!this.f16560b) {
                        this.f16562d.unregisterActivityLifecycleCallbacks(this);
                        this.f16560b = true;
                    }
                    break;
                } catch (Exception e2) {
                    agd.f("Error while dispatching lifecycle callback.", e2);
                    return;
                }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        switch (this.f16561c) {
            case 0:
                try {
                    Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) this.f16559a.get();
                    if (activityLifecycleCallbacks != null) {
                        activityLifecycleCallbacks.onActivitySaveInstanceState(activity, bundle);
                    } else if (!this.f16560b) {
                        this.f16562d.unregisterActivityLifecycleCallbacks(this);
                        this.f16560b = true;
                    }
                    break;
                } catch (Exception unused) {
                    return;
                }
            default:
                try {
                    Application.ActivityLifecycleCallbacks activityLifecycleCallbacks2 = (Application.ActivityLifecycleCallbacks) this.f16559a.get();
                    if (activityLifecycleCallbacks2 != null) {
                        activityLifecycleCallbacks2.onActivitySaveInstanceState(activity, bundle);
                    } else if (!this.f16560b) {
                        this.f16562d.unregisterActivityLifecycleCallbacks(this);
                        this.f16560b = true;
                    }
                    break;
                } catch (Exception e2) {
                    agd.f("Error while dispatching lifecycle callback.", e2);
                    return;
                }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        switch (this.f16561c) {
            case 0:
                try {
                    Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) this.f16559a.get();
                    if (activityLifecycleCallbacks != null) {
                        activityLifecycleCallbacks.onActivityStarted(activity);
                    } else if (!this.f16560b) {
                        this.f16562d.unregisterActivityLifecycleCallbacks(this);
                        this.f16560b = true;
                    }
                    break;
                } catch (Exception unused) {
                    return;
                }
            default:
                try {
                    Application.ActivityLifecycleCallbacks activityLifecycleCallbacks2 = (Application.ActivityLifecycleCallbacks) this.f16559a.get();
                    if (activityLifecycleCallbacks2 != null) {
                        activityLifecycleCallbacks2.onActivityStarted(activity);
                    } else if (!this.f16560b) {
                        this.f16562d.unregisterActivityLifecycleCallbacks(this);
                        this.f16560b = true;
                    }
                    break;
                } catch (Exception e2) {
                    agd.f("Error while dispatching lifecycle callback.", e2);
                    return;
                }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        switch (this.f16561c) {
            case 0:
                try {
                    Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) this.f16559a.get();
                    if (activityLifecycleCallbacks != null) {
                        activityLifecycleCallbacks.onActivityStopped(activity);
                    } else if (!this.f16560b) {
                        this.f16562d.unregisterActivityLifecycleCallbacks(this);
                        this.f16560b = true;
                    }
                    break;
                } catch (Exception unused) {
                    return;
                }
            default:
                try {
                    Application.ActivityLifecycleCallbacks activityLifecycleCallbacks2 = (Application.ActivityLifecycleCallbacks) this.f16559a.get();
                    if (activityLifecycleCallbacks2 != null) {
                        activityLifecycleCallbacks2.onActivityStopped(activity);
                    } else if (!this.f16560b) {
                        this.f16562d.unregisterActivityLifecycleCallbacks(this);
                        this.f16560b = true;
                    }
                    break;
                } catch (Exception e2) {
                    agd.f("Error while dispatching lifecycle callback.", e2);
                    return;
                }
        }
    }
}

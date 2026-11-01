package g;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class dp implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WeakReference f14560a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f14561b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f14562c;

    public dp(WeakReference weakReference, Context context, int i, String str) {
        this.f14560a = weakReference;
        this.f14561b = context;
        this.f14562c = i;
    }

    @Override // java.util.concurrent.Callable
    public caa call() throws Exception {
        Context context = (Context) this.f14560a.get();
        if (context == null) {
            context = this.f14561b;
        }
        return ahz.f(context, this.f14562c);
    }
}

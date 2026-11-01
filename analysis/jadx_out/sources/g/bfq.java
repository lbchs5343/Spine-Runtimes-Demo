package g;

import android.content.Context;
import android.os.Build;
import java.util.Set;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class bfq implements bsm, fxj {

    /* renamed from: a, reason: collision with root package name */
    public static final ekg f11461a = new ekg(0);

    /* renamed from: b, reason: collision with root package name */
    public final Set f11462b;

    /* renamed from: c, reason: collision with root package name */
    public final ThreadPoolExecutor f11463c;

    /* renamed from: d, reason: collision with root package name */
    public final elu f11464d;

    /* renamed from: e, reason: collision with root package name */
    public final Context f11465e;

    /* renamed from: f, reason: collision with root package name */
    public final boa f11466f;

    public bfq(Context context, String str, Set set, boa boaVar) {
        elu eluVar = new elu(context, 1, str);
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), f11461a);
        this.f11464d = eluVar;
        this.f11462b = set;
        this.f11463c = threadPoolExecutor;
        this.f11466f = boaVar;
        this.f11465e = context;
    }

    public final chw g() {
        return !(Build.VERSION.SDK_INT >= 24 ? cml.a(this.f11465e) : true) ? byh.w("") : byh.bd(new cdi(this, 0), this.f11463c);
    }

    public final void h() {
        if (this.f11462b.size() <= 0) {
            byh.w(null);
            return;
        }
        if (Build.VERSION.SDK_INT >= 24 ? cml.a(this.f11465e) : true) {
            byh.bd(new cdi(this, 1), this.f11463c);
        } else {
            byh.w(null);
        }
    }
}

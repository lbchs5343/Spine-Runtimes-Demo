package g;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class cyh {

    /* renamed from: a, reason: collision with root package name */
    public static final ExecutorService f13750a = com.bytedance.sdk.component.o.ox.d(new com.bytedance.sdk.component.o.o("ie/LottieTask"));

    /* renamed from: c, reason: collision with root package name */
    public final LinkedHashSet f13752c = new LinkedHashSet(1);

    /* renamed from: d, reason: collision with root package name */
    public final LinkedHashSet f13753d = new LinkedHashSet(1);

    /* renamed from: e, reason: collision with root package name */
    public final Handler f13754e = new Handler(Looper.getMainLooper());

    /* renamed from: b, reason: collision with root package name */
    public volatile caa f13751b = null;

    public cyh(Callable callable, boolean z) {
        if (!z) {
            f13750a.execute(new ely(this, callable, 1));
            return;
        }
        try {
            setResult((caa) callable.call());
        } catch (Throwable th) {
            setResult(new caa(th));
        }
    }

    public static void f(cyh cyhVar, Throwable th) {
        synchronized (cyhVar) {
            ArrayList arrayList = new ArrayList(cyhVar.f13753d);
            if (arrayList.isEmpty()) {
                hbp.c("Lottie encountered an error but no failure listener was added:", th);
                return;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((gao) it.next()).dq(th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setResult(caa caaVar) {
        if (this.f13751b != null) {
            throw new IllegalStateException("A task may only be set once.");
        }
        this.f13751b = caaVar;
        this.f13754e.post(new dyn(14, this));
    }

    public final synchronized void h(gao gaoVar) {
        Throwable th;
        try {
            caa caaVar = this.f13751b;
            if (caaVar != null && (th = caaVar.f12535b) != null) {
                gaoVar.dq(th);
            }
            this.f13753d.add(gaoVar);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void i(gao gaoVar) {
        this.f13753d.remove(gaoVar);
    }

    public final synchronized void j(gao gaoVar) {
        Object obj;
        try {
            caa caaVar = this.f13751b;
            if (caaVar != null && (obj = caaVar.f12534a) != null) {
                gaoVar.dq(obj);
            }
            this.f13752c.add(gaoVar);
        } catch (Throwable th) {
            throw th;
        }
    }
}

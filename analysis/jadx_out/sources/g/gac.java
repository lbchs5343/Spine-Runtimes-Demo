package g;

import android.database.Cursor;
import android.os.Looper;
import j$.util.DesugarCollections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
public abstract class gac {

    /* renamed from: ab, reason: collision with root package name */
    public Executor f17774ab;
    public aqv ad;
    public List ae;
    public final Map u;
    public fgd v;
    public final LinkedHashMap w;
    public volatile crd y;
    public boolean z;
    public final dbe x = p();
    public final LinkedHashMap t = new LinkedHashMap();
    public final ReentrantReadWriteLock aa = new ReentrantReadWriteLock();
    public final ThreadLocal ac = new ThreadLocal();

    public gac() {
        Map synchronizedMap = DesugarCollections.synchronizedMap(new LinkedHashMap());
        bff.e(synchronizedMap, "synchronizedMap(mutableMapOf())");
        this.u = synchronizedMap;
        this.w = new LinkedHashMap();
    }

    public static Object af(Class cls, fgd fgdVar) {
        if (cls.isInstance(fgdVar)) {
            return fgdVar;
        }
        if (fgdVar instanceof mu) {
            return af(cls, ((mu) fgdVar).a());
        }
        return null;
    }

    public final Cursor ag(fxn fxnVar) {
        aj();
        al();
        return ao().i().i(fxnVar);
    }

    public final void ah() {
        ao().i().h();
    }

    public final Object ai(Callable callable) {
        an();
        try {
            Object call = callable.call();
            ah();
            return call;
        } finally {
            am();
        }
    }

    public final void aj() {
        if (!this.z && Looper.getMainLooper().getThread() == Thread.currentThread()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public final void ak(Runnable runnable) {
        an();
        try {
            runnable.run();
            ah();
        } finally {
            am();
        }
    }

    public final void al() {
        if (!ao().i().e() && this.ac.get() != null) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }

    public final void am() {
        ao().i().g();
        if (ao().i().e()) {
            return;
        }
        dbe dbeVar = this.x;
        if (dbeVar.h.compareAndSet(false, true)) {
            Executor executor = dbeVar.f13914g.f17774ab;
            if (executor != null) {
                executor.execute(dbeVar.i);
            } else {
                bff.v("internalQueryExecutor");
                throw null;
            }
        }
    }

    public final void an() {
        aj();
        aj();
        crd i = ao().i();
        this.x.o(i);
        if (i.m()) {
            i.n();
        } else {
            i.l();
        }
    }

    public final fgd ao() {
        fgd fgdVar = this.v;
        if (fgdVar != null) {
            return fgdVar;
        }
        bff.v("internalOpenHelper");
        throw null;
    }

    public Set o() {
        return gpk.f18539a;
    }

    public abstract dbe p();

    public abstract fgd q(hda hdaVar);

    public List r(Map map) {
        bff.p(map, "autoMigrationSpecs");
        return fai.f16469a;
    }

    public Map s() {
        return dyq.f15095a;
    }
}

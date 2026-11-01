package g;

import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* loaded from: classes3.dex */
public final class gfi extends FutureTask implements Comparable {

    /* renamed from: a, reason: collision with root package name */
    public final String f18022a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ fth f18023b;

    /* renamed from: c, reason: collision with root package name */
    public final long f18024c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f18025d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gfi(fth fthVar, Runnable runnable, boolean z, String str) {
        super(runnable, null);
        this.f18023b = fthVar;
        long andIncrement = fth.f17372a.getAndIncrement();
        this.f18024c = andIncrement;
        this.f18022a = str;
        this.f18025d = z;
        if (andIncrement == Long.MAX_VALUE) {
            bgm bgmVar = ((cyg) fthVar.z).z;
            cyg.ak(bgmVar);
            bgmVar.f11518b.h("Tasks index overflow");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gfi(fth fthVar, Callable callable, boolean z) {
        super(callable);
        this.f18023b = fthVar;
        long andIncrement = fth.f17372a.getAndIncrement();
        this.f18024c = andIncrement;
        this.f18022a = "Task exception on worker thread";
        this.f18025d = z;
        if (andIncrement == Long.MAX_VALUE) {
            bgm bgmVar = ((cyg) fthVar.z).z;
            cyg.ak(bgmVar);
            bgmVar.f11518b.h("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        gfi gfiVar = (gfi) obj;
        boolean z = gfiVar.f18025d;
        boolean z2 = this.f18025d;
        if (z2 != z) {
            return !z2 ? 1 : -1;
        }
        long j = gfiVar.f18024c;
        long j2 = this.f18024c;
        if (j2 < j) {
            return -1;
        }
        if (j2 > j) {
            return 1;
        }
        bgm bgmVar = ((cyg) this.f18023b.z).z;
        cyg.ak(bgmVar);
        bgmVar.f11517a.i(Long.valueOf(j2), "Two tasks share the same index. index");
        return 0;
    }

    @Override // java.util.concurrent.FutureTask
    public final void setException(Throwable th) {
        bgm bgmVar = ((cyg) this.f18023b.z).z;
        cyg.ak(bgmVar);
        bgmVar.f11518b.i(th, this.f18022a);
        super.setException(th);
    }
}

package g;

import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class ely extends FutureTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15783a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f15784b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ely(Object obj, Callable callable, int i) {
        super(callable);
        this.f15783a = i;
        this.f15784b = obj;
    }

    @Override // java.util.concurrent.FutureTask
    public final void done() {
        switch (this.f15783a) {
            case 0:
                ezv ezvVar = (ezv) this.f15784b;
                AtomicBoolean atomicBoolean = ezvVar.f16431g;
                try {
                    Object obj = get();
                    if (atomicBoolean.get()) {
                        return;
                    }
                    ezvVar.k(obj);
                    return;
                } catch (InterruptedException unused) {
                    return;
                } catch (CancellationException unused2) {
                    if (atomicBoolean.get()) {
                        return;
                    }
                    ezvVar.k(null);
                    return;
                } catch (ExecutionException e2) {
                    throw new RuntimeException("An error occurred while executing doInBackground()", e2.getCause());
                } catch (Throwable th) {
                    throw new RuntimeException("An error occurred while executing doInBackground()", th);
                }
            default:
                cyh cyhVar = (cyh) this.f15784b;
                if (isCancelled()) {
                    return;
                }
                try {
                    cyhVar.setResult((caa) get());
                    return;
                } catch (InterruptedException | ExecutionException e3) {
                    cyhVar.setResult(new caa(e3));
                    return;
                }
        }
    }
}

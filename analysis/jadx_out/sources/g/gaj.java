package g;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class gaj extends ahp {
    final /* synthetic */ zy zza;
    private final Callable zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gaj(zy zyVar, Callable callable, Executor executor) {
        super(zyVar, executor);
        this.zza = zyVar;
        this.zzc = callable;
    }

    @Override // g.eye
    public final Object _bc() {
        return this.zzc.call();
    }

    @Override // g.eye
    public final String e() {
        return this.zzc.toString();
    }
}

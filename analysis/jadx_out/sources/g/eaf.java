package g;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class eaf implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ eaf[] f15179a;
    public static final eaf zza;

    static {
        eaf eafVar = new eaf("INSTANCE", 0);
        zza = eafVar;
        f15179a = new eaf[]{eafVar};
    }

    public static eaf[] values() {
        return (eaf[]) f15179a.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "MoreExecutors.directExecutor()";
    }
}

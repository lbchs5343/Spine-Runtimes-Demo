package g;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class fyh implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ fyh[] f17636a;
    public static final fyh zza;

    static {
        fyh fyhVar = new fyh("INSTANCE", 0);
        zza = fyhVar;
        f17636a = new fyh[]{fyhVar};
    }

    public static fyh[] values() {
        return (fyh[]) f17636a.clone();
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

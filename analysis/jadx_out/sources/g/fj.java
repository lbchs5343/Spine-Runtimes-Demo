package g;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class fj implements Executor {
    public static final fj INSTANCE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ fj[] f16875a;

    static {
        fj fjVar = new fj("INSTANCE", 0);
        INSTANCE = fjVar;
        f16875a = new fj[]{fjVar};
    }

    public static fj valueOf(String str) {
        return (fj) Enum.valueOf(fj.class, str);
    }

    public static fj[] values() {
        return (fj[]) f16875a.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        bff.p(runnable, "command");
        runnable.run();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "DirectExecutor";
    }
}

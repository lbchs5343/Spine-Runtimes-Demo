package g;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class drj implements Executor {
    public static final drj INSTANCE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ drj[] f14669a;

    static {
        drj drjVar = new drj("INSTANCE", 0);
        INSTANCE = drjVar;
        f14669a = new drj[]{drjVar};
    }

    public static drj valueOf(String str) {
        return (drj) Enum.valueOf(drj.class, str);
    }

    public static drj[] values() {
        return (drj[]) f14669a.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "DirectExecutor";
    }
}

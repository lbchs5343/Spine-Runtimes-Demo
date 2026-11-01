package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class fqv {
    public static final fqv CREATED;
    public static final fqv DESTROYED;
    public static final fqv INITIALIZED;
    public static final fqv RESUMED;
    public static final fqv STARTED;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ fqv[] f17268a;

    static {
        fqv fqvVar = new fqv("DESTROYED", 0);
        DESTROYED = fqvVar;
        fqv fqvVar2 = new fqv("INITIALIZED", 1);
        INITIALIZED = fqvVar2;
        fqv fqvVar3 = new fqv("CREATED", 2);
        CREATED = fqvVar3;
        fqv fqvVar4 = new fqv("STARTED", 3);
        STARTED = fqvVar4;
        fqv fqvVar5 = new fqv("RESUMED", 4);
        RESUMED = fqvVar5;
        f17268a = new fqv[]{fqvVar, fqvVar2, fqvVar3, fqvVar4, fqvVar5};
    }

    public static fqv valueOf(String str) {
        return (fqv) Enum.valueOf(fqv.class, str);
    }

    public static fqv[] values() {
        return (fqv[]) f17268a.clone();
    }

    public final boolean b(fqv fqvVar) {
        bff.p(fqvVar, "state");
        return compareTo(fqvVar) >= 0;
    }
}

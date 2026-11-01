package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class egx {
    public static final egx FINISHED;
    public static final egx PENDING;
    public static final egx RUNNING;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ egx[] f15532a;

    static {
        egx egxVar = new egx("PENDING", 0);
        PENDING = egxVar;
        egx egxVar2 = new egx("RUNNING", 1);
        RUNNING = egxVar2;
        egx egxVar3 = new egx("FINISHED", 2);
        FINISHED = egxVar3;
        f15532a = new egx[]{egxVar, egxVar2, egxVar3};
    }

    public static egx valueOf(String str) {
        return (egx) Enum.valueOf(egx.class, str);
    }

    public static egx[] values() {
        return (egx[]) f15532a.clone();
    }
}

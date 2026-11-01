package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class frq {
    public static final frq BLOCKING;
    public static final frq CPU_ACQUIRED;
    public static final frq DORMANT;
    public static final frq PARKING;
    public static final frq TERMINATED;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ frq[] f17305a;

    static {
        frq frqVar = new frq("CPU_ACQUIRED", 0);
        CPU_ACQUIRED = frqVar;
        frq frqVar2 = new frq("BLOCKING", 1);
        BLOCKING = frqVar2;
        frq frqVar3 = new frq("PARKING", 2);
        PARKING = frqVar3;
        frq frqVar4 = new frq("DORMANT", 3);
        DORMANT = frqVar4;
        frq frqVar5 = new frq("TERMINATED", 4);
        TERMINATED = frqVar5;
        f17305a = new frq[]{frqVar, frqVar2, frqVar3, frqVar4, frqVar5};
    }

    public static frq valueOf(String str) {
        return (frq) Enum.valueOf(frq.class, str);
    }

    public static frq[] values() {
        return (frq[]) f17305a.clone();
    }
}

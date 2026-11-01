package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class je {
    public static final je HIGH;
    public static final je LOW;
    public static final je NORMAL;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ je[] f19471a;

    static {
        je jeVar = new je("LOW", 0);
        LOW = jeVar;
        je jeVar2 = new je("NORMAL", 1);
        NORMAL = jeVar2;
        je jeVar3 = new je("HIGH", 2);
        HIGH = jeVar3;
        f19471a = new je[]{jeVar, jeVar2, jeVar3};
    }

    public static je valueOf(String str) {
        return (je) Enum.valueOf(je.class, str);
    }

    public static je[] values() {
        return (je[]) f19471a.clone();
    }
}

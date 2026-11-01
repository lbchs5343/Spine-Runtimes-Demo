package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class frh {
    public static final frh CLASS;
    public static final frh FIELD;
    public static final frh METHOD;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ frh[] f17283a;

    static {
        frh frhVar = new frh("CLASS", 0);
        CLASS = frhVar;
        frh frhVar2 = new frh("FIELD", 1);
        FIELD = frhVar2;
        frh frhVar3 = new frh("METHOD", 2);
        METHOD = frhVar3;
        f17283a = new frh[]{frhVar, frhVar2, frhVar3};
    }

    public static frh valueOf(String str) {
        return (frh) Enum.valueOf(frh.class, str);
    }

    public static frh[] values() {
        return (frh[]) f17283a.clone();
    }
}

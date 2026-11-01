package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class ath {
    public static final ath AND;
    public static final ath COMPARE;
    public static final ath NOT;
    public static final ath OR;
    public static final ath TERNARY;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ ath[] f10799a;

    static {
        ath athVar = new ath("COMPARE", 0);
        COMPARE = athVar;
        ath athVar2 = new ath("TERNARY", 1);
        TERNARY = athVar2;
        ath athVar3 = new ath("NOT", 2);
        NOT = athVar3;
        ath athVar4 = new ath("AND", 3);
        AND = athVar4;
        ath athVar5 = new ath("OR", 4);
        OR = athVar5;
        f10799a = new ath[]{athVar, athVar2, athVar3, athVar4, athVar5};
    }

    public static ath valueOf(String str) {
        return (ath) Enum.valueOf(ath.class, str);
    }

    public static ath[] values() {
        return (ath[]) f10799a.clone();
    }
}

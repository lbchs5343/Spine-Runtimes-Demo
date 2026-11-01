package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class ant {
    public static final ant LEGACY_STRICT;
    public static final ant LENIENT;
    public static final ant STRICT;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ ant[] f10532a;

    static {
        ant antVar = new ant("LENIENT", 0);
        LENIENT = antVar;
        ant antVar2 = new ant("LEGACY_STRICT", 1);
        LEGACY_STRICT = antVar2;
        ant antVar3 = new ant("STRICT", 2);
        STRICT = antVar3;
        f10532a = new ant[]{antVar, antVar2, antVar3};
    }

    public static ant valueOf(String str) {
        return (ant) Enum.valueOf(ant.class, str);
    }

    public static ant[] values() {
        return (ant[]) f10532a.clone();
    }
}

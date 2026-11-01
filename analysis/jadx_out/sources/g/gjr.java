package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class gjr {
    public static final gjr ALLOW;
    public static final gjr BLOCK_ALL;
    public static final gjr BLOCK_INACCESSIBLE;
    public static final gjr INDECISIVE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ gjr[] f18265a;

    static {
        gjr gjrVar = new gjr("ALLOW", 0);
        ALLOW = gjrVar;
        gjr gjrVar2 = new gjr("INDECISIVE", 1);
        INDECISIVE = gjrVar2;
        gjr gjrVar3 = new gjr("BLOCK_INACCESSIBLE", 2);
        BLOCK_INACCESSIBLE = gjrVar3;
        gjr gjrVar4 = new gjr("BLOCK_ALL", 3);
        BLOCK_ALL = gjrVar4;
        f18265a = new gjr[]{gjrVar, gjrVar2, gjrVar3, gjrVar4};
    }

    public static gjr valueOf(String str) {
        return (gjr) Enum.valueOf(gjr.class, str);
    }

    public static gjr[] values() {
        return (gjr[]) f18265a.clone();
    }
}

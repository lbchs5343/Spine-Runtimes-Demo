package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class pk {
    public static final pk CLASS;
    public static final pk DECLARATION;
    public static final pk END;
    public static final pk FIELD;
    public static final pk METHOD;
    public static final pk OFFSET;
    public static final pk PKG;
    public static final pk VAR;
    public static final pk VAR_REF;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ pk[] f19817a;

    static {
        pk pkVar = new pk("CLASS", 0);
        CLASS = pkVar;
        pk pkVar2 = new pk("FIELD", 1);
        FIELD = pkVar2;
        pk pkVar3 = new pk("METHOD", 2);
        METHOD = pkVar3;
        pk pkVar4 = new pk("PKG", 3);
        PKG = pkVar4;
        pk pkVar5 = new pk("VAR", 4);
        VAR = pkVar5;
        pk pkVar6 = new pk("VAR_REF", 5);
        VAR_REF = pkVar6;
        pk pkVar7 = new pk("DECLARATION", 6);
        DECLARATION = pkVar7;
        pk pkVar8 = new pk("OFFSET", 7);
        OFFSET = pkVar8;
        pk pkVar9 = new pk("END", 8);
        END = pkVar9;
        f19817a = new pk[]{pkVar, pkVar2, pkVar3, pkVar4, pkVar5, pkVar6, pkVar7, pkVar8, pkVar9};
    }

    public static pk valueOf(String str) {
        return (pk) Enum.valueOf(pk.class, str);
    }

    public static pk[] values() {
        return (pk[]) f19817a.clone();
    }
}

package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class ayj {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ ayj[] f11058a;

    /* renamed from: d, reason: collision with root package name */
    public static final ayj f11059d;
    public static final ayj dq;
    public static final ayj iw;
    public static final ayj mn;
    public static final ayj ox;
    public static final ayj p;
    public static final ayj s;

    static {
        ayj ayjVar = new ayj("PRE_COMP", 0);
        dq = ayjVar;
        ayj ayjVar2 = new ayj("SOLID", 1);
        f11059d = ayjVar2;
        ayj ayjVar3 = new ayj("IMAGE", 2);
        ox = ayjVar3;
        ayj ayjVar4 = new ayj("NULL", 3);
        p = ayjVar4;
        ayj ayjVar5 = new ayj("SHAPE", 4);
        s = ayjVar5;
        ayj ayjVar6 = new ayj("TEXT", 5);
        iw = ayjVar6;
        ayj ayjVar7 = new ayj("UNKNOWN", 6);
        mn = ayjVar7;
        f11058a = new ayj[]{ayjVar, ayjVar2, ayjVar3, ayjVar4, ayjVar5, ayjVar6, ayjVar7};
    }

    public static ayj valueOf(String str) {
        return (ayj) Enum.valueOf(ayj.class, str);
    }

    public static ayj[] values() {
        return (ayj[]) f11058a.clone();
    }
}

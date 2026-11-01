package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class dho {
    public static final dho CONFLICT;
    public static final dho CONFLICT_BY_GENERIC;
    public static final dho EQUAL;
    public static final dho NARROW;
    public static final dho NARROW_BY_GENERIC;
    public static final dho UNKNOWN;
    public static final dho WIDER;
    public static final dho WIDER_BY_GENERIC;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ dho[] f14191a;

    static {
        dho dhoVar = new dho("EQUAL", 0);
        EQUAL = dhoVar;
        dho dhoVar2 = new dho("NARROW", 1);
        NARROW = dhoVar2;
        dho dhoVar3 = new dho("NARROW_BY_GENERIC", 2);
        NARROW_BY_GENERIC = dhoVar3;
        dho dhoVar4 = new dho("WIDER", 3);
        WIDER = dhoVar4;
        dho dhoVar5 = new dho("WIDER_BY_GENERIC", 4);
        WIDER_BY_GENERIC = dhoVar5;
        dho dhoVar6 = new dho("CONFLICT", 5);
        CONFLICT = dhoVar6;
        dho dhoVar7 = new dho("CONFLICT_BY_GENERIC", 6);
        CONFLICT_BY_GENERIC = dhoVar7;
        dho dhoVar8 = new dho("UNKNOWN", 7);
        UNKNOWN = dhoVar8;
        f14191a = new dho[]{dhoVar, dhoVar2, dhoVar3, dhoVar4, dhoVar5, dhoVar6, dhoVar7, dhoVar8};
    }

    public static dho valueOf(String str) {
        return (dho) Enum.valueOf(dho.class, str);
    }

    public static dho[] values() {
        return (dho[]) f14191a.clone();
    }

    public final boolean b() {
        return this == WIDER || this == WIDER_BY_GENERIC;
    }

    public final dho c() {
        int i = fkt.f16946a[ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? this : NARROW_BY_GENERIC : NARROW : WIDER_BY_GENERIC : WIDER;
    }

    public final boolean d() {
        return this == EQUAL;
    }

    public final boolean e() {
        return this == NARROW || this == NARROW_BY_GENERIC;
    }
}

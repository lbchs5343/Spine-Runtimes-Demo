package j$.util.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: j$.util.stream.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class EnumC0319g {
    public static final EnumC0319g CONCURRENT;
    public static final EnumC0319g IDENTITY_FINISH;
    public static final EnumC0319g UNORDERED;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ EnumC0319g[] f21035a;

    static {
        EnumC0319g enumC0319g = new EnumC0319g("CONCURRENT", 0);
        CONCURRENT = enumC0319g;
        EnumC0319g enumC0319g2 = new EnumC0319g("UNORDERED", 1);
        UNORDERED = enumC0319g2;
        EnumC0319g enumC0319g3 = new EnumC0319g("IDENTITY_FINISH", 2);
        IDENTITY_FINISH = enumC0319g3;
        f21035a = new EnumC0319g[]{enumC0319g, enumC0319g2, enumC0319g3};
    }

    public static EnumC0319g valueOf(String str) {
        return (EnumC0319g) Enum.valueOf(EnumC0319g.class, str);
    }

    public static EnumC0319g[] values() {
        return (EnumC0319g[]) f21035a.clone();
    }
}

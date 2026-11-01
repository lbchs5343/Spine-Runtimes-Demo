package j$.util.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: j$.util.stream.b3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class EnumC0298b3 {
    public static final EnumC0298b3 DOUBLE_VALUE;
    public static final EnumC0298b3 INT_VALUE;
    public static final EnumC0298b3 LONG_VALUE;
    public static final EnumC0298b3 REFERENCE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ EnumC0298b3[] f20992a;

    static {
        EnumC0298b3 enumC0298b3 = new EnumC0298b3("REFERENCE", 0);
        REFERENCE = enumC0298b3;
        EnumC0298b3 enumC0298b32 = new EnumC0298b3("INT_VALUE", 1);
        INT_VALUE = enumC0298b32;
        EnumC0298b3 enumC0298b33 = new EnumC0298b3("LONG_VALUE", 2);
        LONG_VALUE = enumC0298b33;
        EnumC0298b3 enumC0298b34 = new EnumC0298b3("DOUBLE_VALUE", 3);
        DOUBLE_VALUE = enumC0298b34;
        f20992a = new EnumC0298b3[]{enumC0298b3, enumC0298b32, enumC0298b33, enumC0298b34};
    }

    public static EnumC0298b3 valueOf(String str) {
        return (EnumC0298b3) Enum.valueOf(EnumC0298b3.class, str);
    }

    public static EnumC0298b3[] values() {
        return (EnumC0298b3[]) f20992a.clone();
    }
}

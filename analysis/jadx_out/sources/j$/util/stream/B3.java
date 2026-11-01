package j$.util.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class B3 {
    public static final B3 MAYBE_MORE;
    public static final B3 NO_MORE;
    public static final B3 UNLIMITED;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ B3[] f20835a;

    static {
        B3 b3 = new B3("NO_MORE", 0);
        NO_MORE = b3;
        B3 b32 = new B3("MAYBE_MORE", 1);
        MAYBE_MORE = b32;
        B3 b33 = new B3("UNLIMITED", 2);
        UNLIMITED = b33;
        f20835a = new B3[]{b3, b32, b33};
    }

    public static B3 valueOf(String str) {
        return (B3) Enum.valueOf(B3.class, str);
    }

    public static B3[] values() {
        return (B3[]) f20835a.clone();
    }
}

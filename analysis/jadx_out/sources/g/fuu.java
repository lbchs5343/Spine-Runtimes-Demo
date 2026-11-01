package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class fuu {
    public static final fuu NEW_ARRAY;
    public static final fuu SWITCH;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ fuu[] f17455a;

    static {
        fuu fuuVar = new fuu("SWITCH", 0);
        SWITCH = fuuVar;
        fuu fuuVar2 = new fuu("NEW_ARRAY", 1);
        NEW_ARRAY = fuuVar2;
        f17455a = new fuu[]{fuuVar, fuuVar2};
    }

    public static fuu valueOf(String str) {
        return (fuu) Enum.valueOf(fuu.class, str);
    }

    public static fuu[] values() {
        return (fuu[]) f17455a.clone();
    }
}

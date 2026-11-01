package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class zw {
    public static final zw BODY_ONLY;
    public static final zw BODY_ONLY_NOWRAP;
    public static final zw INLINE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zw[] f20417a;

    static {
        zw zwVar = new zw("BODY_ONLY", 0);
        BODY_ONLY = zwVar;
        zw zwVar2 = new zw("BODY_ONLY_NOWRAP", 1);
        BODY_ONLY_NOWRAP = zwVar2;
        zw zwVar3 = new zw("INLINE", 2);
        INLINE = zwVar3;
        f20417a = new zw[]{zwVar, zwVar2, zwVar3};
    }

    public static zw valueOf(String str) {
        return (zw) Enum.valueOf(zw.class, str);
    }

    public static zw[] values() {
        return (zw[]) f20417a.clone();
    }
}

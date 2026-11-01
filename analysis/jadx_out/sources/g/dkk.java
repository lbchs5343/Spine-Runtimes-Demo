package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class dkk {
    public static final dkk ADDING;
    public static final dkk NONE;
    public static final dkk REMOVING;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ dkk[] f14313a;

    static {
        dkk dkkVar = new dkk("NONE", 0);
        NONE = dkkVar;
        dkk dkkVar2 = new dkk("ADDING", 1);
        ADDING = dkkVar2;
        dkk dkkVar3 = new dkk("REMOVING", 2);
        REMOVING = dkkVar3;
        f14313a = new dkk[]{dkkVar, dkkVar2, dkkVar3};
    }

    public static dkk valueOf(String str) {
        return (dkk) Enum.valueOf(dkk.class, str);
    }

    public static dkk[] values() {
        return (dkk[]) f14313a.clone();
    }
}

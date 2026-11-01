package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class fkx {
    public static final fkx CLASS;
    public static final fkx FIELD;
    public static final fkx METHOD;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ fkx[] f16952a;

    static {
        fkx fkxVar = new fkx("CLASS", 0);
        CLASS = fkxVar;
        fkx fkxVar2 = new fkx("FIELD", 1);
        FIELD = fkxVar2;
        fkx fkxVar3 = new fkx("METHOD", 2);
        METHOD = fkxVar3;
        f16952a = new fkx[]{fkxVar, fkxVar2, fkxVar3};
    }

    public static fkx valueOf(String str) {
        return (fkx) Enum.valueOf(fkx.class, str);
    }

    public static fkx[] values() {
        return (fkx[]) f16952a.clone();
    }
}

package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class ffl {
    public static final ffl CASE;
    public static final ffl PRINTABLE;
    public static final ffl VALID;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ ffl[] f16708a;

    static {
        ffl fflVar = new ffl("CASE", 0);
        CASE = fflVar;
        ffl fflVar2 = new ffl("VALID", 1);
        VALID = fflVar2;
        ffl fflVar3 = new ffl("PRINTABLE", 2);
        PRINTABLE = fflVar3;
        f16708a = new ffl[]{fflVar, fflVar2, fflVar3};
    }

    public static ffl valueOf(String str) {
        return (ffl) Enum.valueOf(ffl.class, str);
    }

    public static ffl[] values() {
        return (ffl[]) f16708a.clone();
    }
}

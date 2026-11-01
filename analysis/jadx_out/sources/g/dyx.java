package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class dyx {
    public static final dyx JAVA;
    public static final dyx JSON;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ dyx[] f15107a;

    static {
        dyx dyxVar = new dyx("JAVA", 0);
        JAVA = dyxVar;
        dyx dyxVar2 = new dyx("JSON", 1);
        JSON = dyxVar2;
        f15107a = new dyx[]{dyxVar, dyxVar2};
    }

    public static dyx valueOf(String str) {
        return (dyx) Enum.valueOf(dyx.class, str);
    }

    public static dyx[] values() {
        return (dyx[]) f15107a.clone();
    }
}

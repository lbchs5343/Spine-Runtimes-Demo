package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class ecx {
    public static final ecx INSTANCE_GET;
    public static final ecx INSTANCE_PUT;
    public static final ecx INVOKE_CONSTRUCTOR;
    public static final ecx INVOKE_DIRECT;
    public static final ecx INVOKE_INSTANCE;
    public static final ecx INVOKE_INTERFACE;
    public static final ecx INVOKE_STATIC;
    public static final ecx STATIC_GET;
    public static final ecx STATIC_PUT;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ ecx[] f15322a;

    static {
        ecx ecxVar = new ecx("STATIC_PUT", 0);
        STATIC_PUT = ecxVar;
        ecx ecxVar2 = new ecx("STATIC_GET", 1);
        STATIC_GET = ecxVar2;
        ecx ecxVar3 = new ecx("INSTANCE_PUT", 2);
        INSTANCE_PUT = ecxVar3;
        ecx ecxVar4 = new ecx("INSTANCE_GET", 3);
        INSTANCE_GET = ecxVar4;
        ecx ecxVar5 = new ecx("INVOKE_STATIC", 4);
        INVOKE_STATIC = ecxVar5;
        ecx ecxVar6 = new ecx("INVOKE_INSTANCE", 5);
        INVOKE_INSTANCE = ecxVar6;
        ecx ecxVar7 = new ecx("INVOKE_DIRECT", 6);
        INVOKE_DIRECT = ecxVar7;
        ecx ecxVar8 = new ecx("INVOKE_CONSTRUCTOR", 7);
        INVOKE_CONSTRUCTOR = ecxVar8;
        ecx ecxVar9 = new ecx("INVOKE_INTERFACE", 8);
        INVOKE_INTERFACE = ecxVar9;
        f15322a = new ecx[]{ecxVar, ecxVar2, ecxVar3, ecxVar4, ecxVar5, ecxVar6, ecxVar7, ecxVar8, ecxVar9};
    }

    public static ecx valueOf(String str) {
        return (ecx) Enum.valueOf(ecx.class, str);
    }

    public static ecx[] values() {
        return (ecx[]) f15322a.clone();
    }

    public final boolean b() {
        int i = cti.f13465a[ordinal()];
        return i == 1 || i == 2 || i == 3 || i == 4;
    }
}

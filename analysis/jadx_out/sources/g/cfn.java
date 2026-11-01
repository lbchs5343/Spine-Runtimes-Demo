package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class cfn {
    public static final cfn ASC;
    public static final cfn DESC;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ cfn[] f12791a;

    static {
        cfn cfnVar = new cfn("ASC", 0);
        ASC = cfnVar;
        cfn cfnVar2 = new cfn("DESC", 1);
        DESC = cfnVar2;
        f12791a = new cfn[]{cfnVar, cfnVar2};
    }

    public static cfn valueOf(String str) {
        return (cfn) Enum.valueOf(cfn.class, str);
    }

    public static cfn[] values() {
        return (cfn[]) f12791a.clone();
    }
}

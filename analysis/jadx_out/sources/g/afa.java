package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class afa {
    public static final afa DEBUG;
    public static final afa ERROR;
    public static final afa INFO;
    public static final afa NONE;
    public static final afa USER_ONLY;
    public static final afa WARN;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ afa[] f10134a;

    static {
        afa afaVar = new afa("NONE", 0);
        NONE = afaVar;
        afa afaVar2 = new afa("USER_ONLY", 1);
        USER_ONLY = afaVar2;
        afa afaVar3 = new afa("ERROR", 2);
        ERROR = afaVar3;
        afa afaVar4 = new afa("WARN", 3);
        WARN = afaVar4;
        afa afaVar5 = new afa("INFO", 4);
        INFO = afaVar5;
        afa afaVar6 = new afa("DEBUG", 5);
        DEBUG = afaVar6;
        f10134a = new afa[]{afaVar, afaVar2, afaVar3, afaVar4, afaVar5, afaVar6};
    }

    public static afa valueOf(String str) {
        return (afa) Enum.valueOf(afa.class, str);
    }

    public static afa[] values() {
        return (afa[]) f10134a.clone();
    }
}

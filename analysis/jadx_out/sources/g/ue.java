package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class ue {
    public static final ue CONTENT_BINARY;
    public static final ue CONTENT_NONE;
    public static final ue CONTENT_TEXT;
    public static final ue CONTENT_UNKNOWN;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ ue[] f20087a;

    static {
        ue ueVar = new ue("CONTENT_TEXT", 0);
        CONTENT_TEXT = ueVar;
        ue ueVar2 = new ue("CONTENT_BINARY", 1);
        CONTENT_BINARY = ueVar2;
        ue ueVar3 = new ue("CONTENT_NONE", 2);
        CONTENT_NONE = ueVar3;
        ue ueVar4 = new ue("CONTENT_UNKNOWN", 3);
        CONTENT_UNKNOWN = ueVar4;
        f20087a = new ue[]{ueVar, ueVar2, ueVar3, ueVar4};
    }

    public static ue valueOf(String str) {
        return (ue) Enum.valueOf(ue.class, str);
    }

    public static ue[] values() {
        return (ue[]) f20087a.clone();
    }
}

package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class nd {
    public static final nd SECURE_XML_PARSER;
    public static final nd SECURE_ZIP_READER;
    public static final nd VERIFY_APP_PACKAGE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ nd[] f19700a;

    static {
        nd ndVar = new nd("VERIFY_APP_PACKAGE", 0);
        VERIFY_APP_PACKAGE = ndVar;
        nd ndVar2 = new nd("SECURE_XML_PARSER", 1);
        SECURE_XML_PARSER = ndVar2;
        nd ndVar3 = new nd("SECURE_ZIP_READER", 2);
        SECURE_ZIP_READER = ndVar3;
        f19700a = new nd[]{ndVar, ndVar2, ndVar3};
    }

    public static nd valueOf(String str) {
        return (nd) Enum.valueOf(nd.class, str);
    }

    public static nd[] values() {
        return (nd[]) f19700a.clone();
    }
}

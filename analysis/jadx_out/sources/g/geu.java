package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class geu {
    public static final geu ON_CONFIGURE;
    public static final geu ON_CREATE;
    public static final geu ON_DOWNGRADE;
    public static final geu ON_OPEN;
    public static final geu ON_UPGRADE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ geu[] f18003a;

    static {
        geu geuVar = new geu("ON_CONFIGURE", 0);
        ON_CONFIGURE = geuVar;
        geu geuVar2 = new geu("ON_CREATE", 1);
        ON_CREATE = geuVar2;
        geu geuVar3 = new geu("ON_UPGRADE", 2);
        ON_UPGRADE = geuVar3;
        geu geuVar4 = new geu("ON_DOWNGRADE", 3);
        ON_DOWNGRADE = geuVar4;
        geu geuVar5 = new geu("ON_OPEN", 4);
        ON_OPEN = geuVar5;
        f18003a = new geu[]{geuVar, geuVar2, geuVar3, geuVar4, geuVar5};
    }

    public static geu valueOf(String str) {
        return (geu) Enum.valueOf(geu.class, str);
    }

    public static geu[] values() {
        return (geu[]) f18003a.clone();
    }
}

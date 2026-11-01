package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class bro {
    public static final bro AUTHORIZE;
    public static final bro CONNECTING;
    public static final bro DENIED;
    public static final bro INSTALL;
    public static final bro READY;
    public static final bro REQUESTING;
    public static final bro RESTORE_PERMISSION;
    public static final bro RESTORE_SERVICE;
    public static final bro START;
    public static final bro UNSUPPORTED;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ bro[] f12082a;

    static {
        bro broVar = new bro("UNSUPPORTED", 0);
        UNSUPPORTED = broVar;
        bro broVar2 = new bro("INSTALL", 1);
        INSTALL = broVar2;
        bro broVar3 = new bro("START", 2);
        START = broVar3;
        bro broVar4 = new bro("RESTORE_SERVICE", 3);
        RESTORE_SERVICE = broVar4;
        bro broVar5 = new bro("AUTHORIZE", 4);
        AUTHORIZE = broVar5;
        bro broVar6 = new bro("RESTORE_PERMISSION", 5);
        RESTORE_PERMISSION = broVar6;
        bro broVar7 = new bro("DENIED", 6);
        DENIED = broVar7;
        bro broVar8 = new bro("READY", 7);
        READY = broVar8;
        bro broVar9 = new bro("REQUESTING", 8);
        REQUESTING = broVar9;
        bro broVar10 = new bro("CONNECTING", 9);
        CONNECTING = broVar10;
        f12082a = new bro[]{broVar, broVar2, broVar3, broVar4, broVar5, broVar6, broVar7, broVar8, broVar9, broVar10};
    }

    public static bro valueOf(String str) {
        return (bro) Enum.valueOf(bro.class, str);
    }

    public static bro[] values() {
        return (bro[]) f12082a.clone();
    }
}

package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class tg {
    public static final tg FINISH;
    public static final tg INSTALL;
    public static final tg NONE;
    public static final tg OPEN_MANAGER;
    public static final tg REQUEST_PERMISSION;
    public static final tg USE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ tg[] f20030a;

    static {
        tg tgVar = new tg("INSTALL", 0);
        INSTALL = tgVar;
        tg tgVar2 = new tg("OPEN_MANAGER", 1);
        OPEN_MANAGER = tgVar2;
        tg tgVar3 = new tg("REQUEST_PERMISSION", 2);
        REQUEST_PERMISSION = tgVar3;
        tg tgVar4 = new tg("USE", 3);
        USE = tgVar4;
        tg tgVar5 = new tg("FINISH", 4);
        FINISH = tgVar5;
        tg tgVar6 = new tg("NONE", 5);
        NONE = tgVar6;
        f20030a = new tg[]{tgVar, tgVar2, tgVar3, tgVar4, tgVar5, tgVar6};
    }

    public static tg valueOf(String str) {
        return (tg) Enum.valueOf(tg.class, str);
    }

    public static tg[] values() {
        return (tg[]) f20030a.clone();
    }
}

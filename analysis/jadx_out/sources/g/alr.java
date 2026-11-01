package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class alr {
    public static final alr AUTHORIZE;
    public static final alr AUTHORIZED;
    public static final alr INSTALL;
    public static final alr START;
    public static final alr UPDATE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ alr[] f10454a;

    static {
        alr alrVar = new alr("INSTALL", 0);
        INSTALL = alrVar;
        alr alrVar2 = new alr("START", 1);
        START = alrVar2;
        alr alrVar3 = new alr("UPDATE", 2);
        UPDATE = alrVar3;
        alr alrVar4 = new alr("AUTHORIZE", 3);
        AUTHORIZE = alrVar4;
        alr alrVar5 = new alr("AUTHORIZED", 4);
        AUTHORIZED = alrVar5;
        f10454a = new alr[]{alrVar, alrVar2, alrVar3, alrVar4, alrVar5};
    }

    public static alr valueOf(String str) {
        return (alr) Enum.valueOf(alr.class, str);
    }

    public static alr[] values() {
        return (alr[]) f10454a.clone();
    }
}

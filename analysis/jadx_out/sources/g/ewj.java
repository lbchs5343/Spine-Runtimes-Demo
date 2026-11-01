package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class ewj {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ ewj[] f16276a;

    /* renamed from: d, reason: collision with root package name */
    public static final ewj f16277d;
    public static final ewj dq;
    public static final ewj ox;

    static {
        ewj ewjVar = new ewj("NONE", 0);
        dq = ewjVar;
        ewj ewjVar2 = new ewj("PLAY", 1);
        f16277d = ewjVar2;
        ewj ewjVar3 = new ewj("RESUME", 2);
        ox = ewjVar3;
        f16276a = new ewj[]{ewjVar, ewjVar2, ewjVar3};
    }

    public static ewj valueOf(String str) {
        return (ewj) Enum.valueOf(ewj.class, str);
    }

    public static ewj[] values() {
        return (ewj[]) f16276a.clone();
    }
}

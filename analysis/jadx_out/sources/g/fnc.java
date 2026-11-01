package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class fnc {
    public static final fnc APPLY;
    public static final fnc APPLY_AND_HIDE;
    public static final fnc DISABLE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ fnc[] f17068a;

    static {
        fnc fncVar = new fnc("DISABLE", 0);
        DISABLE = fncVar;
        fnc fncVar2 = new fnc("APPLY", 1);
        APPLY = fncVar2;
        fnc fncVar3 = new fnc("APPLY_AND_HIDE", 2);
        APPLY_AND_HIDE = fncVar3;
        f17068a = new fnc[]{fncVar, fncVar2, fncVar3};
    }

    public static fnc valueOf(String str) {
        return (fnc) Enum.valueOf(fnc.class, str);
    }

    public static fnc[] values() {
        return (fnc[]) f17068a.clone();
    }
}

package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class eyu {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ eyu[] f16388a;

    /* renamed from: d, reason: collision with root package name */
    public static final eyu f16389d;
    public static final eyu dq;

    static {
        eyu eyuVar = new eyu("SIMULTANEOUSLY", 0);
        dq = eyuVar;
        eyu eyuVar2 = new eyu("INDIVIDUALLY", 1);
        f16389d = eyuVar2;
        f16388a = new eyu[]{eyuVar, eyuVar2};
    }

    public static eyu valueOf(String str) {
        return (eyu) Enum.valueOf(eyu.class, str);
    }

    public static eyu[] values() {
        return (eyu[]) f16388a.clone();
    }
}

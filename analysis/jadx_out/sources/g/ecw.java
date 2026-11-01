package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class ecw {
    public static final ecw FATAL_ERROR;
    public static final ecw INVALID_PAYLOAD;
    public static final ecw OK;
    public static final ecw TRANSIENT_ERROR;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ ecw[] f15321a;

    static {
        ecw ecwVar = new ecw("OK", 0);
        OK = ecwVar;
        ecw ecwVar2 = new ecw("TRANSIENT_ERROR", 1);
        TRANSIENT_ERROR = ecwVar2;
        ecw ecwVar3 = new ecw("FATAL_ERROR", 2);
        FATAL_ERROR = ecwVar3;
        ecw ecwVar4 = new ecw("INVALID_PAYLOAD", 3);
        INVALID_PAYLOAD = ecwVar4;
        f15321a = new ecw[]{ecwVar, ecwVar2, ecwVar3, ecwVar4};
    }

    public static ecw valueOf(String str) {
        return (ecw) Enum.valueOf(ecw.class, str);
    }

    public static ecw[] values() {
        return (ecw[]) f15321a.clone();
    }
}

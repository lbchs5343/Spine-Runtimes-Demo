package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public final class cvi {
    public static final cvi NOT_READY;
    public static final cvi READY;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ cvi[] f13583a;

    static {
        cvi cviVar = new cvi("NOT_READY", 0);
        NOT_READY = cviVar;
        cvi cviVar2 = new cvi("READY", 1);
        READY = cviVar2;
        f13583a = new cvi[]{cviVar, cviVar2};
    }

    public static cvi valueOf(String str) {
        return (cvi) Enum.valueOf(cvi.class, str);
    }

    public static cvi[] values() {
        return (cvi[]) f13583a.clone();
    }
}

package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class ahc {
    public static final ahc DROP_WORK_REQUEST;
    public static final ahc RUN_AS_NON_EXPEDITED_WORK_REQUEST;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ ahc[] f10210a;

    static {
        ahc ahcVar = new ahc("RUN_AS_NON_EXPEDITED_WORK_REQUEST", 0);
        RUN_AS_NON_EXPEDITED_WORK_REQUEST = ahcVar;
        ahc ahcVar2 = new ahc("DROP_WORK_REQUEST", 1);
        DROP_WORK_REQUEST = ahcVar2;
        f10210a = new ahc[]{ahcVar, ahcVar2};
    }

    public static ahc valueOf(String str) {
        return (ahc) Enum.valueOf(ahc.class, str);
    }

    public static ahc[] values() {
        return (ahc[]) f10210a.clone();
    }
}

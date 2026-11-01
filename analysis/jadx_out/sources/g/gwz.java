package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class gwz {
    public static final gwz GENERATED_AND_UNLOADED;
    public static final gwz LOADED;
    public static final gwz NOT_LOADED;
    public static final gwz PROCESS_COMPLETE;
    public static final gwz PROCESS_STARTED;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ gwz[] f18916a;

    static {
        gwz gwzVar = new gwz("NOT_LOADED", 0);
        NOT_LOADED = gwzVar;
        gwz gwzVar2 = new gwz("LOADED", 1);
        LOADED = gwzVar2;
        gwz gwzVar3 = new gwz("PROCESS_STARTED", 2);
        PROCESS_STARTED = gwzVar3;
        gwz gwzVar4 = new gwz("PROCESS_COMPLETE", 3);
        PROCESS_COMPLETE = gwzVar4;
        gwz gwzVar5 = new gwz("GENERATED_AND_UNLOADED", 4);
        GENERATED_AND_UNLOADED = gwzVar5;
        f18916a = new gwz[]{gwzVar, gwzVar2, gwzVar3, gwzVar4, gwzVar5};
    }

    public static gwz valueOf(String str) {
        return (gwz) Enum.valueOf(gwz.class, str);
    }

    public static gwz[] values() {
        return (gwz[]) f18916a.clone();
    }
}

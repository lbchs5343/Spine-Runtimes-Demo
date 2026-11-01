package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class cfs {
    public static final cfs IGNORE;
    public static final cfs READ;
    public static final cfs READ_AND_AUTOSAVE_BEFORE_CLOSING;
    public static final cfs READ_AND_AUTOSAVE_EVERY_CHANGE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ cfs[] f12801a;

    static {
        cfs cfsVar = new cfs("READ", 0);
        READ = cfsVar;
        cfs cfsVar2 = new cfs("READ_AND_AUTOSAVE_EVERY_CHANGE", 1);
        READ_AND_AUTOSAVE_EVERY_CHANGE = cfsVar2;
        cfs cfsVar3 = new cfs("READ_AND_AUTOSAVE_BEFORE_CLOSING", 2);
        READ_AND_AUTOSAVE_BEFORE_CLOSING = cfsVar3;
        cfs cfsVar4 = new cfs("IGNORE", 3);
        IGNORE = cfsVar4;
        f12801a = new cfs[]{cfsVar, cfsVar2, cfsVar3, cfsVar4};
    }

    public static cfs valueOf(String str) {
        return (cfs) Enum.valueOf(cfs.class, str);
    }

    public static cfs[] values() {
        return (cfs[]) f12801a.clone();
    }
}

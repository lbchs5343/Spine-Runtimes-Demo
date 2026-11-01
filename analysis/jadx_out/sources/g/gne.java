package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class gne {
    public static final gne END_OF_PATH;
    public static final gne NON_MATCHING_INSTRUCTIONS;
    public static final gne NON_MATCHING_PATHS;
    public static final gne UNMERGEABLE_STATE;
    public static final gne UNRESOLVABLE_STATES;
    public static final gne USING_CACHED_RESULTS;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ gne[] f18442a;

    static {
        gne gneVar = new gne("NON_MATCHING_INSTRUCTIONS", 0);
        NON_MATCHING_INSTRUCTIONS = gneVar;
        gne gneVar2 = new gne("NON_MATCHING_PATHS", 1);
        NON_MATCHING_PATHS = gneVar2;
        gne gneVar3 = new gne("END_OF_PATH", 2);
        END_OF_PATH = gneVar3;
        gne gneVar4 = new gne("USING_CACHED_RESULTS", 3);
        USING_CACHED_RESULTS = gneVar4;
        gne gneVar5 = new gne("UNMERGEABLE_STATE", 4);
        UNMERGEABLE_STATE = gneVar5;
        gne gneVar6 = new gne("UNRESOLVABLE_STATES", 5);
        UNRESOLVABLE_STATES = gneVar6;
        f18442a = new gne[]{gneVar, gneVar2, gneVar3, gneVar4, gneVar5, gneVar6};
    }

    public static gne valueOf(String str) {
        return (gne) Enum.valueOf(gne.class, str);
    }

    public static gne[] values() {
        return (gne[]) f18442a.clone();
    }
}

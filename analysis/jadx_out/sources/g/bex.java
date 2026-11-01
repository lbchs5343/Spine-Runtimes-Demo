package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class bex {
    public static final bex DETECT_FRAGMENT_REUSE;
    public static final bex DETECT_FRAGMENT_TAG_USAGE;
    public static final bex DETECT_RETAIN_INSTANCE_USAGE;
    public static final bex DETECT_SET_USER_VISIBLE_HINT;
    public static final bex DETECT_TARGET_FRAGMENT_USAGE;
    public static final bex DETECT_WRONG_FRAGMENT_CONTAINER;
    public static final bex PENALTY_DEATH;
    public static final bex PENALTY_LOG;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ bex[] f11420a;

    static {
        bex bexVar = new bex("PENALTY_LOG", 0);
        PENALTY_LOG = bexVar;
        bex bexVar2 = new bex("PENALTY_DEATH", 1);
        PENALTY_DEATH = bexVar2;
        bex bexVar3 = new bex("DETECT_FRAGMENT_REUSE", 2);
        DETECT_FRAGMENT_REUSE = bexVar3;
        bex bexVar4 = new bex("DETECT_FRAGMENT_TAG_USAGE", 3);
        DETECT_FRAGMENT_TAG_USAGE = bexVar4;
        bex bexVar5 = new bex("DETECT_RETAIN_INSTANCE_USAGE", 4);
        DETECT_RETAIN_INSTANCE_USAGE = bexVar5;
        bex bexVar6 = new bex("DETECT_SET_USER_VISIBLE_HINT", 5);
        DETECT_SET_USER_VISIBLE_HINT = bexVar6;
        bex bexVar7 = new bex("DETECT_TARGET_FRAGMENT_USAGE", 6);
        DETECT_TARGET_FRAGMENT_USAGE = bexVar7;
        bex bexVar8 = new bex("DETECT_WRONG_FRAGMENT_CONTAINER", 7);
        DETECT_WRONG_FRAGMENT_CONTAINER = bexVar8;
        f11420a = new bex[]{bexVar, bexVar2, bexVar3, bexVar4, bexVar5, bexVar6, bexVar7, bexVar8};
    }

    public static bex valueOf(String str) {
        return (bex) Enum.valueOf(bex.class, str);
    }

    public static bex[] values() {
        return (bex[]) f11420a.clone();
    }
}

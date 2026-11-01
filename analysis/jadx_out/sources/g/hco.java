package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class hco {
    public static final hco AWAITING_OPTIONAL_PREDECESSOR_MERGE;
    public static final hco NOT_READY;
    public static final hco READY_TO_COMPARE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ hco[] f19230a;

    static {
        hco hcoVar = new hco("NOT_READY", 0);
        NOT_READY = hcoVar;
        hco hcoVar2 = new hco("AWAITING_OPTIONAL_PREDECESSOR_MERGE", 1);
        AWAITING_OPTIONAL_PREDECESSOR_MERGE = hcoVar2;
        hco hcoVar3 = new hco("READY_TO_COMPARE", 2);
        READY_TO_COMPARE = hcoVar3;
        f19230a = new hco[]{hcoVar, hcoVar2, hcoVar3};
    }

    public static hco valueOf(String str) {
        return (hco) Enum.valueOf(hco.class, str);
    }

    public static hco[] values() {
        return (hco[]) f19230a.clone();
    }
}

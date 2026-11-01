package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class dyp {
    public static final dyp LIVE_CARD;
    public static final dyp LIVE_CELL;
    public static final dyp NO_VALUE;
    public static final dyp VIDEO_CELL;
    public static final dyp VIDEO_HEAD;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ dyp[] f15094a;

    static {
        dyp dypVar = new dyp("NO_VALUE", 0);
        NO_VALUE = dypVar;
        dyp dypVar2 = new dyp("VIDEO_CELL", 1);
        VIDEO_CELL = dypVar2;
        dyp dypVar3 = new dyp("VIDEO_HEAD", 2);
        VIDEO_HEAD = dypVar3;
        dyp dypVar4 = new dyp("LIVE_CELL", 3);
        LIVE_CELL = dypVar4;
        dyp dypVar5 = new dyp("LIVE_CARD", 4);
        LIVE_CARD = dypVar5;
        f15094a = new dyp[]{dypVar, dypVar2, dypVar3, dypVar4, dypVar5};
    }

    public static dyp valueOf(String str) {
        return (dyp) Enum.valueOf(dyp.class, str);
    }

    public static dyp[] values() {
        return (dyp[]) f15094a.clone();
    }
}

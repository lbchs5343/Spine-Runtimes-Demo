package g;

/* loaded from: classes.dex */
public enum ezt {
    STAR(1),
    POLYGON(2);

    private final int ox;

    ezt(int i) {
        this.ox = i;
    }

    public static ezt b(int i) {
        for (ezt eztVar : values()) {
            if (eztVar.ox == i) {
                return eztVar;
            }
        }
        return null;
    }
}

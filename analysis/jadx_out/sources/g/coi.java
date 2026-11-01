package g;

/* loaded from: classes.dex */
public enum coi {
    LOW(1),
    NORMAL(2),
    HIGHT(3);

    final int p;

    coi(int i) {
        this.p = i;
    }

    public final int b() {
        return this.p;
    }
}

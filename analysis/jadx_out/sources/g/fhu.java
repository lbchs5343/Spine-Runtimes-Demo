package g;

/* loaded from: classes.dex */
public enum fhu {
    DEX_FILES(0),
    EXTRA_DESCRIPTORS(1),
    CLASSES(2),
    METHODS(3),
    AGGREGATION_COUNT(4);

    private final long mValue;

    fhu(long j) {
        this.mValue = j;
    }

    public final long b() {
        return this.mValue;
    }
}

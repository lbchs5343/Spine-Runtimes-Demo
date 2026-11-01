package g;

/* loaded from: classes3.dex */
public enum bmk {
    ERROR(40, "ERROR"),
    WARN(30, "WARN"),
    INFO(20, "INFO"),
    DEBUG(10, "DEBUG"),
    TRACE(0, "TRACE");

    private final int levelInt;
    private final String levelStr;

    bmk(int i, String str) {
        this.levelInt = i;
        this.levelStr = str;
    }

    public final int b() {
        return this.levelInt;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.levelStr;
    }
}

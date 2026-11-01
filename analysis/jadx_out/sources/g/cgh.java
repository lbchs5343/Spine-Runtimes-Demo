package g;

/* loaded from: classes.dex */
public enum cgh {
    JSON(".json"),
    ZIP(".zip");

    public final String ox;

    cgh(String str) {
        this.ox = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.ox;
    }
}

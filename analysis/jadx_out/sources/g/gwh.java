package g;

/* loaded from: classes.dex */
public final class gwh extends buj {
    public final Throwable bf;

    public gwh(Throwable th) {
        this.bf = th;
    }

    public final String toString() {
        return "FAILURE (" + this.bf.getMessage() + ")";
    }
}

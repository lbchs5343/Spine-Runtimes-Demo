package g;

/* loaded from: classes.dex */
public final class coz extends RuntimeException {
    public final String reason;
    public final String source;

    public coz(String str, String str2, Exception exc) {
        super(awf.i(str, ": ", str2), exc);
        this.reason = str;
        this.source = str2;
    }
}

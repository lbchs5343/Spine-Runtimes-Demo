package a.u.e;

/* loaded from: classes.dex */
public class TUE extends Exception {
    public TUE(String str) {
        super(str, new RuntimeException());
    }

    public TUE(String str, String str2) {
        super(str, new RuntimeException(str2));
    }

    public TUE(String str, Throwable th) {
        super(str, th);
    }

    public TUE(Throwable th) {
        super(th);
    }
}

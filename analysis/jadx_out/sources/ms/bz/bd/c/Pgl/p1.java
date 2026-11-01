package ms.bz.bd.c.Pgl;

/* loaded from: classes.dex */
public class p1 {
    static {
        pblk.a(16777217, 0, 0L, "d569fd", new byte[]{78, 107, 4, 19, 100});
    }

    public static String a(String str) {
        return (str == null || str.length() <= 0) ? "" : str.trim().replace('\'', ' ').replace('\"', ' ').replace('\r', ' ').replace('\n', ' ');
    }
}

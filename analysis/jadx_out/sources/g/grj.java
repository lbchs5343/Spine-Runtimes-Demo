package g;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class grj extends cro {
    public static int bd(List list) {
        bff.p(list, "<this>");
        return list.size() - 1;
    }

    public static ArrayList d(Object... objArr) {
        bff.p(objArr, "elements");
        return objArr.length == 0 ? new ArrayList() : new ArrayList(new ecu(objArr, true));
    }

    public static List e(Object... objArr) {
        bff.p(objArr, "elements");
        return objArr.length > 0 ? fuv.bf(objArr) : fai.f16469a;
    }

    public static void m() {
        throw new ArithmeticException("Index overflow has happened.");
    }
}

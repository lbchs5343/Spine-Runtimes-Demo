package ms.bz.bd.c.Pgl;

import android.util.SparseArray;

/* loaded from: classes.dex */
public final class pblb {

    /* renamed from: a, reason: collision with root package name */
    public static final SparseArray f21187a = new SparseArray();

    public static abstract class pgla {
        public Object a(Object obj, String str) {
            return null;
        }

        public Object b(int i, int i2, long j, String str, Object obj) {
            return a(obj, str);
        }
    }

    public static void b(int i, pgla pglaVar) {
        SparseArray sparseArray = f21187a;
        pgla pglaVar2 = (pgla) sparseArray.get(i);
        if (pglaVar2 != null) {
            throw new RuntimeException(String.format((String) pblk.a(16777217, 0, 0L, "eba501", new byte[]{49, 115, 82, 73, 14, 34, 38, 65, 53, 96, 122, 32, 0, 68, 8, 47, 117, 87, 53, 119, 58}), pglaVar2.toString()));
        }
        sparseArray.put(i, pglaVar);
    }
}

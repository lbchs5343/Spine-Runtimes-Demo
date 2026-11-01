package g;

import android.util.SparseArray;
import java.util.Set;

/* loaded from: classes.dex */
public final class dvv {

    /* renamed from: a, reason: collision with root package name */
    public SparseArray f14905a;

    /* renamed from: b, reason: collision with root package name */
    public int f14906b;

    /* renamed from: c, reason: collision with root package name */
    public Set f14907c;

    public final atv d(int i) {
        SparseArray sparseArray = this.f14905a;
        atv atvVar = (atv) sparseArray.get(i);
        if (atvVar != null) {
            return atvVar;
        }
        atv atvVar2 = new atv();
        sparseArray.put(i, atvVar2);
        return atvVar2;
    }
}

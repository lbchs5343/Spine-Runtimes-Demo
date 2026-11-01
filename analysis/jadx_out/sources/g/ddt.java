package g;

import java.util.AbstractList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ddt extends AbstractList implements List {
    public abstract int j();

    public abstract Object m(int i);

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ Object remove(int i) {
        return m(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return j();
    }
}

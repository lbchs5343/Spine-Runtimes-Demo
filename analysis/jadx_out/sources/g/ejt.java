package g;

import java.util.List;
import java.util.function.BiConsumer;

/* loaded from: classes.dex */
public final /* synthetic */ class ejt implements BiConsumer {
    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((List) obj2).removeAll(((aea) obj).f10080c);
    }

    public final /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        return j$.util.function.h.$default$andThen(this, biConsumer);
    }
}

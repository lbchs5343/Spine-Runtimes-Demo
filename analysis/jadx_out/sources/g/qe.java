package g;

import android.view.Display;
import java.util.function.Function;

/* loaded from: classes.dex */
public final /* synthetic */ class qe implements Function {
    public final /* synthetic */ Function andThen(Function function) {
        return j$.util.function.k.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return Float.valueOf(((Display.Mode) obj).getRefreshRate());
    }

    public final /* synthetic */ Function compose(Function function) {
        return j$.util.function.k.$default$compose(this, function);
    }
}

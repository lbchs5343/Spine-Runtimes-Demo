package g;

import android.database.ContentObserver;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class ak extends ContentObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ fod f10363a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ak(fod fodVar) {
        super(null);
        this.f10363a = fodVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        fod fodVar = this.f10363a;
        synchronized (fodVar.f17133d) {
            fodVar.f17135f = null;
            fodVar.h.run();
        }
        synchronized (fodVar) {
            try {
                Iterator it = fodVar.i.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

package g;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.view.View;

/* loaded from: classes.dex */
public abstract class gbe {

    /* renamed from: e, reason: collision with root package name */
    public final DataSetObservable f17851e = new DataSetObservable();

    /* renamed from: f, reason: collision with root package name */
    public DataSetObserver f17852f;

    public abstract float b();

    public abstract int c();

    public abstract View d(bfa bfaVar, int i);

    public final void g(DataSetObserver dataSetObserver) {
        synchronized (this) {
            this.f17852f = dataSetObserver;
        }
    }

    public final void h() {
        synchronized (this) {
            try {
                DataSetObserver dataSetObserver = this.f17852f;
                if (dataSetObserver != null) {
                    dataSetObserver.onChanged();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f17851e.notifyChanged();
    }
}

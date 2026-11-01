package g;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class esn implements Serializable {
    private cvw initializer;
    private volatile Object _value = acq.ai;
    private final Object lock = this;

    public esn(cvw cvwVar) {
        this.initializer = cvwVar;
    }

    private final Object writeReplace() {
        return new ewm(a());
    }

    public final Object a() {
        Object obj;
        Object obj2 = this._value;
        acq acqVar = acq.ai;
        if (obj2 != acqVar) {
            return obj2;
        }
        synchronized (this.lock) {
            obj = this._value;
            if (obj == acqVar) {
                cvw cvwVar = this.initializer;
                bff.d(cvwVar);
                obj = cvwVar.invoke();
                this._value = obj;
                this.initializer = null;
            }
        }
        return obj;
    }

    public final boolean b() {
        return this._value != acq.ai;
    }

    public final String toString() {
        return b() ? String.valueOf(a()) : "Lazy value not initialized yet.";
    }
}

package g;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* loaded from: classes.dex */
public class fql {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f17245b = AtomicIntegerFieldUpdater.newUpdater(fql.class, "_size$volatile");
    private volatile /* synthetic */ int _size$volatile;

    /* renamed from: c, reason: collision with root package name */
    public ghe[] f17246c;

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0060, code lost:
    
        if (r6.compareTo(r7) < 0) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ghe d(int i) {
        Object[] objArr = this.f17246c;
        bff.d(objArr);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f17245b;
        atomicIntegerFieldUpdater.set(this, atomicIntegerFieldUpdater.get(this) - 1);
        if (i < atomicIntegerFieldUpdater.get(this)) {
            g(i, atomicIntegerFieldUpdater.get(this));
            int i2 = (i - 1) / 2;
            if (i > 0) {
                ghe gheVar = objArr[i];
                bff.d(gheVar);
                Object obj = objArr[i2];
                bff.d(obj);
                if (gheVar.compareTo(obj) < 0) {
                    g(i, i2);
                    e(i2);
                }
            }
            while (true) {
                int i3 = i * 2;
                int i4 = i3 + 1;
                if (i4 >= atomicIntegerFieldUpdater.get(this)) {
                    break;
                }
                Object[] objArr2 = this.f17246c;
                bff.d(objArr2);
                int i5 = i3 + 2;
                if (i5 < atomicIntegerFieldUpdater.get(this)) {
                    Comparable comparable = objArr2[i5];
                    bff.d(comparable);
                    Object obj2 = objArr2[i4];
                    bff.d(obj2);
                }
                i5 = i4;
                Comparable comparable2 = objArr2[i];
                bff.d(comparable2);
                Comparable comparable3 = objArr2[i5];
                bff.d(comparable3);
                if (comparable2.compareTo(comparable3) <= 0) {
                    break;
                }
                g(i, i5);
                i = i5;
            }
        }
        ghe gheVar2 = objArr[atomicIntegerFieldUpdater.get(this)];
        bff.d(gheVar2);
        gheVar2.c(null);
        gheVar2.f18152b = -1;
        objArr[atomicIntegerFieldUpdater.get(this)] = null;
        return gheVar2;
    }

    public final void e(int i) {
        while (i > 0) {
            ghe[] gheVarArr = this.f17246c;
            bff.d(gheVarArr);
            int i2 = (i - 1) / 2;
            ghe gheVar = gheVarArr[i2];
            bff.d(gheVar);
            ghe gheVar2 = gheVarArr[i];
            bff.d(gheVar2);
            if (gheVar.compareTo(gheVar2) <= 0) {
                return;
            }
            g(i, i2);
            i = i2;
        }
    }

    public final void f(ghe gheVar) {
        gheVar.c((bpa) this);
        ghe[] gheVarArr = this.f17246c;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f17245b;
        if (gheVarArr == null) {
            gheVarArr = new ghe[4];
            this.f17246c = gheVarArr;
        } else if (atomicIntegerFieldUpdater.get(this) >= gheVarArr.length) {
            Object[] copyOf = Arrays.copyOf(gheVarArr, atomicIntegerFieldUpdater.get(this) * 2);
            bff.e(copyOf, "copyOf(...)");
            gheVarArr = (ghe[]) copyOf;
            this.f17246c = gheVarArr;
        }
        int i = atomicIntegerFieldUpdater.get(this);
        atomicIntegerFieldUpdater.set(this, i + 1);
        gheVarArr[i] = gheVar;
        gheVar.f18152b = i;
        e(i);
    }

    public final void g(int i, int i2) {
        ghe[] gheVarArr = this.f17246c;
        bff.d(gheVarArr);
        ghe gheVar = gheVarArr[i2];
        bff.d(gheVar);
        ghe gheVar2 = gheVarArr[i];
        bff.d(gheVar2);
        gheVarArr[i] = gheVar;
        gheVarArr[i2] = gheVar2;
        gheVar.f18152b = i;
        gheVar2.f18152b = i2;
    }

    public final ghe h() {
        ghe gheVar;
        synchronized (this) {
            ghe[] gheVarArr = this.f17246c;
            gheVar = gheVarArr != null ? gheVarArr[0] : null;
        }
        return gheVar;
    }

    public final void i(ghe gheVar) {
        synchronized (this) {
            if (gheVar.d() != null) {
                d(gheVar.f18152b);
            }
        }
    }
}

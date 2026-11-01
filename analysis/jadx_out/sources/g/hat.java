package g;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.ValueSet;

/* loaded from: classes.dex */
public final class hat {

    /* renamed from: c, reason: collision with root package name */
    public final SparseArray f19148c;

    /* renamed from: d, reason: collision with root package name */
    public final ValueSet f19149d;

    /* renamed from: b, reason: collision with root package name */
    public static final cpo f19147b = g(0).k();

    /* renamed from: a, reason: collision with root package name */
    public static final gaw f19146a = new gaw();

    public hat(SparseArray sparseArray) {
        this.f19148c = sparseArray;
    }

    public hat(SparseArray sparseArray, ValueSet valueSet) {
        this.f19148c = sparseArray;
        this.f19149d = valueSet;
    }

    public static final hat e(ValueSet valueSet) {
        return new hat(new SparseArray(), valueSet);
    }

    public static final hat f() {
        return new hat(new SparseArray());
    }

    public static final hat g(int i) {
        return new hat(new SparseArray(i));
    }

    public final void h(int i, long j) {
        this.f19148c.put(i, Long.valueOf(j));
    }

    public final void i(int i, boolean z) {
        this.f19148c.put(i, Boolean.valueOf(z));
    }

    public final void j(int i, double d2) {
        this.f19148c.put(i, Double.valueOf(d2));
    }

    public final cpo k() {
        return new cpo(this.f19148c, this.f19149d);
    }

    public final void l(int i, float f2) {
        this.f19148c.put(i, Float.valueOf(f2));
    }

    public final void m(int i, Object obj) {
        this.f19148c.put(i, obj);
    }

    public final void n(int i, String str) {
        this.f19148c.put(i, str);
    }

    public final void o(int i, int i2) {
        this.f19148c.put(i, Integer.valueOf(i2));
    }
}

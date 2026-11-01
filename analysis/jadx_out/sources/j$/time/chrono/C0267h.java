package j$.time.chrono;

import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;

/* renamed from: j$.time.chrono.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0267h implements Serializable {

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f20476e = 0;
    private static final long serialVersionUID = 57387258289L;

    /* renamed from: a, reason: collision with root package name */
    public final m f20477a;

    /* renamed from: b, reason: collision with root package name */
    public final int f20478b;

    /* renamed from: c, reason: collision with root package name */
    public final int f20479c;

    /* renamed from: d, reason: collision with root package name */
    public final int f20480d;

    static {
        Object[] objArr = {j$.time.temporal.b.YEARS, j$.time.temporal.b.MONTHS, j$.time.temporal.b.DAYS};
        ArrayList arrayList = new ArrayList(3);
        for (int i = 0; i < 3; i++) {
            arrayList.add(Objects.requireNonNull(objArr[i]));
        }
        Collections.unmodifiableList(arrayList);
    }

    public C0267h(m mVar, int i, int i2, int i3) {
        Objects.requireNonNull(mVar, "chrono");
        this.f20477a = mVar;
        this.f20478b = i;
        this.f20479c = i2;
        this.f20480d = i3;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0267h) {
            C0267h c0267h = (C0267h) obj;
            if (this.f20478b == c0267h.f20478b && this.f20479c == c0267h.f20479c && this.f20480d == c0267h.f20480d && this.f20477a.equals(c0267h.f20477a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (Integer.rotateLeft(this.f20480d, 16) + (Integer.rotateLeft(this.f20479c, 8) + this.f20478b)) ^ this.f20477a.hashCode();
    }

    public final String toString() {
        if (this.f20478b == 0 && this.f20479c == 0 && this.f20480d == 0) {
            return this.f20477a.toString() + " P0D";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.f20477a.toString());
        sb.append(" P");
        int i = this.f20478b;
        if (i != 0) {
            sb.append(i);
            sb.append('Y');
        }
        int i2 = this.f20479c;
        if (i2 != 0) {
            sb.append(i2);
            sb.append('M');
        }
        int i3 = this.f20480d;
        if (i3 != 0) {
            sb.append(i3);
            sb.append('D');
        }
        return sb.toString();
    }

    public Object writeReplace() {
        return new F((byte) 9, this);
    }
}

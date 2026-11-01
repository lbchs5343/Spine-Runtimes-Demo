package j$.time;

import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class Period implements Serializable {

    /* renamed from: d, reason: collision with root package name */
    public static final Period f20442d = new Period(0, 0, 0);
    private static final long serialVersionUID = -3587258372562876L;

    /* renamed from: a, reason: collision with root package name */
    public final int f20443a;

    /* renamed from: b, reason: collision with root package name */
    public final int f20444b;

    /* renamed from: c, reason: collision with root package name */
    public final int f20445c;

    static {
        Pattern.compile("([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?", 2);
        Object[] objArr = {j$.time.temporal.b.YEARS, j$.time.temporal.b.MONTHS, j$.time.temporal.b.DAYS};
        ArrayList arrayList = new ArrayList(3);
        for (int i = 0; i < 3; i++) {
            arrayList.add(Objects.requireNonNull(objArr[i]));
        }
        Collections.unmodifiableList(arrayList);
    }

    public Period(int i, int i2, int i3) {
        this.f20443a = i;
        this.f20444b = i2;
        this.f20445c = i3;
    }

    public static Period between(LocalDate localDate, LocalDate localDate2) {
        localDate.getClass();
        LocalDate E = LocalDate.E(localDate2);
        long I = E.I() - localDate.I();
        int i = E.f20434c - localDate.f20434c;
        if (I > 0 && i < 0) {
            I--;
            i = (int) (E.x() - localDate.P(I).x());
        } else if (I < 0 && i > 0) {
            I++;
            i -= E.K();
        }
        long j = I / 12;
        int i2 = (int) (I % 12);
        int i3 = (int) j;
        if (j == i3) {
            return ((i3 | i2) | i) == 0 ? f20442d : new Period(i3, i2, i);
        }
        throw new ArithmeticException();
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new p((byte) 14, this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Period) {
            Period period = (Period) obj;
            if (this.f20443a == period.f20443a && this.f20444b == period.f20444b && this.f20445c == period.f20445c) {
                return true;
            }
        }
        return false;
    }

    public int getDays() {
        return this.f20445c;
    }

    public final int hashCode() {
        return Integer.rotateLeft(this.f20445c, 16) + Integer.rotateLeft(this.f20444b, 8) + this.f20443a;
    }

    public final String toString() {
        if (this == f20442d) {
            return "P0D";
        }
        StringBuilder sb = new StringBuilder("P");
        int i = this.f20443a;
        if (i != 0) {
            sb.append(i);
            sb.append('Y');
        }
        int i2 = this.f20444b;
        if (i2 != 0) {
            sb.append(i2);
            sb.append('M');
        }
        int i3 = this.f20445c;
        if (i3 != 0) {
            sb.append(i3);
            sb.append('D');
        }
        return sb.toString();
    }
}

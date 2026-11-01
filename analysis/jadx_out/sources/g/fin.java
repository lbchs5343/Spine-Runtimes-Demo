package g;

import android.os.Parcel;
import android.os.Parcelable;
import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class fin implements Parcelable {
    public static final Parcelable.Creator<fin> CREATOR = new hcm();
    private final edj end;
    private final int firstDayOfWeek;
    private final int monthSpan;
    private edj openAt;
    private final edj start;
    private final ewr validator;
    private final int yearSpan;

    private fin(edj edjVar, edj edjVar2, ewr ewrVar, edj edjVar3, int i) {
        Objects.requireNonNull(edjVar, "start cannot be null");
        Objects.requireNonNull(edjVar2, "end cannot be null");
        Objects.requireNonNull(ewrVar, "validator cannot be null");
        this.start = edjVar;
        this.end = edjVar2;
        this.openAt = edjVar3;
        this.firstDayOfWeek = i;
        this.validator = ewrVar;
        if (edjVar3 != null && edjVar.compareTo(edjVar3) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (edjVar3 != null && edjVar3.compareTo(edjVar2) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        if (i < 0 || i > fau.d(null).getMaximum(7)) {
            throw new IllegalArgumentException("firstDayOfWeek is not valid");
        }
        this.monthSpan = edjVar.monthsUntil(edjVar2) + 1;
        this.yearSpan = (edjVar2.year - edjVar.year) + 1;
    }

    public /* synthetic */ fin(edj edjVar, edj edjVar2, ewr ewrVar, edj edjVar3, int i, hcm hcmVar) {
        this(edjVar, edjVar2, ewrVar, edjVar3, i);
    }

    public edj clamp(edj edjVar) {
        return edjVar.compareTo(this.start) < 0 ? this.start : edjVar.compareTo(this.end) > 0 ? this.end : edjVar;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fin)) {
            return false;
        }
        fin finVar = (fin) obj;
        return this.start.equals(finVar.start) && this.end.equals(finVar.end) && Objects.equals(this.openAt, finVar.openAt) && this.firstDayOfWeek == finVar.firstDayOfWeek && this.validator.equals(finVar.validator);
    }

    public ewr getDateValidator() {
        return this.validator;
    }

    public edj getEnd() {
        return this.end;
    }

    public long getEndMs() {
        return this.end.timeInMillis;
    }

    public int getFirstDayOfWeek() {
        return this.firstDayOfWeek;
    }

    public int getMonthSpan() {
        return this.monthSpan;
    }

    public edj getOpenAt() {
        return this.openAt;
    }

    public Long getOpenAtMs() {
        edj edjVar = this.openAt;
        if (edjVar == null) {
            return null;
        }
        return Long.valueOf(edjVar.timeInMillis);
    }

    public edj getStart() {
        return this.start;
    }

    public long getStartMs() {
        return this.start.timeInMillis;
    }

    public int getYearSpan() {
        return this.yearSpan;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.start, this.end, this.openAt, Integer.valueOf(this.firstDayOfWeek), this.validator});
    }

    public boolean isWithinBounds(long j) {
        if (this.start.getDay(1) > j) {
            return false;
        }
        edj edjVar = this.end;
        return j <= edjVar.getDay(edjVar.daysInMonth);
    }

    public void setOpenAt(edj edjVar) {
        this.openAt = edjVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.start, 0);
        parcel.writeParcelable(this.end, 0);
        parcel.writeParcelable(this.openAt, 0);
        parcel.writeParcelable(this.validator, 0);
        parcel.writeInt(this.firstDayOfWeek);
    }
}

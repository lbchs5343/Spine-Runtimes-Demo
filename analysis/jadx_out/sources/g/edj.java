package g;

import android.icu.text.DateFormat;
import android.icu.text.DisplayContext;
import android.icu.util.TimeZone;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.format.DateUtils;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class edj implements Comparable, Parcelable {
    public static final Parcelable.Creator<edj> CREATOR = new dud(22);
    final int daysInMonth;
    final int daysInWeek;
    private final Calendar firstOfMonth;
    private String longName;
    final int month;
    final long timeInMillis;
    final int year;

    private edj(Calendar calendar) {
        calendar.set(5, 1);
        Calendar b2 = fau.b(calendar);
        this.firstOfMonth = b2;
        this.month = b2.get(2);
        this.year = b2.get(1);
        this.daysInWeek = b2.getMaximum(7);
        this.daysInMonth = b2.getActualMaximum(5);
        this.timeInMillis = b2.getTimeInMillis();
    }

    public static edj create(int i, int i2) {
        Calendar d2 = fau.d(null);
        d2.set(1, i);
        d2.set(2, i2);
        return new edj(d2);
    }

    public static edj create(long j) {
        Calendar d2 = fau.d(null);
        d2.setTimeInMillis(j);
        return new edj(d2);
    }

    public static edj current() {
        return new edj(fau.c());
    }

    @Override // java.lang.Comparable
    public int compareTo(edj edjVar) {
        return this.firstOfMonth.compareTo(edjVar.firstOfMonth);
    }

    public int daysFromStartOfWeekToFirstOfMonth(int i) {
        int i2 = this.firstOfMonth.get(7);
        if (i <= 0) {
            i = this.firstOfMonth.getFirstDayOfWeek();
        }
        int i3 = i2 - i;
        return i3 < 0 ? i3 + this.daysInWeek : i3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof edj)) {
            return false;
        }
        edj edjVar = (edj) obj;
        return this.month == edjVar.month && this.year == edjVar.year;
    }

    public long getDay(int i) {
        Calendar b2 = fau.b(this.firstOfMonth);
        b2.set(5, i);
        return b2.getTimeInMillis();
    }

    public int getDayOfMonth(long j) {
        Calendar b2 = fau.b(this.firstOfMonth);
        b2.setTimeInMillis(j);
        return b2.get(5);
    }

    public String getLongName() {
        String formatDateTime;
        DateFormat instanceForSkeleton;
        TimeZone timeZone;
        DisplayContext unused;
        if (this.longName == null) {
            long timeInMillis = this.firstOfMonth.getTimeInMillis();
            if (Build.VERSION.SDK_INT >= 24) {
                Locale locale = Locale.getDefault();
                AtomicReference atomicReference = fau.f16492a;
                instanceForSkeleton = DateFormat.getInstanceForSkeleton("yMMMM", locale);
                timeZone = TimeZone.getTimeZone("UTC");
                instanceForSkeleton.setTimeZone(timeZone);
                unused = DisplayContext.CAPITALIZATION_FOR_STANDALONE;
                instanceForSkeleton.setContext(DisplayContext.CAPITALIZATION_FOR_STANDALONE);
                formatDateTime = instanceForSkeleton.format(new Date(timeInMillis));
            } else {
                formatDateTime = DateUtils.formatDateTime(null, timeInMillis, 8228);
            }
            this.longName = formatDateTime;
        }
        return this.longName;
    }

    public long getStableId() {
        return this.firstOfMonth.getTimeInMillis();
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.month), Integer.valueOf(this.year)});
    }

    public edj monthsLater(int i) {
        Calendar b2 = fau.b(this.firstOfMonth);
        b2.add(2, i);
        return new edj(b2);
    }

    public int monthsUntil(edj edjVar) {
        if (!(this.firstOfMonth instanceof GregorianCalendar)) {
            throw new IllegalArgumentException("Only Gregorian calendars are supported.");
        }
        return (edjVar.month - this.month) + ((edjVar.year - this.year) * 12);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.year);
        parcel.writeInt(this.month);
    }
}

package j$.time.temporal;

import com.bykv.vk.component.ttvideo.player.C;

/* loaded from: classes2.dex */
public enum b implements s {
    NANOS("Nanos"),
    MICROS("Micros"),
    MILLIS("Millis"),
    SECONDS("Seconds"),
    MINUTES("Minutes"),
    HOURS("Hours"),
    HALF_DAYS("HalfDays"),
    DAYS("Days"),
    WEEKS("Weeks"),
    MONTHS("Months"),
    YEARS("Years"),
    DECADES("Decades"),
    CENTURIES("Centuries"),
    MILLENNIA("Millennia"),
    ERAS("Eras"),
    FOREVER("Forever");


    /* renamed from: a, reason: collision with root package name */
    public final String f20604a;

    static {
        j$.time.d.j(1L);
        j$.time.d.j(1000L);
        j$.time.d.j(C.MICROS_PER_SECOND);
        j$.time.d.i(1L, 0);
        j$.time.d.i(60L, 0);
        j$.time.d.i(3600L, 0);
        j$.time.d.i(43200L, 0);
        j$.time.d.i(86400L, 0);
        j$.time.d.i(604800L, 0);
        j$.time.d.i(2629746L, 0);
        j$.time.d.i(31556952L, 0);
        j$.time.d.i(315569520L, 0);
        j$.time.d.i(3155695200L, 0);
        j$.time.d.i(31556952000L, 0);
        j$.time.d.i(31556952000000000L, 0);
        j$.time.d.i(j$.com.android.tools.r8.a.K(Long.MAX_VALUE, j$.com.android.tools.r8.a.O(999999999L, C.NANOS_PER_SECOND)), (int) j$.com.android.tools.r8.a.N(999999999L, C.NANOS_PER_SECOND));
    }

    b(String str) {
        this.f20604a = str;
    }

    @Override // j$.time.temporal.s
    public final m i(m mVar, long j) {
        return mVar.d(j, this);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f20604a;
    }
}

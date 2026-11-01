package j$.time.temporal;

/* loaded from: classes2.dex */
public enum i implements s {
    WEEK_BASED_YEARS("WeekBasedYears"),
    QUARTER_YEARS("QuarterYears");


    /* renamed from: a, reason: collision with root package name */
    public final String f20609a;

    static {
        j$.time.d.i(31556952L, 0);
        j$.time.d.i(7889238L, 0);
    }

    i(String str) {
        this.f20609a = str;
    }

    @Override // j$.time.temporal.s
    public final m i(m mVar, long j) {
        int i = c.f20605a[ordinal()];
        if (i == 1) {
            return mVar.c(j$.com.android.tools.r8.a.K(mVar.i(r0), j), j.f20612c);
        }
        if (i == 2) {
            return mVar.d(j / 4, b.YEARS).d((j % 4) * 3, b.MONTHS);
        }
        throw new IllegalStateException("Unreachable");
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f20609a;
    }
}

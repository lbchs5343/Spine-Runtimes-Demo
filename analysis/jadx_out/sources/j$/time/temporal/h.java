package j$.time.temporal;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import j$.time.LocalDate;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public abstract class h implements q {
    public static final h DAY_OF_QUARTER;
    public static final h QUARTER_OF_YEAR;
    public static final h WEEK_BASED_YEAR;
    public static final h WEEK_OF_WEEK_BASED_YEAR;

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f20606a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ h[] f20607b;

    static {
        h hVar = new h() { // from class: j$.time.temporal.d
            @Override // j$.time.temporal.q
            public final boolean i(n nVar) {
                if (!nVar.e(a.DAY_OF_YEAR) || !nVar.e(a.MONTH_OF_YEAR) || !nVar.e(a.YEAR)) {
                    return false;
                }
                h hVar2 = j.f20610a;
                return j$.com.android.tools.r8.a.I(nVar).equals(j$.time.chrono.t.f20498c);
            }

            @Override // j$.time.temporal.q
            public final u j(n nVar) {
                if (!i(nVar)) {
                    throw new t("Unsupported field: DayOfQuarter");
                }
                long w = nVar.w(h.QUARTER_OF_YEAR);
                if (w != 1) {
                    return w == 2 ? u.e(1L, 91L) : (w == 3 || w == 4) ? u.e(1L, 92L) : k();
                }
                long w2 = nVar.w(a.YEAR);
                j$.time.chrono.t.f20498c.getClass();
                return j$.time.chrono.t.j(w2) ? u.e(1L, 91L) : u.e(1L, 90L);
            }

            @Override // j$.time.temporal.q
            public final u k() {
                return u.f(90L, 92L);
            }

            @Override // j$.time.temporal.q
            public final long l(n nVar) {
                if (!i(nVar)) {
                    throw new t("Unsupported field: DayOfQuarter");
                }
                int i = nVar.i(a.DAY_OF_YEAR);
                int i2 = nVar.i(a.MONTH_OF_YEAR);
                long w = nVar.w(a.YEAR);
                int i3 = (i2 - 1) / 3;
                j$.time.chrono.t.f20498c.getClass();
                return i - h.f20606a[i3 + (j$.time.chrono.t.j(w) ? 4 : 0)];
            }

            @Override // j$.time.temporal.q
            public final m o(m mVar, long j) {
                long l = l(mVar);
                k().b(j, this);
                a aVar = a.DAY_OF_YEAR;
                return mVar.c((j - l) + mVar.w(aVar), aVar);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "DayOfQuarter";
            }
        };
        DAY_OF_QUARTER = hVar;
        h hVar2 = new h() { // from class: j$.time.temporal.e
            @Override // j$.time.temporal.q
            public final boolean i(n nVar) {
                if (!nVar.e(a.MONTH_OF_YEAR)) {
                    return false;
                }
                h hVar3 = j.f20610a;
                return j$.com.android.tools.r8.a.I(nVar).equals(j$.time.chrono.t.f20498c);
            }

            @Override // j$.time.temporal.q
            public final u j(n nVar) {
                if (i(nVar)) {
                    return k();
                }
                throw new t("Unsupported field: QuarterOfYear");
            }

            @Override // j$.time.temporal.q
            public final u k() {
                return u.e(1L, 4L);
            }

            @Override // j$.time.temporal.q
            public final long l(n nVar) {
                if (i(nVar)) {
                    return (nVar.w(a.MONTH_OF_YEAR) + 2) / 3;
                }
                throw new t("Unsupported field: QuarterOfYear");
            }

            @Override // j$.time.temporal.q
            public final m o(m mVar, long j) {
                long l = l(mVar);
                k().b(j, this);
                a aVar = a.MONTH_OF_YEAR;
                return mVar.c(((j - l) * 3) + mVar.w(aVar), aVar);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "QuarterOfYear";
            }
        };
        QUARTER_OF_YEAR = hVar2;
        h hVar3 = new h() { // from class: j$.time.temporal.f
            @Override // j$.time.temporal.q
            public final boolean i(n nVar) {
                if (!nVar.e(a.EPOCH_DAY)) {
                    return false;
                }
                h hVar4 = j.f20610a;
                return j$.com.android.tools.r8.a.I(nVar).equals(j$.time.chrono.t.f20498c);
            }

            @Override // j$.time.temporal.q
            public final u j(n nVar) {
                if (i(nVar)) {
                    return u.e(1L, h.C(h.w(LocalDate.E(nVar))));
                }
                throw new t("Unsupported field: WeekOfWeekBasedYear");
            }

            @Override // j$.time.temporal.q
            public final u k() {
                return u.f(52L, 53L);
            }

            @Override // j$.time.temporal.q
            public final long l(n nVar) {
                if (i(nVar)) {
                    return h.s(LocalDate.E(nVar));
                }
                throw new t("Unsupported field: WeekOfWeekBasedYear");
            }

            @Override // j$.time.temporal.q
            public final m o(m mVar, long j) {
                k().b(j, this);
                return mVar.d(j$.com.android.tools.r8.a.P(j, l(mVar)), b.WEEKS);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekOfWeekBasedYear";
            }
        };
        WEEK_OF_WEEK_BASED_YEAR = hVar3;
        h hVar4 = new h() { // from class: j$.time.temporal.g
            @Override // j$.time.temporal.q
            public final boolean i(n nVar) {
                if (!nVar.e(a.EPOCH_DAY)) {
                    return false;
                }
                h hVar5 = j.f20610a;
                return j$.com.android.tools.r8.a.I(nVar).equals(j$.time.chrono.t.f20498c);
            }

            @Override // j$.time.temporal.q
            public final u j(n nVar) {
                if (i(nVar)) {
                    return k();
                }
                throw new t("Unsupported field: WeekBasedYear");
            }

            @Override // j$.time.temporal.q
            public final u k() {
                return a.YEAR.f20602b;
            }

            @Override // j$.time.temporal.q
            public final long l(n nVar) {
                if (i(nVar)) {
                    return h.w(LocalDate.E(nVar));
                }
                throw new t("Unsupported field: WeekBasedYear");
            }

            @Override // j$.time.temporal.q
            public final m o(m mVar, long j) {
                if (!i(mVar)) {
                    throw new t("Unsupported field: WeekBasedYear");
                }
                int a2 = a.YEAR.f20602b.a(j, h.WEEK_BASED_YEAR);
                LocalDate E = LocalDate.E(mVar);
                int i = E.i(a.DAY_OF_WEEK);
                int s = h.s(E);
                if (s == 53 && h.C(a2) == 52) {
                    s = 52;
                }
                return mVar.j(LocalDate.L(a2, 1, 4).O(((s - 1) * 7) + (i - r6.i(r0))));
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekBasedYear";
            }
        };
        WEEK_BASED_YEAR = hVar4;
        f20607b = new h[]{hVar, hVar2, hVar3, hVar4};
        f20606a = new int[]{0, 90, MediaPlayer.MEDIA_PLAYER_OPTION_ASYNC_INIT_CODEC, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_REQ_FINSIH_TIME, 0, 91, MediaPlayer.MEDIA_PLAYER_OPTION_SET_DEFAULT_CODEC_ID, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME};
    }

    public static int C(int i) {
        LocalDate L = LocalDate.L(i, 1, 1);
        if (L.G() != j$.time.c.THURSDAY) {
            return (L.G() == j$.time.c.WEDNESDAY && L.J()) ? 53 : 52;
        }
        return 53;
    }

    public static int s(LocalDate localDate) {
        int ordinal = localDate.G().ordinal();
        int H = localDate.H() - 1;
        int i = (3 - ordinal) + H;
        int i2 = i - ((i / 7) * 7);
        int i3 = i2 - 3;
        if (i3 < -3) {
            i3 = i2 + 4;
        }
        if (H < i3) {
            return (int) u.e(1L, C(w(localDate.U(180).Q(-1L)))).f20630d;
        }
        int i4 = ((H - i3) / 7) + 1;
        if (i4 != 53 || i3 == -3 || (i3 == -2 && localDate.J())) {
            return i4;
        }
        return 1;
    }

    public static h valueOf(String str) {
        return (h) Enum.valueOf(h.class, str);
    }

    public static h[] values() {
        return (h[]) f20607b.clone();
    }

    public static int w(LocalDate localDate) {
        int i = localDate.f20432a;
        int H = localDate.H();
        if (H <= 3) {
            return H - localDate.G().ordinal() < -2 ? i - 1 : i;
        }
        if (H >= 363) {
            return ((H - MediaPlayer.MEDIA_PLAYER_OPTION_DECODER_STALL_THRESHOLD) - (localDate.J() ? 1 : 0)) - localDate.G().ordinal() >= 0 ? i + 1 : i;
        }
        return i;
    }

    @Override // j$.time.temporal.q
    public final boolean isDateBased() {
        return true;
    }
}

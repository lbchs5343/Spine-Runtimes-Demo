package g;

import java.lang.reflect.Type;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes.dex */
public final class gvz implements duf, cma {

    /* renamed from: a, reason: collision with root package name */
    public static final gvz f18853a = new gvz();

    public static Object c(ccw ccwVar, Type type, String str) {
        Object obj;
        SimpleDateFormat simpleDateFormat;
        Date date;
        Object obj2;
        fzg fzgVar = ccwVar.h;
        int i = fzgVar.o;
        if (i == 2) {
            Long valueOf = Long.valueOf(fzgVar.ba());
            fzgVar.bg(16);
            obj = valueOf;
        } else if (i == 4) {
            String bj = fzgVar.bj();
            fzgVar.bg(16);
            obj = bj;
            if ((fzgVar.w & cbj.AllowISO8601DateFormat.mask) != 0) {
                fzg fzgVar2 = new fzg(bj);
                Object obj3 = bj;
                if (fzgVar2.am(true)) {
                    Calendar calendar = fzgVar2.m;
                    if (type == Calendar.class) {
                        return calendar;
                    }
                    obj3 = calendar.getTime();
                }
            }
        } else if (i == 8) {
            fzgVar.az();
            obj = null;
        } else if (i == 12) {
            fzgVar.az();
            if (fzgVar.o != 4) {
                throw new bfj("syntax error");
            }
            if ("@type".equals(fzgVar.bj())) {
                fzgVar.az();
                ccwVar.w(17);
                String bj2 = fzgVar.bj();
                ccwVar.k.getClass();
                Class m = dtu.m(bj2);
                if (m != null) {
                    type = m;
                }
                ccwVar.w(4);
                ccwVar.w(16);
            }
            fzgVar.bp();
            if (fzgVar.o != 2) {
                throw new bfj("syntax error : ".concat(gs.h(fzgVar.o)));
            }
            long ba = fzgVar.ba();
            fzgVar.az();
            Long valueOf2 = Long.valueOf(ba);
            ccwVar.w(13);
            obj = valueOf2;
        } else if (ccwVar.f12658c == 2) {
            ccwVar.f12658c = 0;
            ccwVar.w(16);
            if (fzgVar.o != 4) {
                throw new bfj("syntax error");
            }
            if (!"val".equals(fzgVar.bj())) {
                throw new bfj("syntax error");
            }
            fzgVar.az();
            ccwVar.w(17);
            Object x = ccwVar.x(null);
            ccwVar.w(13);
            obj = x;
        } else {
            obj = ccwVar.x(null);
        }
        if (obj != null) {
            boolean z = obj instanceof Date;
            obj2 = obj;
            if (!z) {
                if (obj instanceof Number) {
                    date = new Date(((Number) obj).longValue());
                } else {
                    if (!(obj instanceof String)) {
                        throw new bfj("parse error");
                    }
                    String str2 = (String) obj;
                    if (str2.length() != 0) {
                        fzg fzgVar3 = new fzg(str2);
                        try {
                            if (fzgVar3.am(false)) {
                                Calendar calendar2 = fzgVar3.m;
                                Date date2 = calendar2;
                                if (type != Calendar.class) {
                                    date2 = calendar2.getTime();
                                }
                            } else {
                                if (str != null) {
                                    simpleDateFormat = new SimpleDateFormat(str);
                                } else {
                                    if (ccwVar.f12662g == null) {
                                        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(ccwVar.f12659d, fzgVar.i);
                                        ccwVar.f12662g = simpleDateFormat2;
                                        simpleDateFormat2.setTimeZone(fzgVar.u);
                                    }
                                    simpleDateFormat = ccwVar.f12662g;
                                }
                                try {
                                    obj2 = simpleDateFormat.parse(str2);
                                } catch (ParseException unused) {
                                    date = new Date(Long.parseLong(str2));
                                }
                            }
                        } finally {
                            fzgVar3.aw();
                        }
                    }
                }
                obj2 = date;
            }
            if (type != Calendar.class && !(obj2 instanceof Calendar)) {
                Date date3 = (Date) obj2;
                if (date3 == null) {
                    return null;
                }
                Calendar calendar3 = Calendar.getInstance(fzgVar.u, fzgVar.i);
                calendar3.setTime(date3);
                return calendar3;
            }
        }
        obj2 = null;
        return type != Calendar.class ? obj2 : obj2;
    }

    @Override // g.duf
    public final void b(cnu cnuVar, Object obj, Object obj2, Type type) {
        char[] charArray;
        cxa cxaVar = cnuVar.j;
        TimeZone timeZone = cnuVar.f13200d;
        Locale locale = cnuVar.h;
        if (obj == null) {
            cxaVar.o();
            return;
        }
        if ((cxaVar.k & gar.WriteClassName.mask) != 0 && obj.getClass() != type) {
            if (obj.getClass() == Date.class) {
                cxaVar.write("new Date(");
                cxaVar.w(((Date) obj).getTime());
                cxaVar.write(41);
                return;
            }
            cxaVar.write(123);
            cxaVar.p("@type", false);
            cnuVar.n(obj.getClass().getName());
            cxaVar.write(44);
            cxaVar.p("val", false);
            cxaVar.w(((Date) obj).getTime());
            cxaVar.write(125);
            return;
        }
        Date time = obj instanceof Calendar ? ((Calendar) obj).getTime() : (Date) obj;
        if ((cxaVar.k & gar.WriteDateUseDateFormat.mask) != 0) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(ex.f16308b, locale);
            simpleDateFormat.setTimeZone(timeZone);
            cxaVar.t(simpleDateFormat.format(time));
            return;
        }
        long time2 = time.getTime();
        int i = cxaVar.k;
        if ((gar.UseISO8601DateFormat.mask & i) == 0) {
            cxaVar.w(time2);
            return;
        }
        gar garVar = gar.UseSingleQuotes;
        if ((i & garVar.mask) != 0) {
            cxaVar.write(39);
        } else {
            cxaVar.write(34);
        }
        Calendar calendar = Calendar.getInstance(timeZone, locale);
        calendar.setTimeInMillis(time2);
        int i2 = calendar.get(1);
        int i3 = calendar.get(2) + 1;
        int i4 = calendar.get(5);
        int i5 = calendar.get(11);
        int i6 = calendar.get(12);
        int i7 = calendar.get(13);
        int i8 = calendar.get(14);
        if (i8 != 0) {
            charArray = "0000-00-00T00:00:00.000".toCharArray();
            cxa.n(i8, 23, charArray);
            cxa.n(i7, 19, charArray);
            cxa.n(i6, 16, charArray);
            cxa.n(i5, 13, charArray);
            cxa.n(i4, 10, charArray);
            cxa.n(i3, 7, charArray);
            cxa.n(i2, 4, charArray);
        } else if (i7 == 0 && i6 == 0 && i5 == 0) {
            charArray = "0000-00-00".toCharArray();
            cxa.n(i4, 10, charArray);
            cxa.n(i3, 7, charArray);
            cxa.n(i2, 4, charArray);
        } else {
            charArray = "0000-00-00T00:00:00".toCharArray();
            cxa.n(i7, 19, charArray);
            cxa.n(i6, 16, charArray);
            cxa.n(i5, 13, charArray);
            cxa.n(i4, 10, charArray);
            cxa.n(i3, 7, charArray);
            cxa.n(i2, 4, charArray);
        }
        cxaVar.write(charArray);
        if ((cxaVar.k & garVar.mask) != 0) {
            cxaVar.write(39);
        } else {
            cxaVar.write(34);
        }
    }

    @Override // g.cma
    public final Object g(ccw ccwVar, Type type, Object obj) {
        return c(ccwVar, type, null);
    }
}

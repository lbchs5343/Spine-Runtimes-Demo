package com.bykv.vk.openvk.preload.dq.d.dq.dq;

import g.awf;
import j$.util.DesugarTimeZone;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

/* loaded from: classes.dex */
public final class dq {
    private static final TimeZone dq = DesugarTimeZone.getTimeZone("UTC");

    private static int dq(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt < '0' || charAt > '9') {
                return i;
            }
            i++;
        }
        return str.length();
    }

    private static int dq(String str, int i, int i2) throws NumberFormatException {
        int i3;
        int i4;
        if (i < 0 || i2 > str.length() || i > i2) {
            throw new NumberFormatException(str);
        }
        if (i < i2) {
            i4 = i + 1;
            int digit = Character.digit(str.charAt(i), 10);
            if (digit < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
            i3 = -digit;
        } else {
            i3 = 0;
            i4 = i;
        }
        while (i4 < i2) {
            int i5 = i4 + 1;
            int digit2 = Character.digit(str.charAt(i4), 10);
            if (digit2 < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
            i3 = (i3 * 10) - digit2;
            i4 = i5;
        }
        return -i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00e0 A[Catch: IllegalArgumentException -> 0x004c, NumberFormatException -> 0x004f, IndexOutOfBoundsException -> 0x0052, TryCatch #2 {IndexOutOfBoundsException -> 0x0052, NumberFormatException -> 0x004f, IllegalArgumentException -> 0x004c, blocks: (B:3:0x0006, B:5:0x0019, B:6:0x001b, B:8:0x0027, B:9:0x0029, B:11:0x0038, B:13:0x003e, B:18:0x005c, B:20:0x006c, B:21:0x006e, B:23:0x007a, B:24:0x007d, B:26:0x0083, B:30:0x008d, B:35:0x009d, B:37:0x00a5, B:42:0x00da, B:44:0x00e0, B:46:0x00e6, B:47:0x0176, B:52:0x00f0, B:53:0x0108, B:54:0x0109, B:57:0x0119, B:59:0x0126, B:62:0x012f, B:64:0x0143, B:67:0x0152, B:68:0x0171, B:70:0x0174, B:71:0x0115, B:72:0x01a7, B:73:0x01ae, B:74:0x00bd, B:75:0x00c0), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01a7 A[Catch: IllegalArgumentException -> 0x004c, NumberFormatException -> 0x004f, IndexOutOfBoundsException -> 0x0052, TryCatch #2 {IndexOutOfBoundsException -> 0x0052, NumberFormatException -> 0x004f, IllegalArgumentException -> 0x004c, blocks: (B:3:0x0006, B:5:0x0019, B:6:0x001b, B:8:0x0027, B:9:0x0029, B:11:0x0038, B:13:0x003e, B:18:0x005c, B:20:0x006c, B:21:0x006e, B:23:0x007a, B:24:0x007d, B:26:0x0083, B:30:0x008d, B:35:0x009d, B:37:0x00a5, B:42:0x00da, B:44:0x00e0, B:46:0x00e6, B:47:0x0176, B:52:0x00f0, B:53:0x0108, B:54:0x0109, B:57:0x0119, B:59:0x0126, B:62:0x012f, B:64:0x0143, B:67:0x0152, B:68:0x0171, B:70:0x0174, B:71:0x0115, B:72:0x01a7, B:73:0x01ae, B:74:0x00bd, B:75:0x00c0), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Date dq(String str, ParsePosition parsePosition) throws ParseException {
        String str2;
        String message;
        int i;
        int i2;
        int i3;
        int i4;
        int length;
        TimeZone timeZone;
        char charAt;
        try {
            int index = parsePosition.getIndex();
            int i5 = index + 4;
            int dq2 = dq(str, index, i5);
            if (dq(str, i5, '-')) {
                i5 = index + 5;
            }
            int i6 = i5 + 2;
            int dq3 = dq(str, i5, i6);
            if (dq(str, i6, '-')) {
                i6 = i5 + 3;
            }
            int i7 = i6 + 2;
            int dq4 = dq(str, i6, i7);
            boolean dq5 = dq(str, i7, 'T');
            if (!dq5 && str.length() <= i7) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar(dq2, dq3 - 1, dq4);
                parsePosition.setIndex(i7);
                return gregorianCalendar.getTime();
            }
            if (dq5) {
                int i8 = i6 + 5;
                int dq6 = dq(str, i6 + 3, i8);
                if (dq(str, i8, ':')) {
                    i8 = i6 + 6;
                }
                int i9 = i8 + 2;
                int dq7 = dq(str, i8, i9);
                if (dq(str, i9, ':')) {
                    i9 = i8 + 3;
                }
                if (str.length() > i9 && (charAt = str.charAt(i9)) != 'Z' && charAt != '+' && charAt != '-') {
                    int i10 = i9 + 2;
                    i4 = dq(str, i9, i10);
                    if (i4 > 59 && i4 < 63) {
                        i4 = 59;
                    }
                    if (dq(str, i10, '.')) {
                        int i11 = i9 + 3;
                        int dq8 = dq(str, i9 + 4);
                        int min = Math.min(dq8, i9 + 6);
                        int dq9 = dq(str, i11, min);
                        int i12 = min - i11;
                        if (i12 == 1) {
                            dq9 *= 100;
                        } else if (i12 == 2) {
                            dq9 *= 10;
                        }
                        i = dq6;
                        i7 = dq8;
                        i2 = dq7;
                        i3 = dq9;
                    } else {
                        i = dq6;
                        i7 = i10;
                        i2 = dq7;
                        i3 = 0;
                    }
                    if (str.length() > i7) {
                        throw new IllegalArgumentException("No time zone indicator");
                    }
                    char charAt2 = str.charAt(i7);
                    if (charAt2 == 'Z') {
                        timeZone = dq;
                        length = i7 + 1;
                    } else {
                        if (charAt2 != '+' && charAt2 != '-') {
                            throw new IndexOutOfBoundsException("Invalid time zone indicator '" + charAt2 + "'");
                        }
                        String substring = str.substring(i7);
                        if (substring.length() < 5) {
                            substring = substring.concat("00");
                        }
                        length = i7 + substring.length();
                        if (!"+0000".equals(substring) && !"+00:00".equals(substring)) {
                            String concat = "GMT".concat(substring);
                            TimeZone timeZone2 = DesugarTimeZone.getTimeZone(concat);
                            String id = timeZone2.getID();
                            if (!id.equals(concat) && !id.replace(":", "").equals(concat)) {
                                throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + concat + " given, resolves to " + timeZone2.getID());
                            }
                            timeZone = timeZone2;
                        }
                        timeZone = dq;
                    }
                    GregorianCalendar gregorianCalendar2 = new GregorianCalendar(timeZone);
                    gregorianCalendar2.setLenient(false);
                    gregorianCalendar2.set(1, dq2);
                    gregorianCalendar2.set(2, dq3 - 1);
                    gregorianCalendar2.set(5, dq4);
                    gregorianCalendar2.set(11, i);
                    gregorianCalendar2.set(12, i2);
                    gregorianCalendar2.set(13, i4);
                    gregorianCalendar2.set(14, i3);
                    parsePosition.setIndex(length);
                    return gregorianCalendar2.getTime();
                }
                i7 = i9;
                i = dq6;
                i2 = dq7;
            } else {
                i = 0;
                i2 = 0;
            }
            i3 = 0;
            i4 = 0;
            if (str.length() > i7) {
            }
        } catch (IndexOutOfBoundsException e2) {
            e = e2;
            if (str == null) {
                str2 = null;
            } else {
                str2 = "\"" + str + '\"';
            }
            message = e.getMessage();
            if (message != null || message.isEmpty()) {
                message = "(" + e.getClass().getName() + ")";
            }
            ParseException parseException = new ParseException(awf.t("Failed to parse date [", str2, "]: ", message), parsePosition.getIndex());
            parseException.initCause(e);
            throw parseException;
        } catch (NumberFormatException e3) {
            e = e3;
            if (str == null) {
            }
            message = e.getMessage();
            if (message != null) {
            }
            message = "(" + e.getClass().getName() + ")";
            ParseException parseException2 = new ParseException(awf.t("Failed to parse date [", str2, "]: ", message), parsePosition.getIndex());
            parseException2.initCause(e);
            throw parseException2;
        } catch (IllegalArgumentException e4) {
            e = e4;
            if (str == null) {
            }
            message = e.getMessage();
            if (message != null) {
            }
            message = "(" + e.getClass().getName() + ")";
            ParseException parseException22 = new ParseException(awf.t("Failed to parse date [", str2, "]: ", message), parsePosition.getIndex());
            parseException22.initCause(e);
            throw parseException22;
        }
    }

    private static boolean dq(String str, int i, char c2) {
        return i < str.length() && str.charAt(i) == c2;
    }
}

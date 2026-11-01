package com.bykv.vk.openvk.preload.dq;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public final class dq extends r<Date> {

    /* renamed from: d, reason: collision with root package name */
    private final List<DateFormat> f626d;
    private final Class<? extends Date> dq;

    public dq(Class<? extends Date> cls, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        this.f626d = arrayList;
        this.dq = dq(cls);
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(i, i2, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(i, i2));
        }
        if (com.bykv.vk.openvk.preload.dq.d.s.d()) {
            arrayList.add(com.bykv.vk.openvk.preload.dq.d.o.dq(i, i2));
        }
    }

    public dq(Class<? extends Date> cls, String str) {
        ArrayList arrayList = new ArrayList();
        this.f626d = arrayList;
        this.dq = dq(cls);
        Locale locale = Locale.US;
        arrayList.add(new SimpleDateFormat(str, locale));
        if (Locale.getDefault().equals(locale)) {
            return;
        }
        arrayList.add(new SimpleDateFormat(str));
    }

    private static Class<? extends Date> dq(Class<? extends Date> cls) {
        if (cls == Date.class || cls == java.sql.Date.class || cls == Timestamp.class) {
            return cls;
        }
        throw new IllegalArgumentException("Date type must be one of " + Date.class + ", " + Timestamp.class + ", or " + java.sql.Date.class + " but was " + cls);
    }

    private Date dq(String str) {
        synchronized (this.f626d) {
            Iterator<DateFormat> it = this.f626d.iterator();
            while (it.hasNext()) {
                try {
                    return it.next().parse(str);
                } catch (ParseException unused) {
                }
            }
            try {
                return com.bykv.vk.openvk.preload.dq.d.dq.dq.dq.dq(str, new ParsePosition(0));
            } catch (ParseException e2) {
                throw new cd(str, e2);
            }
        }
    }

    @Override // com.bykv.vk.openvk.preload.dq.r
    public final /* synthetic */ Date dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws IOException {
        if (dqVar.iw() == com.bykv.vk.openvk.preload.dq.p.d.NULL) {
            dqVar.no();
            return null;
        }
        Date dq = dq(dqVar.kk());
        Class<? extends Date> cls = this.dq;
        if (cls == Date.class) {
            return dq;
        }
        if (cls == Timestamp.class) {
            return new Timestamp(dq.getTime());
        }
        if (cls == java.sql.Date.class) {
            return new java.sql.Date(dq.getTime());
        }
        throw new AssertionError();
    }

    @Override // com.bykv.vk.openvk.preload.dq.r
    public final /* synthetic */ void dq(com.bykv.vk.openvk.preload.dq.p.ox oxVar, Date date) throws IOException {
        Date date2 = date;
        if (date2 == null) {
            oxVar.s();
            return;
        }
        synchronized (this.f626d) {
            oxVar.d(this.f626d.get(0).format(date2));
        }
    }

    public final String toString() {
        DateFormat dateFormat = this.f626d.get(0);
        if (dateFormat instanceof SimpleDateFormat) {
            return "DefaultDateTypeAdapter(" + ((SimpleDateFormat) dateFormat).toPattern() + ')';
        }
        return "DefaultDateTypeAdapter(" + dateFormat.getClass().getSimpleName() + ')';
    }
}
